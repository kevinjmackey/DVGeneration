    -- ====================================================================================
    -- IISX Legacy DDL
    -- Generated on: 2019-05-19 01:04:46.223855
    -- Generator Version: 1.0
    -- Data Dictionary: Version 242
    --
    -- Template Version:  1.
    -- Version 1.0  Initial version of the template for on-disk Legacy table DDL
    -- ========================================================================================================================
    IF EXISTS (
    SELECT * FROM dbo.sysobjects
    WHERE [name] = N'M204_IISX_BUS_SHPID_Processed'
    AND OBJECTPROPERTY([id], N'IsTable') = 1)

    DROP TABLE [Legacy].[M204_IISX_BUS_SHPID_Processed]
    GO
    CREATE TABLE [Legacy].[M204_IISX_BUS_SHPID_Processed]
      (
         [RECORD_KEY] [NUMERIC](30, 0) NULL
        ,[DTS_DTTMSP] [BIGINT] NULL
        ,[RECTYPE] [VARCHAR](255) NULL
        ,[dateTime] [VARCHAR](255) NULL
        ,[ProgramId] [VARCHAR] (255) NULL
        ,[payload] [XML] NULL
        ,[ProcessFlag] [INT] NOT NULL
        ,[INSERT_TS] [DATETIME] NOT NULL
        ,[message_enqueue_time] [DATETIME] NULL
        ,[ExecutionID] UNIQUEIDENTIFIER NULL,
    ) ON [Daily4PS]([INSERT_TS])
    GO

/*Add extended properties for processed table database version*/

DECLARE @schema_name NVARCHAR(255) = 'Legacy'
DECLARE @object_type NVARCHAR(255) = 'U'
DECLARE @object_name NVARCHAR(255) = 'M204_IISX_BUS_SHPID_Processed'

IF EXISTS ( SELECT
                    *
                FROM
                    [sys].[extended_properties] [EP]
                LEFT JOIN [sys].[all_objects] [O] ON [EP].[major_id] = [O].[object_id]
                LEFT JOIN [sys].[schemas] [S] ON [O].[schema_id] = [S].[schema_id]
                LEFT JOIN [sys].[columns] AS [c] ON [EP].[major_id] = [c].[object_id] AND
                                                    [EP].[minor_id] = [c].[column_id]
                WHERE
                    [EP].[name] = 'Data_Dictionary_Version' AND
                    [S].[name] = @schema_name AND
                    [O].[type] = @object_type AND
                    [O].[name] = @object_name )

    EXEC [sys].[sp_updateextendedproperty]
        @name = N'Data_Dictionary_Version'
       ,@value = N'242'
       ,@level0type = N'SCHEMA'
       ,@level0name = @schema_name
       ,@level1type = N'TABLE'
       ,@level1name = @object_name
        
ELSE
    EXEC [sys].[sp_addextendedproperty]
        @name = N'Data_Dictionary_Version'
       ,@value = N'242'
       ,@level0type = N'SCHEMA'
       ,@level0name = @schema_name
       ,@level1type = N'TABLE'
       ,@level1name = @object_name
GO
IF EXISTS (
    SELECT * FROM dbo.sysobjects
    WHERE [name] = N'M204_IISX_BUS_SHPID_Processed_Drop'
    AND OBJECTPROPERTY([id], N'IsTable') = 1)

    DROP TABLE [Legacy].[M204_IISX_BUS_SHPID_Processed_Drop]
    GO
    CREATE TABLE [Legacy].[M204_IISX_BUS_SHPID_Processed_Drop]
      (
         [RECORD_KEY] [NUMERIC](30, 0) NULL
        ,[DTS_DTTMSP] [BIGINT] NULL
        ,[RECTYPE] [VARCHAR](255) NULL
        ,[dateTime] [VARCHAR](255) NULL
        ,[ProgramId] [VARCHAR] (255) NULL
        ,[payload] [XML] NULL
        ,[ProcessFlag] [INT] NOT NULL
        ,[INSERT_TS] [DATETIME] NOT NULL
        ,[message_enqueue_time] [DATETIME] NULL
        ,[ExecutionID] UNIQUEIDENTIFIER NULL,
    ) ON [Daily4PS]([INSERT_TS])
    GO

/*Add extended properties for processed_drop table database version*/

DECLARE @schema_name NVARCHAR(255) = 'Legacy'
DECLARE @object_type NVARCHAR(255) = 'U'
DECLARE @object_name NVARCHAR(255) = 'M204_IISX_BUS_SHPID_Processed_Drop'

IF EXISTS ( SELECT
                    *
                FROM
                    [sys].[extended_properties] [EP]
                LEFT JOIN [sys].[all_objects] [O] ON [EP].[major_id] = [O].[object_id]
                LEFT JOIN [sys].[schemas] [S] ON [O].[schema_id] = [S].[schema_id]
                LEFT JOIN [sys].[columns] AS [c] ON [EP].[major_id] = [c].[object_id] AND
                                                    [EP].[minor_id] = [c].[column_id]
                WHERE
                    [EP].[name] = 'Data_Dictionary_Version' AND
                    [S].[name] = @schema_name AND
                    [O].[type] = @object_type AND
                    [O].[name] = @object_name )

    EXEC [sys].[sp_updateextendedproperty]
        @name = N'Data_Dictionary_Version'
       ,@value = N'242'
       ,@level0type = N'SCHEMA'
       ,@level0name = @schema_name
       ,@level1type = N'TABLE'
       ,@level1name = @object_name
        
