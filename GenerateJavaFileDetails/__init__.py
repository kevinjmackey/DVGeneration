import os
import sys
import logging as log
import json
from datetime import datetime
import pyratemp

import azure.functions as func
from azure.cosmosdb.table.tableservice import TableService
from azure.cosmosdb.table.models import Entity

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

async def main(req: func.HttpRequest, inputBlob: func.InputStream,
                    outputBlob: func.Out[str], context: func.Context) -> func.HttpResponse:
    log.info(f'Java Files Details function processed a request: {req.get_json()}')

    app_settings = os.environ["AzureWebJobsDashboard"].split(";")
    my_account_name = str(app_settings[2]).split("=")[1] #"dvcodegen"
    my_account_key = str(app_settings[3])[str(app_settings[3]).find("=") + 1:] #"jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="

    functionName = context.function_name
    functionInstance = context.invocation_id

    req_body = req.get_json()
    environment = req_body.get("Environment")
    ddVersion = req_body.get("Version")
    template = req_body.get("Template")
    LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-1".format(functionInstance), "Started",template,str(req.get_json()), my_account_name, my_account_key)
    d = {}
    d["version"] = "1.0"
    d["date"] = f"{str(datetime.today().date())}T{str(datetime.today().time())}"
    d["ddVersion"] = ddVersion
    try:
        templateContent = inputBlob.read()
        log.info(f"Got template: {template}")
        t = pyratemp.Template(templateContent)
    except Exception as ex:
        log.error(f"Failed to retrieve template {template}")
        log.error(ex)
    try:
        templateOutput = t(**d)
        outputBlob.set(templateOutput)
        log.info(f"Code written")
        LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-2".format(functionInstance), "Completed",template,str(req.get_json()), my_account_name, my_account_key)
        return func.HttpResponse(f"Generation request for {template} suceeded", status_code=200)
    except Exception as ex:
        LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-2".format(functionInstance), "Completed in Error",template,str(req.get_json()), my_account_name, my_account_key)
        return func.HttpResponse(f"Request failed: {str(ex)}", status_code=400)
