import os
import sys
import logging as log
import json
from datetime import datetime
import pyratemp
from operator import itemgetter, attrgetter

import azure.functions as func
from azure.cosmosdb.table.tableservice import TableService
from azure.cosmosdb.table.models import Entity
from azure.storage.blob import BlockBlobService, PageBlobService, AppendBlobService
from azure.storage.blob.models import BlobBlock, ContainerPermissions, ContentSettings

GENERATOR_VERSION = "1.0"

class MFDTable:
    baseTableName = ""
    modelName = ""
    javaName = ""
    hasReoccurs = "N"
    hasHistory = "N"
    hasTagColumn = "N"
    version = ""
    rectype = ""
    hasRectypeAsField = "N"

class MFDColumn:
    dbColumnName = ""
    javaName = ""
    dataType = ""
    length = "0"
    decimalPlaces = "0"
    occurs = "N"

    def __repr__(self):
        return repr((self.dbColumnName, self.javaName, self.dataType, self.occurs))

class MFDColumnDescriptor:
    fileSource = ""
    tableName = ""
    rectype = ""
    dbColumnName = ""
    javaColumnName = ""
    dataType = ""
    length = "0"
    decimalPlaces = "0"
    occurs = "N"

class DeprecatedMethod:
    m204File = ""
    methodName = ""
    returnType = ""
    parameters = ""
    methodBody = ""

def CaseM204File(_value):
    return _value[0].upper() + _value[1:].lower()

def ConvertToJavaForm(_value):
    s = _value if _value=="HistoryAsOfDate" or _value=="PurgeAfterDate" or _value=="RestoreFlag" else ''.join(word[0].upper() + word[1:] for word in _value.lower().split("_"))
    return s

def ColumnExists(_columnList, _column):
    exists = False
    for column in _columnList:
        if column.dbColumnName == _column.dbColumnName:  #and column.dataType == _column.dataType:
            exists = True
            break
    return exists

def TableExists(_tableList, _tableName):
    exists = False
    for table in _tableList:
        if table.baseTableName == _tableName:
            exists = True
            break
    return exists

def HasRectypeAsField(_mfdTableList, _distinctColumnList):
    mfdTableList = []
    for mfdTable in _mfdTableList:
        for mfdColumn in _distinctColumnList:
            if mfdColumn.dbColumnName == "RECTYPE":
                mfdTable.hasRectypeAsField = "Y"
                mfdTableList.append(mfdTable)
                break
    for mfdTable in _mfdTableList:
        if mfdTable.hasRectypeAsField == "N":
            mfdTableList.append(mfdTable)

    return mfdTableList

def HasTagColumn(_mfdTableList, _mfdColumnList, _file):
    mfdTableList = []
    for mfdTable in _mfdTableList:
        for mfdColumn in _mfdColumnList:
            if mfdColumn.dbColumnName == "{}_TAG".format(_file):
                mfdTable.hasTagColumn = "Y"
                mfdTableList.append(mfdTable)
                break
    for mfdTable in _mfdTableList:
        if mfdTable.hasTagColumn == "N":
            mfdTableList.append(mfdTable)
    # for mfdTable in mfdTableList:
    #    log.info("Table {} has Rectypes: {}".format(mfdTable.baseTableName, mfdTable.rectype))

    return mfdTableList

def SetVarchar(_distinctColumnList, _mfdColumnList):
    columnList = []
    for distinctColumn in _distinctColumnList:
        for column in _mfdColumnList:
            if distinctColumn.dbColumnName == column.dbColumnName and distinctColumn.dataType=="DATE" and column.dataType=="VARCHAR":
                distinctColumn.dataType = column.dataType
                columnList.append(distinctColumn)
                break
        for column in _mfdColumnList:
            if distinctColumn.dbColumnName == column.dbColumnName and distinctColumn.dataType=="TIME" and column.dataType=="VARCHAR":
                distinctColumn.dataType = column.dataType
                columnList.append(distinctColumn)
                break
    for distinctColumn in _distinctColumnList:
        for column in _mfdColumnList:
            if distinctColumn.dbColumnName == column.dbColumnName and distinctColumn.dataType=="CHAR" and column.dataType=="VARCHAR":
                distinctColumn.dataType = column.dataType
                columnList.append(distinctColumn)
                break
    for distinctColumn in _distinctColumnList:
        if ColumnExists(columnList, distinctColumn)==False:
            columnList.append(distinctColumn)

    return columnList

