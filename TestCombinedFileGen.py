import os
import sys
import logging as log
import json
from datetime import datetime
import pyratemp
from operator import itemgetter, attrgetter

from azure.cosmosdb.table.tableservice import TableService
from azure.cosmosdb.table.models import Entity
from azure.storage.blob import BlockBlobService, PageBlobService, AppendBlobService
from azure.storage.blob.models import BlobBlock, ContainerPermissions, ContentSettings

GENERATOR_VERSION = "1.0"

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

def initLogging():
    log.basicConfig(level=log.INFO,
                    format="[%(levelname)s] %(funcName)s:: %(message)s",
                    filename=os.path.join(os.getcwd(), "TestCombinedFileGen.log")
                    )

def main():
    print("Starting...")
    print("Run started at {}".format(datetime.now()))

    my_account_name = "dvcodegen"
    my_account_key = "jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="

    sources = ["IISX"]
    environment = "YRC-M204"
    ddVersion = "242"
    fileSuffix = "ProcessedTable.sql"
    t = pyratemp.Template(filename="LegacySingleTableProcessed.tmpl")
    for source in sources:
        try:
            d = GetStageCombinedTableStructures(environment, source, ddVersion, my_account_name, my_account_key)
            d["version"] = "1.0"
            d["date"] = str(datetime.now())
            d["file"] = source
            d["ddVersion"] = ddVersion
            outputFile = ".\{0}_{1}".format(source, fileSuffix)
            with open(outputFile, "w") as fout:
                fout.write(t(**d))
        except Exception as ex:
            print("Exception: {}".format(ex))
            raise
if __name__ == "__main__":
    main()
 