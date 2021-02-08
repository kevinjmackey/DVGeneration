import logging
import os
import json

import azure.functions as func
from azure.cosmosdb.table.tableservice import TableService
from azure.cosmosdb.table.models import Entity

async def main(req: func.HttpRequest,
        context: func.Context) -> func.HttpResponse:
    logging.info(f'Get Max Version function processed a request')

    app_settings = os.environ["AzureWebJobsDashboard"].split(";")

    my_account_name = str(app_settings[2]).split("=")[1] #"dvcodegen"
    my_account_key = str(app_settings[3])[str(app_settings[3]).find("=") + 1:] #"jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="
    versions = []
    try:
        queryFilter = "(PartitionKey eq 'YRC-M204')"
        table_service = TableService(account_name=my_account_name,account_key=my_account_key)
        entities = table_service.query_entities("dvVersions", filter = queryFilter)
        for entity in entities:
            versions.append(int(str(entity.RowKey)))
    except Exception as e:
        ex = e
    finally:
        table_service = None
    versions.sort(reverse=True)
    max = versions[0]
    maxVersion = {}
    # name = req.params.get('name')
    if max:
        maxVersion["version"] = max
        return func.HttpResponse(json.dumps(maxVersion),  status_code=200)
    else:
        maxVersion["version"] = -1
        return func.HttpResponse(
             json.dumps(maxVersion),
             status_code=400
        )
