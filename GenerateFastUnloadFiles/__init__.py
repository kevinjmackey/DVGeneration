import os
import sys
import logging as log
import json
from datetime import datetime
import pyratemp

import azure.functions as func
from azure.cosmosdb.table.tableservice import TableService
from azure.cosmosdb.table.models import Entity
from azure.storage.blob import BlockBlobService, PageBlobService, AppendBlobService
from azure.storage.blob.models import BlobBlock, ContainerPermissions, ContentSettings

def GetSources(_environment, _ddVersion, _account_name, _account_key):
    sources = {}
    if _environment is not None:
        try:
            queryFilter = "(PartitionKey eq '{0}-{1}')".format(_environment, _ddVersion)
            log.info(f'Query filter: {queryFilter}')
            table_service = TableService(account_name=_account_name,account_key=_account_key)
            entities = table_service.query_entities("dvSource", filter = queryFilter)
            for entity in entities:
                if entity.isActive==1 and not entity.RowKey.endswith("_HIST"):
                    sources[entity.RowKey] = entity.rectype
        except Exception as e:
            log.error(e)
            sources = {}
        finally:
            table_service = None
    else:
        sources = {}

    return sources

def GetStageStructure(_environment, _source, _ddVersion, _account_name, _account_key):
    d = {}
    fieldsToSkip = ['Create_TS','Modify_ID','Modify_TS','OCCNO','RowID','PartitionKey', 'SOURCEDELETED', 'DTS_DTTMSP','HASH', 'Distributed_KEY', 'Modification_Count']
    baseColumns = []
    reoccurColumns = []
    try:
        queryFilter = """(PartitionKey eq '{0}') and (RowKey ge '{1}-{2}') and (RowKey lt '{1}-{2}.')""".format(_environment, _ddVersion, _source)
        table_service = TableService(account_name=_account_name, account_key=_account_key)
        entities = table_service.query_entities("dvStageEntity", filter = queryFilter)
        for entity in entities:
            if entity.stageColumnName.endswith("RECORD_KEY") or entity.stageColumnName in fieldsToSkip:
                pass
            else:
                if entity.stageTableName.endswith("_REOCCUR"):
                    reoccurColumns.append(entity.stageColumnName.replace("_", "."))
                else:
                    baseColumns.append(entity.stageColumnName.replace("_","."))
    except Exception as e:
        log.error(e)
    finally:
        table_service = None
    d["b_fieldlist"] = baseColumns
    d["r_fieldlist"] = reoccurColumns
    d["reoccur"] = "y" if len(reoccurColumns) > 0 else "n"

    return d

def LogFunctionState(_environment, _functionName, _instance_id, _state, _template, _request, _account_name, _account_key):
    #Logging the current function state
    try:
        table_service = TableService(account_name=_account_name, account_key=_account_key)
        functionLog = Entity()
        functionLog.PartitionKey = _environment
        functionLog.RowKey = f"{_functionName}-{_instance_id}"
        functionLog.FunctionName = _functionName
        functionLog.FunctionState = _state
        functionLog.Template = _template
        functionLog.Request = _request
        table_service.insert_or_replace_entity("dvFunctionLog", functionLog)
    except Exception as e:
        log.error(str(e))
    finally:
        table_service = None

async def main(req: func.HttpRequest, inputBlob: func.InputStream, context: func.Context) -> func.HttpResponse:
    log.info(f'Fast Unload function processed a request: {req.get_json()}')

    app_settings = os.environ["AzureWebJobsDashboard"].split(";")

    my_account_name = str(app_settings[2]).split("=")[1] #"dvcodegen"
    my_account_key = str(app_settings[3])[str(app_settings[3]).find("=") + 1:] #"jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="

    functionName = context.function_name
    functionInstance = context.invocation_id

    req_body = req.get_json()
    environment = req_body.get('Environment')
    exclude = req_body.get("Exclude")
    ddVersion = req_body.get("Version")
    container = req_body.get("Container")
    filePath = req_body.get("FilePath")
    interval = req_body.get("Interval")
    template = req_body.get("Template")
    LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-1".format(functionInstance), "Started",template,str(req.get_json()), my_account_name, my_account_key)
    sources = GetSources(environment, ddVersion, my_account_name, my_account_key)
    t = pyratemp.Template(inputBlob.read())
    # Create the BlockBlockService that is used to call the Blob service for the storage account.
    block_blob_service = BlockBlobService(account_name = my_account_name, account_key = my_account_key) 
    for source in sources.keys():
        if str(source) not in exclude:
            try:
                d = GetStageStructure(environment, str(source),ddVersion, my_account_name, my_account_key)
                d["version"] = "1.0"
                d["date"] = str(datetime.now())
                d["fileName"] = str(source)
                d["file"] = str(source)
                d["ddVersion"] = ddVersion
                d["rectypeColumn"] = sources[source]
                d["interval"] = interval
                outputFile = f"{filePath}{str(source)}."
                funload = (t(**d))
                block_blob_service.create_blob_from_text(container, outputFile, funload, encoding='utf-8')
                # log.info(f"FUnload file {outputFile} generated")
            except Exception as ex:
                LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-2".format(functionInstance), "Completed in Error",template,str(req.get_json()), my_account_name, my_account_key)
                return func.HttpResponse(f"Request failed: {ex}", status_code=400)
    LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-2".format(functionInstance), "Completed",template,str(req.get_json()), my_account_name, my_account_key)
    return func.HttpResponse("Generation request suceeded", status_code=200)
