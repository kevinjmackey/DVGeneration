import datetime
import logging as log
import os
import sys
import pprint
import pypyodbc
import random, config, string
from azure.cosmosdb.table.tableservice import TableService
from azure.cosmosdb.table.models import Entity

my_account_name = "dvcodegen"
my_account_key = "jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="
ddVersion = 240

def _RunQuery(query):
    """Arbitrary code execution, hooray"""
    _connection = pypyodbc.connect(r"Driver={SQL Server};Server=YWSQLRTMA01v\RTMA;Database=CodeGeneration;Trusted_Connection=yes;")
    #_connection = pypyodbc.connect(r"Driver={SQL Server};Server=ERG-ASUS;Database=WideWorldImporters;Trusted_Connection=yes;")
    _cursor = _connection.cursor()
    _query_results = None
    try:
        _cursor.execute(query)
        if (not _cursor):
            return []
        if (_cursor.description):
            _query_results = [dict(zip([_column[0] for _column in _cursor.description], _row)) for _row in _cursor.fetchall()]
    except Exception as ex:
        print ("Failed SQL statement \n" + query)
        pprint.pprint(ex)
        raise #re-raise the exception
    finally:
        _connection.close()
    return _query_results

def RetrieveDWEntities(_version, _entity):
    print("Getting Entities for {}".format(_entity))
    try:
        queryFilter = """(PartitionKey eq 'YRC-M204') and (RowKey ge '{0}-{1}') and (RowKey lt '{0}-{1}.')""".format(_version, _entity)
        print(queryFilter)
        i = 0
        table_service = TableService(account_name=my_account_name, account_key=my_account_key)
        entities = table_service.query_entities("dvDWEntity", filter = queryFilter)
        for entity in entities:
            i += 1
            print(entity.RowKey)
    except Exception as e:
        print(e)
    finally:
        table_service = None
    print("{} records returned".format(i))

def RetrieveStageEntities(_version, _entity):
    print("Getting Entities for {}".format(_entity))
    try:
        queryFilter = """(PartitionKey eq 'YRC-M204') and (RowKey ge '{0}-{1}') and (RowKey lt '{0}-{1}.')""".format(_version, _entity)
        print(queryFilter)
        i = 0
        table_service = TableService(account_name=my_account_name, account_key=my_account_key)
        entities = table_service.query_entities("dvStageEntity", filter = queryFilter)
        for entity in entities:
            i += 1
            print(entity.RowKey)
    except Exception as e:
        print(e)
    finally:
        table_service = None
    print("{} records returned".format(i))

def RetrieveDWSources(_version, _entity):
    print("Getting Entities for {}".format(_entity))
    try:
        queryFilter = """(PartitionKey eq 'YRC-M204') and (RowKey ge '{0}-{1}') and (RowKey lt '{0}-{1}.')""".format(_version, _entity)
        print(queryFilter)
        i = 0
        table_service = TableService(account_name=my_account_name, account_key=my_account_key)
        entities = table_service.query_entities("dvDWSource", filter = queryFilter)
        for entity in entities:
            i += 1
            print(entity.RowKey)
    except Exception as e:
        print(e)
    finally:
        table_service = None
    print("{} records returned".format(i))

def ShowVersions():
    print("Getting list of Data Dictionary versions...")
    versions = []
    try:
        queryFilter = "(PartitionKey eq 'YRC-M204')"
        table_service = TableService(account_name=my_account_name,account_key=my_account_key)
        entities = table_service.query_entities("dvStageEntity", filter = queryFilter)
        for entity in entities:
            version = str(entity.RowKey)[0:3]
            if version not in versions:
                versions.append(version)
    except Exception as e:
        print(e)
    finally:
        table_service = None
    for version in versions:
        print(version)

def WriteVersionTable():
    print("Getting list of Data Dictionary versions...")
    versions = []
    try:
        queryFilter = "(PartitionKey eq 'YRC-M204')"
        table_service = TableService(account_name=my_account_name,account_key=my_account_key)
        entities = table_service.query_entities("dvStageEntity", filter = queryFilter)
        for entity in entities:
            version = str(entity.RowKey)[0:3]
            if version not in versions:
                versions.append(version)
    except Exception as e:
        print(e)
    finally:
        table_service = None
        table_service = TableService(account_name=my_account_name,account_key=my_account_key)
        # table_service.create_table("dvVersions")
    try:
        for version in versions:
            ver = Entity()
            ver.PartitionKey = "YRC-M204"
            ver.RowKey = version
            table_service.insert_or_replace_entity("dvVersions", ver)
            print(version)
    except Exception as e:
        print(e)
    finally:
        table_service = None

