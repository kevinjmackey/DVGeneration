import os
import sys
import logging as log
import json
from datetime import datetime
import pyratemp

# import azure.functions as func
from azure.cosmosdb.table.tableservice import TableService
from azure.cosmosdb.table.models import Entity

class MFDLegacyMap:
    M204File = ""
    Rectype = ""
    MFDTable = ""
    MFDColumn = ""
    ColumnDataType = ""
    TransformationRule = ""
    LegacyTable = ""
    HasReoccur = "N"
    HasLegacyReoccur = "N"
    LegacyColumnName = ""
    SequenceNumber = 0
    IsMemoryOptimized = "N"
    SchemaName = "THB"
    HasHistoryGroup = "N"
    IsHistoryTable = "N"
    HistoryTableName = "none"

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

def GetTableMetadata(_file, _ddVersion, _environment, _account_name, _account_key):
    print("Getting metadata for {}".format(_file))
    DDRowList = []
    fieldsToSkip = ['Create_TS','Modify_ID','Modify_TS','OCCNO','RowID','PartitionKey', 'SOURCEDELETED', 'DTS_DTTMSP','HASH', 'Distributed_KEY', 'Modification_Count']
    try:
        queryFilter = """(PartitionKey eq '{0}') and (RowKey ge '{1}-{2}') and (RowKey lt '{1}-{2}.')""".format(_environment, _ddVersion, _file)
        table_service = TableService(account_name=_account_name, account_key=_account_key)
        entities = table_service.query_entities("dvDWEntity", filter = queryFilter)
        for entity in entities:
            DDRow = MFDLegacyMap()
            DDRow.M204File = entity.FileSource
            DDRow.Rectype = "Blank Rectype" if entity.RecordType == "No Rectype" else entity.RecordType.replace(".","_")
            DDRow.MFDTable = entity.TableName
            DDRow.MFDColumn = entity.ColumnName
            DDRow.ColumnDataType = entity.DWEasyDataType
            DDRow.TransformationRule = entity.TranslationRule
            DDRow.LegacyTable = entity.StageTableName
            DDRow.HasReoccur = entity.RectypeReoccurYN
            DDRow.HasLegacyReoccur = entity.StageReoccurYN
            DDRow.LegacyColumnName = entity.StageColumnName
            DDRow.SequenceNumber = entity.SequenceNumber
            DDRow.IsMemoryOptimized = entity.IsMemoryOptimized
            DDRow.SchemaName = entity.DWSchemaName
            DDRow.HasHistoryGroup = entity.HasHistoryGroup
            DDRow.IsHistoryTable = entity.IsHistoryTable
            try:
                DDRow.HistoryTableName = entity.HistoryTableName
            except AttributeError as error:
                DDRow.HistoryTableName = "none"
            DDRowList.append(DDRow)

    except Exception as e:
        log.error(str(e))
        raise #re-raise the exception
    finally:
        table_service = None

    return DDRowList

def GenerateDDL(_d, _t):
    output = ""
    try:
        if (_d["mfdColumns"]):
            output = _t(**_d)
    except Exception as e:
        log.error(e)
    return output

def ProcessFileMetadata(_tableMetadata, _ddVersion, _file, _template, _version, _db_from):
    print("Processing metadata for {}".format(_file))
    d = {}
    output = []
    currentRectype = ""
    d["version"] = _version
    d["fileName"] = _file
    d["date"] = str(datetime.now())
    d["mfdTables"] = mfdTables = []
    d["mfdColumns"] = mfdColumns = []
    d["mfdDataTypes"] = mfdDataTypes = []
    d["transformationRules"] = transformationRules = []
    d["legacyTables"] = legacyTables = []
    d["hasReoccur"] = "N"
    d["hasLegacyReoccur"] = "N"
    d["legacyColumns"] = legacyColumns = []
    d["SeqNumber"] = SeqNumber = []
    d["IsMemoryOptimized"] = "N"
    d["ddVersion"] = _ddVersion
    d["db_from"] = _db_from
    d["schemaName"] = "mfd"
    d["mfdBaseTable"] = "BaseTableName"
    d["mfdReoccurTable"] = "ReoccurTableName"
    d["HasHistoryGroup"] = "N"
    d["IsHistoryTable"] = "N"
    d["HistoryBaseTableName"] = ""
    d["HistoryReoccurTableName"] = ""
    DDRow = MFDLegacyMap()
    for DDRow in _tableMetadata:
        if (currentRectype != "" and currentRectype != DDRow.Rectype):
            output.append(GenerateDDL(d, _template))
            d["mfdTables"].clear()
            d["mfdColumns"].clear()
            d["mfdDataTypes"].clear()
            d["transformationRules"].clear()
            d["legacyTables"].clear()
            d["hasReoccur"] = "N"
            d["hasLegacyReoccur"] = "N"
            d["legacyColumns"].clear()
            d["SeqNumber"].clear()
            d["IsMemoryOptimized"] = "N"
        d["mfdTables"].append(DDRow.MFDTable)
        d["mfdColumns"].append(DDRow.MFDColumn)
        d["mfdDataTypes"].append(DDRow.ColumnDataType)
        d["transformationRules"].append(DDRow.TransformationRule)
        d["legacyTables"].append(DDRow.LegacyTable)
        d["hasReoccur"] = DDRow.HasReoccur
        d["hasLegacyReoccur"] = DDRow.HasLegacyReoccur
        d["legacyColumns"].append(DDRow.LegacyColumnName)
        currentRectype = DDRow.Rectype
        d["rectype"] = currentRectype
        d["SeqNumber"].append(DDRow.SequenceNumber)
        IsMemOptimized = DDRow.IsMemoryOptimized
        d["IsMemoryOptimized"] = IsMemOptimized
        d["schemaName"] = DDRow.SchemaName
        if "REOCCUR" not in DDRow.MFDTable.upper():
            d["mfdBaseTable"] = DDRow.MFDTable
        if "REOCCUR" in DDRow.MFDTable.upper():
            d["mfdReoccurTable"] = DDRow.MFDTable
        d["HasHistoryGroup"] = DDRow.HasHistoryGroup
        d["IsHistoryTable"] = DDRow.IsHistoryTable
        if "REOCCUR" not in DDRow.HistoryTableName.upper():
            d["HistoryBaseTableName"] = DDRow.HistoryTableName
        if "REOCCUR" in DDRow.HistoryTableName.upper():
            d["HistoryReoccurTableName"] = DDRow.HistoryTableName

    output.append(GenerateDDL(d, _template))

    return output

def main():
    print("Starting...")
    print("Run started at {}".format(datetime.now()))
    my_account_name = "dvcodegen"
    my_account_key = "jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="
    environment = "YRC-M204"
    sources = GetSources(environment, my_account_name, my_account_key)
    version = "1.2"
    ddVersion = 243
    exclude = []
    outputFiles = []
    db_from = "MFD"
    t = pyratemp.Template(filename="MFD_SP_3_ProcessMessageTypeTemplate.tmpl")
    for source in sources.keys():
        if str(source) not in exclude:
            tableMetadata = GetTableMetadata(str(source), ddVersion, environment, my_account_name, my_account_key)
            outputList = ProcessFileMetadata(tableMetadata, ddVersion, str(source), t, version, db_from)
            for output in outputList:
                outputFiles.append(output)
    outFile = r".\MFD_SP_3_ProcessMessageTypeTemplate.sql"
    with open(outFile, "w") as fout:
        fout.write("\n".join(outputFiles))

    print("Run ended at {}".format(datetime.now()))

if __name__ == "__main__":
    main()
