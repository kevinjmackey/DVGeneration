import os
import sys
import logging
import json
from datetime import datetime
import pyratemp

# import azure.functions as func
from azure.cosmosdb.table.tableservice import TableService
from azure.cosmosdb.table.models import Entity

def GetSources(environment, _account_name, _account_key):
    sources = {}
    if environment is not None:
        try:
            queryFilter = "(PartitionKey eq '{}')".format(environment)
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

def main():
    print("Starting...")
    print("Run started at {}".format(datetime.now()))
    my_account_name = "dvcodegeneration"
    my_account_key = "7fl0rjn5ajtEBMg30n3jAnzdhMKFuE0MMqqae7Pv5AJAl47XYjNxZ8Ig8gvgvdKOUAGF7oGLz+TUXMcM0fLeVg=="
    sources = GetSources("YRC-M204", my_account_name, my_account_key)
    environment = "YRC-M204" #req_body.get("Environment")
    exclude = [] #req_body.get("Exclude")
    include = [] #req_body.get("Include")
    include.append("CARS")
    ddVersion = 245 #req_body.get("Version")
    files = []
    for source in sources.keys():
        if str(source) not in exclude:
            if include:
                if str(source) in include:
                    files.append(str(source))
            else:
                files.append(str(source))
    t = pyratemp.Template(filename="TestFilterMessageSPTemplate.tmpl")
    try:
        d = {}
        d["version"] = "1.0"
        d["date"] = str(datetime.now())
        d["ddVersion"] = ddVersion

        d["file_list"] = files
        d["rectypes"] = sources
        outFile = r".\CARSFilterSP.sql"
        # print(t(**d))
        with open(outFile, "w") as fout:
            fout.write(t(**d))
    except Exception as ex:
        raise
if __name__ == "__main__":
    main()