def ShowHighestVersion():
    print("Getting highest Data Dictionary version...")
    versions = []
    try:
        queryFilter = "(PartitionKey eq 'YRC-M204')"
        table_service = TableService(account_name=my_account_name,account_key=my_account_key)
        entities = table_service.query_entities("dvVersions", filter = queryFilter)
        for entity in entities:
            version = int(str(entity.RowKey)[0:3])
            if version not in versions:
                versions.append(version)
    except Exception as e:
        print(e)
    finally:
        table_service = None
    versions.sort(reverse=True)
    print(versions[0])

def WriteGenerationTasktTable():
    print("Preparing to write the Generation Task table")
    table_service = None
    try:
        table_service = TableService(account_name=my_account_name, account_key=my_account_key)
        table_service.create_table("dvGenerationTask")
        task = Entity()
        task.PartitionKey = "YRC-M204"
        task.RowKey = "Generate Stage table structures"
        task.Sequence = "001"
        task.Template = "LegacyOnDiskTemplate.tmpl"
        task.function = "GenerateStageStructures"
        table_service.insert_entity("dvGenerationTask", task)
        task = Entity()
        task.PartitionKey = "YRC-M204"
        task.RowKey = "Generate Stage XML Shredders"
        task.Sequence = "002"
        task.Template = "XMLShredderTemplate.tmpl"
        task.function = "GenerateStageXMLShredders"
        table_service.insert_entity("dvGenerationTask", task)
        task = Entity()
        task.PartitionKey = "YRC-M204"
        task.RowKey = "Generate Stage Function Definitions"
        task.Sequence = "003"
        task.Template = "CLRFunctionDefinitionTemplate.tmpl"
        task.function = "GenerateStageTSQLComponents"
        table_service.insert_entity("dvGenerationTask", task)
        task = Entity()
        task.PartitionKey = "YRC-M204"
        task.RowKey = "Generate Stage Table-Valued Functions"
        task.Sequence = "004"
        task.Template = "CLRFunctionDefinitionTemplate.tmpl"
        task.function = "GenerateStageTSQLComponents"
        table_service.insert_entity("dvGenerationTask", task)
        task = Entity()
        task.PartitionKey = "YRC-M204"
        task.RowKey = "Generate Stage Activation Procedures"
        task.Sequence = "005"
        task.Template = "GenerateProcessMessageSPTemplate.tmpl"
        task.function = "GenerateStageTSQLComponents"
        table_service.insert_or_replace_entity("dvGenerationTask", task)
        print("Generation Task table written")
    except Exception as e:
        print(e)
    finally:
        table_service = None

def WriteStageSingleTableEntity():
    print("Preparing to write the Stage Single-table Entity table")
    sql = """SELECT 'YRC-M204'                                              AS [PartitionKey]
      ,CONCAT(
                 CAST([DD].[VersionNumber] AS VARCHAR(3))
                ,'-'
                ,[DD].[FileSource]
                ,'-'
                ,CONCAT(
                           REPLACE([DD].[LegacyTableName], '_REOCCUR', '')
                          ,'_'
                          ,ISNULL(NULLIF([DD].[RecordTypeTranslated], ''), 'NULL')
                          ,'-'
                          ,[DD].[LegacyColumnName]
                       )
		     )                                                 AS [RowKey]
	      ,[DD].[FileSource]
          ,'Legacy' AS [SchemaName]
	      ,ISNULL(NULLIF([DD].[RecordTypeTranslated], ''), 'NULL') AS [RecordType]
	      ,CONCAT(
			 REPLACE([DD].[LegacyTableName], '_REOCCUR', '')
			,'_'
			,ISNULL(NULLIF([DD].[RecordTypeTranslated], ''), 'NULL')
		     )                                                 AS [LegacyTableName]
	      ,[DD].[LegacyColumnName]
	      ,UPPER([DD].[LegacyEasyDataType]) AS [LegacyEasyDataType]
	      ,[DD].[SequenceNumber]
	      ,[DD].[IsBase64]
	FROM [Meta].[DataDictionary] AS [DD]
	WHERE [DD].[VersionNumber] = {0}
	      AND [DD].[LegacyColumnName] NOT IN ( 'Distributed_KEY', 'Modification_Count' )
	      AND [DD].[LegacyColumnName] NOT LIKE '%RECORD_KEY'
	ORDER BY
	    [LegacyTableName]
	   ,[TableName]
	   ,[DD].[SequenceNumber];
    	""".format(ddVersion)
    i = 0
    results = _RunQuery(sql)
    if (results):
        try:
            print("Results returned: {}".format(len(results)))
            table_service = TableService(account_name=my_account_name, account_key=my_account_key)
            # table_service.create_table("dvStageOneTableEntity")
            for stage in results:
                i += 1
                stageEntity = Entity()
                stageEntity.PartitionKey = stage["partitionkey"]
                stageEntity.RowKey = stage["rowkey"]
                stageEntity.filesource = stage["filesource"]
                stageEntity.schemaName = stage["schemaname"]
                stageEntity.recordtype = stage["recordtype"]
                stageEntity.stageTableName = stage["legacytablename"]
                stageEntity.stageColumnName= stage["legacycolumnname"]
                stageEntity.stageEasyDataType= stage["legacyeasydatatype"]
                stageEntity.sequencenunmber = stage["sequencenumber"]
                stageEntity.isBase64 = stage["isbase64"]
                table_service.insert_or_replace_entity("dvStageOneTableEntity", stageEntity)
                if (i % 1000 == 0):
                    print("Writes/Updates done: {}".format(i))
        except Exception as e:
            print(e)
            raise
        finally:
            table_service = None
    print("Writes/Updates done: {}".format(i))

