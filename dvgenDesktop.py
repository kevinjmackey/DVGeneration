import logging as log
import os
import time
import json
import requests
from datetime import datetime
import argparse
import pyratemp

import azure.functions as func
from azure.cosmosdb.table.tableservice import TableService
from azure.cosmosdb.table.models import Entity

def GetStageStructure(_environment, _source, _ddVersion, _account_name, _account_key):
    d = {}
    fieldsToSkip = ['Create_TS','Modify_ID','Modify_TS','OCCNO','RowID','PartitionKey', 'SOURCEDELETED', 'DTS_DTTMSP','HASH', 'Distributed_KEY', 'Modification_Count']
    baseColumns = []
    reoccurColumns = []
    baseDataTypes = {}
    reoccurDataTypes = {}
    b64Columns = []
    isHistory = "N"
    try:
        queryFilter = """(PartitionKey eq '{0}') and (RowKey ge '{1}-{2}') and (RowKey lt '{1}-{2}.')""".format(_environment, _ddVersion, _source)
        # log.info(f'Query filter: {queryFilter}')
        table_service = TableService(account_name=_account_name, account_key=_account_key)
        entities = table_service.query_entities("dvStageEntity", filter = queryFilter)
        for entity in entities:
            if entity.stageColumnName.endswith("RECORD_KEY") or entity.stageColumnName in fieldsToSkip:
                pass
            else:
                if entity.stageTableName.endswith("_REOCCUR"):
                    reoccurColumns.append(entity.stageColumnName)
                    reoccurDataTypes[entity.stageColumnName] = entity.stageEasyDataType
                else:
                    baseColumns.append(entity.stageColumnName)
                    baseDataTypes[entity.stageColumnName] = entity.stageEasyDataType
                isHistory = "Y" if entity.isHistory == "Y" else "N"
                if entity.isBase64 == 1:
                    b64Columns.append(entity.stageColumnName)
    except Exception as e:
        log.error(e)
    finally:
        table_service = None
    d["b_columnList"] = baseColumns
    d["r_columnList"] = reoccurColumns
    d["baseDataTypes"] = baseDataTypes
    d["reoccurDataTypes"] = reoccurDataTypes
    d["b64Columns"] = b64Columns
    d["isHistory"] = isHistory
    d["hasReoccur"] = "Y" if len(reoccurColumns) > 0 else "N"
    d["hasB64Columns"] = "Y" if len(b64Columns) > 0 else "N"

    return d

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
            log.error(e)
            sources = {}
        finally:
            table_service = None
    else:
        sources = {}

    return sources

def GetHighestVersion():
    uri = "https://dvgenapp.azurewebsites.net/api/getmaxversion"
    r = requests.get(uri)
    log.info("{0}".format(str(r.text)))
    resp = json.loads(str(r.text))
    return int(resp["version"])

def FinalizeGenRequests(_genRequests, _version, _all):
    versionToUse = GetHighestVersion() if _version == -1 else _version
    log.info("Version to use: {}".format(versionToUse))
    for genRequest in _genRequests:
        genRequest["Version"] = str(versionToUse)
        genRequest["All"] = "True" if _all == True else "False"
    return _genRequests

def LoadGenRequests(_requestsFile):
    with _requestsFile:
        return json.load(_requestsFile)

def initLogging():
    log.basicConfig(level=log.INFO,
                    format="[%(levelname)s] %(funcName)s:: %(message)s",
                    filename=os.path.join(os.getcwd(), "dvgenDesktop.log")
                    )

def main():
    #Script starts here
    version = "1.0"
    initLogging()
    log.info("Run started at {}".format(datetime.now()))
    argsparser = argparse.ArgumentParser(prog="dvgenDesktop")
    argsparser.add_argument("-t", "--tasks", dest="tasks", default="Tasks.json", type=argparse.FileType(), help="This is the file listing the code generation tasks to be performed.")
    argsparser.add_argument("-a", "--all", action="store_true", default="False", help="Use -All to generate code for all source objects.")
    argsparser.add_argument("-e", "--exclude", dest="exclude", help="If used with -a this option can be used to exclude a set of file groups from generation.")
    argsparser.add_argument("-v", "--version", dest="version", default = -1, help="Which Data Dictionary version should be used?")
    args = argsparser.parse_args()

    genRequests = LoadGenRequests(args.tasks)
    genRequests = FinalizeGenRequests(genRequests, int(args.version), bool(args.all))
    my_account_name = "dvcodegen"
    my_account_key = "jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="
    for task in genRequests:
        environment = task["Environment"]
        ddVersion = task["Version"]
        sources = GetSources(environment, my_account_name, my_account_key)
        log.info("Sources returned: {}".format(len(sources)))
        exclude = task["Exclude"]
        options = task["Options"]
        outputFile = task["Output"]
        outputFiles = []
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
                    d["isPartitioned"] = "Y"
                    d["xP"] = "Y" if "xP" in options else "N"
                    d["xA"] = "Y" if "xA" in options else "N"
                    d["xF"] = "Y" if "xF" in options else "N"
                    # print("xA = {0}, xF = {1}".format(d["xA"], d["xF"]))
                    # templateContent = inputBlob.read()
                    templateFile = r"G:\DV Projects\YRC\PythonTemplateBasedGenerators\TemplateBasedGenerators\GenerateLegacyDDL\{}".format("{0}.tmpl".format(task["Template"]))
                    t = pyratemp.Template(filename=templateFile)
                    outputFiles.append(t(**d))
                except Exception as ex:
                    log.error(f"Request failed: {ex}")

        with open(outputFile, "a") as fout:
            fout.write("\n".join(outputFiles))
    log.info("Run ended at {}".format(datetime.now()))

if __name__ == "__main__":
    main()