def ColumnHasReoccur(_distinctColumnList, _mfdColumnList):
    columnList = []
    for distinctColumn in _distinctColumnList:
        if ColumnExists(columnList, distinctColumn)==False:
            for column in _mfdColumnList:
                if distinctColumn.dbColumnName == column.dbColumnName and column.occurs=="Y":
                    distinctColumn.occurs = "Y"
                    columnList.append(distinctColumn)
                    break
    for distinctColumn in _distinctColumnList:
        if ColumnExists(columnList, distinctColumn)==False:
            columnList.append(distinctColumn)

    return columnList

def HasReoccur(_mfdTableList, _mfdColumnList):
    mfdTableList = []
    for mfdTable in _mfdTableList:
        #log.info("Table {} has Reoccurs: {}".format(mfdTable.baseTableName, mfdTable.hasReoccurs))
        for mfdColumn in _mfdColumnList:
            if mfdColumn.tableName == "{}_REOCCUR".format(mfdTable.baseTableName):
                mfdTable.hasReoccurs = "Y"
                mfdTableList.append(mfdTable)
                break
    for mfdTable in _mfdTableList:
        if TableExists(mfdTableList, mfdTable.baseTableName) == False:
            mfdTableList.append(mfdTable)
    # for mfdTable in mfdTableList:
    #    log.info("Table {} has Rectypes: {}".format(mfdTable.baseTableName, mfdTable.rectype))

    return mfdTableList

def GetSources(environment, _account_name, _account_key):
    sources = {}
    if environment is not None:
        try:
            queryFilter = "(PartitionKey eq '{}')".format(environment)
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

def GetMetadataFromDD(_environment, _file, _ddVersion, _account_name, _account_key):
    databaseTableList = []
    distinctColumnList = []
    mfdTableList = []
    mfdColumnSet = set()
    mfdColumnDescriptorList = []
    deprecatedMethodList = []
    mfdTable = MFDTable()
    currentTable = "First time through"
    fieldsToSkip = ['Create_TS', 'Distributed_KEY', 'DTS_DTTMSP','HASH', 'Modification_Count','Modify_ID','Modify_TS','OCCNO','PartitionKey','RECORD_KEY','RowID', 'SOURCEDELETED']
    try:
        queryFilter = """(PartitionKey eq '{0}') and (RowKey ge '{1}-{2}') and (RowKey lt '{1}-{2}.')""".format(_environment, _ddVersion, _file)
        table_service = TableService(account_name=_account_name, account_key=_account_key)
        entities = table_service.query_entities("dvDWEntity", filter = queryFilter)
        for entity in entities:
            if entity.IsHistoryTable == "Y" or entity.ColumnName in fieldsToSkip:
                pass
            else:
                mfdColumn = MFDColumnDescriptor()
                mfdColumn.fileSource = entity.FileSource
                mfdColumn.tableName = entity.TableName
                mfdColumn.rectype = "No Rectype" if entity.RecordType == "Blank Rectype" else entity.RecordType
                mfdColumn.dbColumnName = entity.ColumnName
                mfdColumn.dataType = entity.SqlType
                mfdColumn.length = str(entity.ColumnLength)
                mfdColumn.decimalPlaces = str(entity.DecimalPlaces)
                mfdColumn.occurs = "Y" if entity.OccurenceFlag == True else "N"
                mfdColumn.javaColumnName = ConvertToJavaForm(mfdColumn.dbColumnName)
                mfdColumnDescriptorList.append(mfdColumn)
                dbColumn = MFDColumn()
                dbColumn.dbColumnName = str(mfdColumn.dbColumnName)
                dbColumn.javaName = str(mfdColumn.javaColumnName)
                dbColumn.dataType = str(entity.JavaDataType)
                dbColumn.length = str(mfdColumn.length)
                dbColumn.decimalPlaces = str(mfdColumn.decimalPlaces)
                dbColumn.occurs = str(mfdColumn.occurs)
                if ColumnExists(mfdColumnSet, dbColumn) == False:
                    mfdColumnSet.add(dbColumn)
                if currentTable != mfdColumn.tableName:
                    if currentTable != "First time through":
                            if not mfdColumn.tableName.endswith("REOCCUR"):
                                mfdTableList.append(mfdTable)
                                mfdTable = MFDTable()
                                mfdTable.baseTableName = mfdColumn.tableName
                                mfdTable.javaName = ConvertToJavaForm(mfdColumn.tableName) ## + "Model"
                                mfdTable.modelName = mfdTable.javaName[0].lower() + mfdTable.javaName[1:]
                                mfdTable.hasHistory = entity.HasHistoryGroup
                                mfdTable.version = str(_ddVersion)
                                mfdTable.rectype = mfdColumn.rectype
                    else:
                        currentTable = mfdColumn.tableName
                        mfdTable.baseTableName = mfdColumn.tableName
                        mfdTable.javaName = ConvertToJavaForm(mfdColumn.tableName) ## + "Model"
                        mfdTable.modelName = mfdTable.javaName[0].lower() + mfdTable.javaName[1:]
                        mfdTable.hasHistory = entity.HasHistoryGroup
                        mfdTable.version = str(_ddVersion)
                        mfdTable.rectype = mfdColumn.rectype
                currentTable = mfdColumn.tableName
        mfdTableList.append(mfdTable)
    except Exception as e:
        log.error(str(e))
        raise #re-raise the exception
    finally:
        table_service = None
    try:
        databaseTableList = HasReoccur(mfdTableList, mfdColumnDescriptorList)
        databaseTableList = HasTagColumn(databaseTableList, mfdColumnDescriptorList, _file)
        databaseTableList = HasRectypeAsField(databaseTableList, mfdColumnSet)
        distinctColumnList = sorted(mfdColumnSet, key=attrgetter("occurs", "dbColumnName"))
        distinctColumnList = ColumnHasReoccur(distinctColumnList, mfdColumnDescriptorList)
    except Exception as e:
        log.error(str(e))
        raise #re-raise the exception

    log.info("Returning metadata for {}".format(_file))
    return databaseTableList, distinctColumnList, mfdColumnDescriptorList, deprecatedMethodList