def WriteDWSources():
    print("Preparing to write the DW Sources Table")
    sql = """SELECT 'YRC-M204' AS [PartitionKey]
		,CONCAT(CAST([DD].[VersionNumber] AS VARCHAR(3)), '-', [DD].[FileSource], '-', IsNull(NullIf([DD].[RecordTypeTranslated], ''), 'No Rectype Value')) AS [RowKey]
		,[RecordType] = IsNull(NullIf([DD].[RecordType], ''), 'No Rectype')
      ,[RectypeValue] = IsNull(NullIf([DD].[RecordTypeTranslated], ''), 'No Rectype Value')
      ,[DWSchemaName] = [DD].[MfdSchemaName]
      ,[DW_Rectype_Reoccur] = IsNull(dd2.[OccurenceFlag],0)
      ,[DD].[TableName]
       ,[DD].[IsHistoryTable]
FROM   [Meta].[DataDictionary] [DD]
    LEFT JOIN meta.[DataDictionary] [dd2] ON dd.[FileSource] =dd2.[FileSource] AND dd.[VersionNumber] = dd2.[VersionNumber] 
                                            AND IsNull(NullIf([DD].[RecordType], ''), 'No Rectype') = IsNull(NullIf([DD2].[RecordType], ''), 'No Rectype')
                                            AND dd2.[OccurenceFlag] = 1
WHERE
       [DD].[VersionNumber] = {0}
       AND dd.[OccurenceFlag] = 0
GROUP BY CONCAT(
        CAST([DD].[VersionNumber] AS VARCHAR(3))
        ,'-'
        ,[DD].[FileSource]
        ,'-'
        ,ISNULL(NULLIF([DD].[RecordTypeTranslated], ''), 'No Rectype Value')
        )
        ,ISNULL(NULLIF([DD].[RecordType], ''), 'No Rectype')
        ,ISNULL(NULLIF([DD].[RecordTypeTranslated], ''), 'No Rectype Value')
        ,ISNULL(dd2.[OccurenceFlag], 0)
        ,[DD].[MfdSchemaName]
        ,[DD].[TableName]
        ,[DD].[IsHistoryTable]
ORDER BY
       1,2;
    """.format(ddVersion)
    i = 0
    results = _RunQuery(sql)
    if (results):
        try:
            print("Results returned: {}".format(len(results)))
            table_service = TableService(account_name=my_account_name, account_key=my_account_key)
            # table_service.create_table("dvDWSource")
            for dwSource in results:
                i += 1
                sourceEntity = Entity()
                sourceEntity.PartitionKey = dwSource["partitionkey"]
                sourceEntity.RowKey = dwSource["rowkey"]
                sourceEntity.RecordType = dwSource["recordtype"]
                sourceEntity.RectypeValue = dwSource["rectypevalue"]
                sourceEntity.DWSchemaName = dwSource["dwschemaname"]
                sourceEntity.DW_Rectype_Reoccur = dwSource["dw_rectype_reoccur"]
                sourceEntity.TableName = dwSource["tablename"]
                sourceEntity.IsHistoryTable = dwSource["ishistorytable"]
                table_service.insert_or_replace_entity("dvDWSource", sourceEntity)
        except Exception as e:
            print(e)
            raise
        finally:
            table_service = None
    print("Writes/Updates done: {}".format(i))

