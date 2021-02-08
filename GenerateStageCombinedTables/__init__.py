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

class ColumnDescriptor:
    fileSource = ""
    tableName = ""
    rectype = ""
    dbColumnName = ""
    dataType = ""
    occurs = "N"
    isBase64 = "N"

def HasB64Columns(_columnList):
    hasB64Columns = False
    for column in _columnList:
        if column.isBase64 == "Y":
            hasB64Columns = True
            break
    return hasB64Columns

def GetStageCombinedTableStructures(_environment, _source, _ddVersion, _account_name, _account_key):
    d = {}
    fieldsToSkip = ['Create_TS', 'DTS_DTTMSP', 'Distributed_KEY','HASH', 'Modification_Count','Modify_ID','Modify_TS','OCCNO','PartitionKey','RECORD_KEY', 'RowID', 'SOURCEDELETED']
    tableNames = []
    dbColumns = []
    rectypes = {}
    try:
        queryFilter = """(PartitionKey eq '{0}') and (RowKey ge '{1}-{2}') and (RowKey lt '{1}-{2}.')""".format(_environment, _ddVersion, _source)
        table_service = TableService(account_name=_account_name, account_key=_account_key)
        entities = table_service.query_entities("dvStageOneTableEntity", filter = queryFilter)
        for entity in entities:
            if entity.stageColumnName in fieldsToSkip:
                pass
            else:
                column = ColumnDescriptor()
                column.fileSource = _source
                column.tableName = entity.stageTableName
                if column.tableName not in tableNames:
                    tableNames.append(column.tableName)
                column.dbColumnName = entity.stageColumnName
                column.dataType = entity.stageEasyDataType
                column.rectype = entity.recordtype
                column.isBase64 = "Y" if entity.isBase64 == True else "N"
                dbColumns.append(column)
                if column.tableName not in rectypes:
                    rectypes[column.tableName] = column.rectype
    except Exception as e:
        log.error("Error reading columns information from the metadata.")
        log.error(e)
    finally:
        table_service = None
    d = {}
    d["tables"] = tableNames
    d["columns"] = dbColumns
    d["rectypes"] = rectypes
    d["hasB64Columns"] = "Y" if HasB64Columns(dbColumns) == True else "N"

    return d

async def main(req: func.HttpRequest, inputBlob: func.InputStream) -> func.HttpResponse:
    log.info(f'Stage Combined Tables function processed a request: {req.get_json()}')

    app_settings = os.environ["AzureWebJobsDashboard"].split(";")

    my_account_name = str(app_settings[2]).split("=")[1] #"dvcodegen"
    my_account_key = str(app_settings[3])[str(app_settings[3]).find("=") + 1:] #"jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="
    req_body = req.get_json()
    environment = req_body.get('Environment')
    ddVersion = req_body.get("Version")
    template = req_body.get("Template")
    sources = req_body.get("Sources")
    fileSuffix = req_body.get("Suffix")
    container = req_body.get("Container")
    filePath = req_body.get("FilePath")

    t = pyratemp.Template(inputBlob.read())
    # Create the BlockBlockService that is used to call the Blob service for the storage account.
    block_blob_service = BlockBlobService(account_name = my_account_name, account_key = my_account_key) 

    for source in sources:
        try:
            d = GetStageCombinedTableStructures(environment, source, ddVersion, my_account_name, my_account_key)
            d["version"] = "1.0"
            d["date"] = str(datetime.now())
            d["file"] = source
            d["ddVersion"] = ddVersion
            outputFile = f"{filePath}{source}_{fileSuffix}"
            log.info(f'Creating file: {outputFile}')
            templateOutput = (t(**d))
            block_blob_service.create_blob_from_text(container, outputFile, templateOutput, encoding='utf-8')
        except Exception as ex:
            return func.HttpResponse(f"Request failed: {ex}", status_code=400)

    return func.HttpResponse("Generation request suceeded", status_code=200)
    