def GenerateJava(_environment, _file, _ddVersion, _filePath, _container, 
        _my_account_name, _my_account_key, _block_blob_service, _template):
    log.info("Generating Java for {}".format(_file))
    databaseTableList, distinctColumnList, mfdColumnDescriptorList, deprecatedMethodList = GetMetadataFromDD(_environment, _file, _ddVersion, _my_account_name, _my_account_key)

    hasTagColumn = "N"
    for table in databaseTableList:
        if table.hasTagColumn == "Y":
            hasTagColumn = "Y"
            break
    hasRectypeAsField = "N"
    for table in databaseTableList:
        if table.hasRectypeAsField == "Y":
            hasRectypeAsField = "Y"
            break
    longFields = []
    for column in distinctColumnList:
        if column.length == "-1":
            longFields.append('"' + column.dbColumnName.replace("_",".") + '"')
    hasLongFields = "Y" if len(longFields) > 0 else "N"
    d = {}
    d["version"] = GENERATOR_VERSION
    d["date"] = "{0}T{1}".format(str(datetime.today().date()),str(datetime.today().time()))
    d["file"] = ConvertToJavaForm(_file)
    d["ddVersion"] = _ddVersion
    d["hasTagColumn"] = hasTagColumn
    d["hasRectypeAsField"] = hasRectypeAsField
    d["hasLongFields"] = hasLongFields
    d["longfields"] = longFields
    d["tableList"] = databaseTableList
    d["distinctColumnList"] = distinctColumnList
    d["columnDescriptorList"] = mfdColumnDescriptorList
    d["deprecatedMethodList"] = deprecatedMethodList

    outFile = f"{_filePath}{ConvertToJavaForm(str(_file))}_Generated.java"
    javaFile = (_template(**d))
    _block_blob_service.create_blob_from_text(_container, outFile, javaFile, encoding='utf-8')

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
    log.info(f'Java Files function processed a request: {req.get_json()}')

    app_settings = os.environ["AzureWebJobsDashboard"].split(";")

    my_account_name = str(app_settings[2]).split("=")[1] #"dvcodegen"
    my_account_key = str(app_settings[3])[str(app_settings[3]).find("=") + 1:] #"jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="

    functionName = context.function_name
    functionInstance = context.invocation_id

    req_body = req.get_json()

    environment = req_body.get("Environment")
    exclude = req_body.get("Exclude")
    ddVersion = req_body.get("Version")
    container = req_body.get("Container")
    filePath = req_body.get("FilePath")
    template = req_body.get("Template")
    LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-1".format(functionInstance), "Started",template,str(req.get_json()), my_account_name, my_account_key)
    sources = GetSources(environment, my_account_name, my_account_key)
    t = pyratemp.Template(inputBlob.read())
    # Create the BlockBlockService that is used to call the Blob service for the storage account.
    block_blob_service = BlockBlobService(account_name = my_account_name, account_key = my_account_key) 

    for source in sources.keys():
        if str(source) not in exclude:
            try:
                GenerateJava(environment, str(source),ddVersion, filePath, container,
                     my_account_name, my_account_key, block_blob_service, t)
            except Exception as ex:
                LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-2".format(functionInstance), "Completed in Error",template,str(req.get_json()), my_account_name, my_account_key)
                return func.HttpResponse(f"Request failed: {ex}", status_code=400)
    LogFunctionState(f"{environment}-{ddVersion}", functionName, "{}-2".format(functionInstance), "Completed",template,str(req.get_json()), my_account_name, my_account_key)

    return func.HttpResponse("Generation request suceeded", status_code=200)