def WriteDWEntities():
    print("Preparing to write the DW Entities Table")
    print("Using Data Dictionary version: {}".format(ddVersion))
    sql = """SELECT 'YRC-M204' AS [PartitionKey]
		,CONCAT(CAST([DD].[VersionNumber] AS VARCHAR(3)), '-', [DD].[FileSource], '-',[DD].[TableName], '-',FORMAT([DD].[SequenceNumber],'D3')) AS [RowKey]
						  ,[DD].[FileSource]
                          ,[RecordType] = IsNull(NullIf([DD].[RecordTypeTranslated], ''), 'Blank Rectype')
                          ,[DD].[TableName]
                          ,[DD].[ColumnName]
                          ,[DWEasyDataType] = [DD].[MfdEasyDataType]
                          ,[TranslationRule] = IsNull([DDCR].[FunctionName], 'No Rule')
                          ,[StageTableName] = [DD].[LegacyTableName]
                          ,[RectypeReoccurYN] = Max(CASE WHEN [DD].[TableName] LIKE '%REOCCUR' THEN 'Y' ELSE 'N' END) OVER ( PARTITION BY [DD].[FileSource]
                                                                                                                                         ,[DD].[RecordType]
                                                                                                                             ORDER BY
                                                                                                                                 ( SELECT NULL ))
                          ,[StageReoccurYN] = Max(CASE WHEN [DD].[LegacyTableName] LIKE '%REOCCUR' THEN 'Y' ELSE 'N' END) OVER ( PARTITION BY [DD].[FileSource] ORDER BY ( SELECT NULL ))
                          ,[StageColumnName] = [DD].[LegacyColumnName]
                          ,[DD].[SequenceNumber]
                          ,[IsMemoryOptimized] = Max(CASE WHEN [DD].[IsMemoryOptimized] = 1 THEN 'Y' ELSE 'N' END) OVER ( PARTITION BY [DD].[FileSource]
                                                                                                                                      ,[DD].[RecordType]
                                                                                                                          ORDER BY
                                                                                                                              ( SELECT NULL ))
                          ,[DWSchemaName] = [DD].[MfdSchemaName]
                          ,[DD].[HasHistoryGroup]
                          ,[DD].[IsHistoryTable]
                          ,[HistoryTableName] = [dd2].[TableName]

                    FROM   [Meta].[DataDictionary] [DD]
                           LEFT OUTER JOIN [Meta].[DataDictionary_ConversionRule] [DDCR] ON [DD].[TranslationRule] = [DDCR].[ConversionRule]
                           LEFT JOIN [Meta].[DataDictionary] [dd2] ON Concat([DD].[FileSource], '_HIST')           = [dd2].[FileSource]
                                                                      AND [DD].[ColumnName]                        = [dd2].[ColumnName]
                                                                      AND IsNull([DD].[RecordType], 'blank')       = IsNull([dd2].[RecordType], 'blank')
                                                                      AND [DD].[OccurenceFlag]                     = [dd2].[OccurenceFlag]
                                                                      AND [DD].[VersionNumber]                     = [dd2].[VersionNumber]
                                                                      AND [DD].[HasHistoryGroup]                   = 'Y'
                                                                      AND [dd2].[IsHistoryTable]                   = 'Y'
                            WHERE [DD].[VersionNumber] = {0}
                            AND DD.SourceEnvironment = 'M204'
                            ORDER BY [DD].[RecordType]
                                    ,[DD].[TableName]
                                    ,[DD].[SequenceNumber]
    """.format(ddVersion)
    # print("Using SQL Statement: {}".format(sql))
    i = 0
    print("Retrieving entities for DD version {}...".format(ddVersion))
    results = _RunQuery(sql)
    if (results):
        try:
            print("Results returned: {}".format(len(results)))
            table_service = TableService(account_name=my_account_name, account_key=my_account_key)
            # table_service.create_table("dvDWEntity")
            for dwEntity in results:
                i += 1
                dwEntityRecord = Entity()
                dwEntityRecord.PartitionKey = dwEntity["partitionkey"]
                dwEntityRecord.RowKey = dwEntity["rowkey"]
                dwEntityRecord.FileSource = dwEntity["filesource"]
                dwEntityRecord.RecordType = dwEntity["recordtype"]
                dwEntityRecord.TableName = dwEntity["tablename"]
                dwEntityRecord.ColumnName = dwEntity["columnname"]
                dwEntityRecord.DWEasyDataType = dwEntity["dweasydatatype"]
                dwEntityRecord.TranslationRule = dwEntity["translationrule"]
                dwEntityRecord.StageTableName = dwEntity["stagetablename"]
                dwEntityRecord.RectypeReoccurYN = dwEntity["rectypereoccuryn"]
                dwEntityRecord.StageReoccurYN = dwEntity["stagereoccuryn"]
                dwEntityRecord.StageColumnName = dwEntity["stagecolumnname"]
                dwEntityRecord.SequenceNumber = dwEntity["sequencenumber"]
                dwEntityRecord.IsMemoryOptimized = dwEntity["ismemoryoptimized"]
                dwEntityRecord.DWSchemaName = dwEntity["dwschemaname"]
                dwEntityRecord.HasHistoryGroup = dwEntity["hashistorygroup"]
                dwEntityRecord.IsHistoryTable = dwEntity["ishistorytable"]
                dwEntityRecord.HistoryTableName = dwEntity["historytablename"]
                table_service.insert_or_replace_entity("dvDWEntity", dwEntityRecord)
                if (i % 1000 == 0):
                    print("Writes/Updates done: {}".format(i))
        except Exception as e:
            print(e)
            raise
        finally:
            table_service = None
    print("Writes/Updates done: {}".format(i))

