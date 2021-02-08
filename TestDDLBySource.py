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

def GetStageStructure(_environment, _source, _ddVersion, _account_name, _account_key):
    d = {}
    fieldsToSkip = ['Create_TS','Modify_ID','Modify_TS','OCCNO','RowID','PartitionKey', 'SOURCEDELETED', 'DTS_DTTMSP','HASH', 'Distributed_KEY', 'Modification_Count']
    baseColumns = []
    reoccurColumns = []
    baseDataTypes = {}
    reoccurDataTypes = {}
    b64Columns = []
    isHistory = "N"
    mfdSchema = "THB"
    rectypeNames = []
    rectypeValues = []
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
                mfdSchema = entity.MfdSchemaName
                if entity.isBase64 == 1:
                    b64Columns.append(entity.stageColumnName)
    except Exception as e:
        logging.error(e)
    finally:
        table_service = None

    table_service = TableService(account_name=_account_name, account_key=_account_key)
    entities = table_service.query_entities("dvDWSource", filter = queryFilter)
    try:
        for entity in entities:
            if entity.RectypeValue.upper() not in rectypeValues:
                rectypeValues.append(entity.RectypeValue.upper())
            # 0=RecordType, 1=RectypeValue, 2=SchemaName, 3=RectypeReoccur, 4=TableName, 5=isHistoryTable
            if ([entity.RecordType, entity.DW_Rectype_Reoccur] not in rectypeNames):
                rectypeNames.append([entity.RecordType, entity.DW_Rectype_Reoccur, entity.TableName, entity.IsHistoryTable])
    except Exception as e:
        logging.error(e)
    finally:
        table_service = None

    d["b_columnList"] = baseColumns
    d["r_columnList"] = reoccurColumns
    d["baseDataTypes"] = baseDataTypes
    d["reoccurDataTypes"] = reoccurDataTypes
    d["b64Columns"] = b64Columns
    d["isHistory"] = isHistory
    d["schemaName"] = mfdSchema
    d["hasReoccur"] = "Y" if len(reoccurColumns) > 0 else "N"
    d["hasB64Columns"] = "Y" if len(b64Columns) > 0 else "N"
    d["rectypenames"] = rectypeNames
    d["rectypevalues"] = rectypeValues

    return d

def main():
    print("Starting...")
    print("Run started at {}".format(datetime.now()))
    my_account_name = "dvcodegeneration"
    my_account_key = "7fl0rjn5ajtEBMg30n3jAnzdhMKFuE0MMqqae7Pv5AJAl47XYjNxZ8Ig8gvgvdKOUAGF7oGLz+TUXMcM0fLeVg=="
    environment = "YRC-M204"
    sources = GetSources(environment, my_account_name, my_account_key)
    # sources.clear()
    # sources["BAC"] = "RECTYPE"
    # sources["TWG"] = "RECTYPE"
    # sources["WGP"] = "No Rectype"
    ddVersion = 243
    exclude = []
    options = []
    outputFiles = []
    t = pyratemp.Template(filename="MFD_SP_2_FileRecTypeRecords.tmpl")
    try:
        for source in sources.keys():
            if str(source) not in exclude:
                d = GetStageStructure(environment, str(source),ddVersion, my_account_name, my_account_key)
                d["version"] = "1.0"
                d["date"] = str(datetime.now())
                d["fileName"] = str(source)
                d["ddVersion"] = ddVersion
                d["rectypeColumn"] = sources[source]
                d["isPartitioned"] = "Y"
                d["xP"] = "Y" if "xP" in options else "N"
                outputFiles.append(t(**d))
            outFile = r".\MFD_SP_2_FileRecTypeRecords.sql"
            with open(outFile, "w") as fout:
                fout.write("\n".join(outputFiles))
    except Exception as ex:
        raise
    print("Run ended at {}".format(datetime.now()))

if __name__ == "__main__":
    main()
