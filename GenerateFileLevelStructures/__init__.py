import os
import sys
import logging
import json
from datetime import datetime
import pyratemp

import azure.functions as func
from azure.cosmosdb.table.tableservice import TableService
from azure.cosmosdb.table.models import Entity

def GetSources(_environment, _ddVersion, _account_name, _account_key):
    sources = {}
    if _environment is not None:
        try:
            queryFilter = "(PartitionKey eq '{0}-{1}')".format(_environment, _ddVersion)
            logging.info(f'Query filter: {queryFilter}')
            table_service = TableService(account_name=_account_name,account_key=_account_key)
            entities = table_service.query_entities("dvSource", filter = queryFilter)
            for entity in entities:
                if entity.isActive==1:
                    sources[entity.RowKey] = entity.rectype
        except Exception as e:
            logging.error(e)
            sources = {}
        finally:
            table_service = None
    else:
        sources = {}

    return sources

    return sources

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
        logging.error(str(e))
    finally:
        table_service = None

async def main(req: func.HttpRequest, inputBlob: func.InputStream,
                    outputBlob: func.Out[str], context: func.Context) -> func.HttpResponse:
    logging.info(f'File Level Structures function processed a request: {req.get_json()}')

    app_settings = os.environ["AzureWebJobsDashboard"].split(";")

    my_account_name = str(app_settings[2]).split("=")[1] #"dvcodegen"
    my_account_key = str(app_settings[3])[str(app_settings[3]).find("=") + 1:] #"jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="

    functionName = context.function_name
    functionInstance = context.invocation_id

    req_body = req.get_json()
    logging.info(f"Processing generation request for: {str(req_body)}")
    template = req_body.get("Template")
    environment = req_body.get("Environment")
    exclude = req_body.get("Exclude")
    include = req_body.get("Include")
    ddVersion = req_body.get("Version")
    LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-1".format(functionInstance), "Started",template,str(req.get_json()), my_account_name, my_account_key)
    sources = GetSources(environment, ddVersion, my_account_name, my_account_key)
    files = []
    for source in sources.keys():
        if str(source) not in exclude:
            if include:
                if str(source) in include:
                    files.append(str(source))
            else:
                files.append(str(source))
    try:
        d = {}
        d["version"] = "1.0"
        d["date"] = str(datetime.now())
        d["ddVersion"] = ddVersion

        d["file_list"] = files
        d["rectypes"] = sources
        templateContent = inputBlob.read()
        logging.info(f"Got template: {template}")
        t = pyratemp.Template(templateContent)
        templateOutput = t(**d)
        outputBlob.set(templateOutput)
        logging.info(f"Code written")
        LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-2".format(functionInstance), "Completed",template,str(req.get_json()), my_account_name, my_account_key)
        return func.HttpResponse(f"Generation request for {template} suceeded", status_code=200)
    except Exception as ex:
        LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-2".format(functionInstance), "Completed in Error",template,str(req.get_json()), my_account_name, my_account_key)
        return func.HttpResponse(f"Request failed: {str(ex)}", status_code=400)