def WriteStageEntityTable():
    print("Preparing to write the Stage Entity table")
    sql = """SELECT 'YRC-M204' AS [PartitionKey]
            ,CONCAT(CAST([DD].[VersionNumber] AS VARCHAR(3)), '-', [DD].[FileSource], '-', [DD].[LegacyTableName], '-', [DD].[LegacyColumnName]) AS [RowKey]
            ,'Legacy' AS [SchemaName]
            ,[DD].[LegacyTableName]
            ,[DD].[LegacyColumnName]
            ,UPPER([DD].[LegacyEasyDataType]) AS [LegacyEasyDataType]
            ,CAST([DD].[IsBase64] AS TINYINT) AS [IsBase64]
            ,[IsHistoryTable]
	        ,[DD].[SequenceNumber]
        FROM [Meta].[DataDictionary] AS [DD]
        WHERE [DD].[VersionNumber] = {0}
		AND [DD].[LegacyTableName] IS NOT NULL
		AND [DD].[LegacyColumnName] NOT IN ('Modification_Count','Distributed_KEY')
        GROUP BY CONCAT(
                CAST([DD].[VersionNumber] AS VARCHAR(3))
                ,'-'
                ,[DD].[FileSource]
                ,'-'
                ,[DD].[LegacyTableName]
                ,'-'
                ,[DD].[LegacyColumnName]
                )
                ,[DD].[LegacyTableName]
                ,[DD].[LegacyColumnName]
                ,UPPER([DD].[LegacyEasyDataType])
                ,[DD].[IsBase64]
                ,[DD].[IsHistoryTable]
      ,[DD].[SequenceNumber]
        ORDER BY 1,4,9""".format(ddVersion)
    i = 0
    results = _RunQuery(sql)
    if (results):
        try:
            print("Results returned: {}".format(len(results)))
            table_service = TableService(account_name=my_account_name, account_key=my_account_key)
            # table_service.create_table("dvStageEntity")
            for stage in results:
                i += 1
                stageEntity = Entity()
                stageEntity.PartitionKey = stage["partitionkey"]
                stageEntity.RowKey = stage["rowkey"]
                stageEntity.schemaName = stage["schemaname"]
                stageEntity.stageTableName = stage["legacytablename"]
                stageEntity.stageColumnName= stage["legacycolumnname"]
                stageEntity.stageEasyDataType= stage["legacyeasydatatype"]
                stageEntity.isBase64 = stage["isbase64"]
                stageEntity.isHistory = stage["ishistorytable"]
                stageEntity.sequenceNumber = stage["sequencenumber"]
                table_service.insert_or_replace_entity("dvStageEntity", stageEntity)
                if (i % 1000 == 0):
                    print("Writes/Updates done: {}".format(i))
        except Exception as e:
            print(e)
            raise
        finally:
            table_service = None
    print("Writes/Updates done: {}".format(i))