ELSE
    EXEC [sys].[sp_addextendedproperty]
        @name = N'Data_Dictionary_Version'
       ,@value = N'242'
       ,@level0type = N'SCHEMA'
       ,@level0name = @schema_name
       ,@level1type = N'TABLE'
       ,@level1name = @object_name
    IF EXISTS (
    SELECT * FROM dbo.sysobjects
    WHERE [name] = N'M204_IISX_BUS_SHPID_PU_Processed'
    AND OBJECTPROPERTY([id], N'IsTable') = 1)

    DROP TABLE [Legacy].[M204_IISX_BUS_SHPID_PU_Processed]
    GO
    CREATE TABLE [Legacy].[M204_IISX_BUS_SHPID_PU_Processed]
      (
         [RECORD_KEY] [NUMERIC](30, 0) NULL
        ,[DTS_DTTMSP] [BIGINT] NULL
        ,[RECTYPE] [VARCHAR](255) NULL
        ,[dateTime] [VARCHAR](255) NULL
        ,[ProgramId] [VARCHAR] (255) NULL
        ,[payload] [XML] NULL
        ,[ProcessFlag] [INT] NOT NULL
        ,[INSERT_TS] [DATETIME] NOT NULL
        ,[message_enqueue_time] [DATETIME] NULL
        ,[ExecutionID] UNIQUEIDENTIFIER NULL,
    ) ON [Daily4PS]([INSERT_TS])
    GO

/*Add extended properties for processed table database version*/

DECLARE @schema_name NVARCHAR(255) = 'Legacy'
DECLARE @object_type NVARCHAR(255) = 'U'
DECLARE @object_name NVARCHAR(255) = 'M204_IISX_BUS_SHPID_PU_Processed'

IF EXISTS ( SELECT
                    *
                FROM
                    [sys].[extended_properties] [EP]
                LEFT JOIN [sys].[all_objects] [O] ON [EP].[major_id] = [O].[object_id]
                LEFT JOIN [sys].[schemas] [S] ON [O].[schema_id] = [S].[schema_id]
                LEFT JOIN [sys].[columns] AS [c] ON [EP].[major_id] = [c].[object_id] AND
                                                    [EP].[minor_id] = [c].[column_id]
                WHERE
                    [EP].[name] = 'Data_Dictionary_Version' AND
                    [S].[name] = @schema_name AND
                    [O].[type] = @object_type AND
                    [O].[name] = @object_name )

    EXEC [sys].[sp_updateextendedproperty]
        @name = N'Data_Dictionary_Version'
       ,@value = N'242'
       ,@level0type = N'SCHEMA'
       ,@level0name = @schema_name
       ,@level1type = N'TABLE'
       ,@level1name = @object_name
        
ELSE
    EXEC [sys].[sp_addextendedproperty]
        @name = N'Data_Dictionary_Version'
       ,@value = N'242'
       ,@level0type = N'SCHEMA'
       ,@level0name = @schema_name
       ,@level1type = N'TABLE'
       ,@level1name = @object_name
GO
IF EXISTS (
    SELECT * FROM dbo.sysobjects
    WHERE [name] = N'M204_IISX_BUS_SHPID_PU_Processed_Drop'
    AND OBJECTPROPERTY([id], N'IsTable') = 1)

    DROP TABLE [Legacy].[M204_IISX_BUS_SHPID_PU_Processed_Drop]
    GO
    CREATE TABLE [Legacy].[M204_IISX_BUS_SHPID_PU_Processed_Drop]
      (
         [RECORD_KEY] [NUMERIC](30, 0) NULL
        ,[DTS_DTTMSP] [BIGINT] NULL
        ,[RECTYPE] [VARCHAR](255) NULL
        ,[dateTime] [VARCHAR](255) NULL
        ,[ProgramId] [VARCHAR] (255) NULL
        ,[payload] [XML] NULL
        ,[ProcessFlag] [INT] NOT NULL
        ,[INSERT_TS] [DATETIME] NOT NULL
        ,[message_enqueue_time] [DATETIME] NULL
        ,[ExecutionID] UNIQUEIDENTIFIER NULL,
    ) ON [Daily4PS]([INSERT_TS])
    GO

/*Add extended properties for processed_drop table database version*/

DECLARE @schema_name NVARCHAR(255) = 'Legacy'
DECLARE @object_type NVARCHAR(255) = 'U'
DECLARE @object_name NVARCHAR(255) = 'M204_IISX_BUS_SHPID_PU_Processed_Drop'

IF EXISTS ( SELECT
                    *
                FROM
                    [sys].[extended_properties] [EP]
                LEFT JOIN [sys].[all_objects] [O] ON [EP].[major_id] = [O].[object_id]
                LEFT JOIN [sys].[schemas] [S] ON [O].[schema_id] = [S].[schema_id]
                LEFT JOIN [sys].[columns] AS [c] ON [EP].[major_id] = [c].[object_id] AND
                                                    [EP].[minor_id] = [c].[column_id]
                WHERE
                    [EP].[name] = 'Data_Dictionary_Version' AND
                    [S].[name] = @schema_name AND
                    [O].[type] = @object_type AND
                    [O].[name] = @object_name )

    EXEC [sys].[sp_updateextendedproperty]
        @name = N'Data_Dictionary_Version'
       ,@value = N'242'
       ,@level0type = N'SCHEMA'
       ,@level0name = @schema_name
       ,@level1type = N'TABLE'
       ,@level1name = @object_name
        
ELSE
    EXEC [sys].[sp_addextendedproperty]
        @name = N'Data_Dictionary_Version'
       ,@value = N'242'
       ,@level0type = N'SCHEMA'
       ,@level0name = @schema_name
       ,@level1type = N'TABLE'
       ,@level1name = @object_name