def WriteSourceEntityTable():
    print("Preparing to write the Source Entity table")
    sql = """SELECT CONCAT('YRC-', [DDT].[Environment])              AS [PartitionKey]
      ,[DDT].[TableName]                                AS [RowKey]
      ,ISNULL([DDRT].[RecTypeColumnName], 'No Rectype') AS [RECTYPE]
      ,CAST([DDT].[IsActive] AS TINYINT)                AS [isActive]
FROM [Meta].[DataDictionary_Table]                  AS [DDT]
    LEFT OUTER JOIN [Meta].[DataDictionary_RecType] AS [DDRT]
                    ON [DDRT].[DataDictionaryTableId] = [DDT].[Id]
WHERE [DDT].[Environment] IN ( 'M204' ) --, 'DB2')
GROUP BY
    CONCAT('YRC-', [DDT].[Environment])
   ,ISNULL([DDRT].[RecTypeColumnName], 'No Rectype')
   ,CAST([DDT].[IsActive] AS TINYINT)
   ,[DDT].[TableName]
UNION ALL
SELECT 'YRC-M204'        AS [PartitionKey]
      ,[DD].[FileSource] AS [RowKey]
      ,CASE
           WHEN [R].[RecordType] IS NULL THEN
               'No Rectype'
           ELSE
               'RECTYPE'
       END               AS [RECTYPE]
      ,CAST(1 AS BIT)    AS [isActive]
FROM [Meta].[DataDictionary] AS [DD]
    LEFT OUTER JOIN
    (
        SELECT *
        FROM [Meta].[DataDictionary] AS [DD2]
        WHERE [DD2].[RecordType] IS NOT NULL
              AND [DD2].[IsHistoryTable] = 'Y'
    )                        AS [R]
    ON [R].[FileSource] = [DD].[FileSource]
WHERE [DD].[IsCurrent] = CAST(1 AS BIT)
      AND [DD].[IsHistoryTable] = 'Y'
GROUP BY
    CASE
        WHEN [R].[RecordType] IS NULL THEN
            'No Rectype'
        ELSE
            'RECTYPE'
    END
   ,[DD].[FileSource]
ORDER BY
    1
   ,2;"""
    results = _RunQuery(sql)
    if (results):
        try:
            table_service = TableService(account_name=my_account_name, account_key=my_account_key)
            # table_service.create_table("dvSource")
            for source in results:
                sourceEntity = Entity()
                sourceEntity.PartitionKey = source["partitionkey"]
                sourceEntity.RowKey = source["rowkey"]
                sourceEntity.rectype = source["rectype"]
                sourceEntity.isActive = int(source["isactive"])
                table_service.insert_or_replace_entity("dvSource", sourceEntity)
        except Exception as e:
            print(e)
            raise
        finally:
            table_service = None
    
def WriteEnvironmentTable():
    print("Preparing to write the Environment table")
    table_service = None
    try:
        table_service = TableService(account_name=my_account_name, account_key=my_account_key)
        table_service.create_table("dvEnvironment")
        env = {'PartitionKey': 'env', 'RowKey': '001', 'name': 'YRC-M204', 'description' : 'YRC Model 204', 'source' : 'M204'}
        table_service.insert_entity("dvEnvironment", env)
        env = {'PartitionKey': 'env', 'RowKey': '002', 'name': 'YRC-DB2', 'description' : 'YRC Db2', 'source' : 'DB2'}
        table_service.insert_entity("dvEnvironment", env)
        print("Environment table written")
    except Exception as e:
        print(e)
    finally:
        table_service = None

def Main(_argv):
    print("Starting Azure Table program")
    global ddVersion
    if len(_argv) > 1:
        ddVersion = int(_argv[1])
    print("Using Data Dictionary version: {}".format(ddVersion))
    # WriteEnvironmentTable()
    # WriteSourceEntityTable()
    # WriteStageEntityTable()
    # WriteStageSingleTableEntity()
    # WriteGenerationTasktTable()
    # WriteDWSources()
    # WriteVersionTable()
    # RetrieveStageEntities(str(_argv[1]), str(_argv[2]))
    # WriteDWEntities()
    # RetrieveDWSources(str(_argv[1]), str(_argv[2]))
    RetrieveDWEntities(str(_argv[1]), str(_argv[2]))
    ShowHighestVersion()

if __name__ == "__main__":
    Main(sys.argv)
