
    -- ====================================================================================
    --ADJ_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ADJ_VW];
    GO

create view [THB].[ADJ_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ADJ_ADJ_BASE]', [RECTYPE] = 'ADJ.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ADJ_ADJ_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ADJ_ADJ_BASE_InvalidDataType]', [RECTYPE] = 'ADJ.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ADJ_ADJ_BASE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ADJ_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ASH_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ASH_VW];
    GO

create view [THB].[ASH_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ASH]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ASH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ASH_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ASH_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ASH_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ATC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ATC_VW];
    GO

create view [THB].[ATC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ATC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ATC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ATC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ATC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ATC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ATT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ATT_VW];
    GO

create view [THB].[ATT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ATT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ATT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ATT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ATT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ATT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ATV_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ATV_VW];
    GO

create view [THB].[ATV_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ATV]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ATV] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ATV_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ATV_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ATV_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BAC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BAC_VW];
    GO

create view [THB].[BAC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BAC_A]', [RECTYPE] = 'A'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BAC_A] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BAC_A_InvalidDataType]', [RECTYPE] = 'A' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BAC_A_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BAC_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BAC_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BAC_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BAC_B_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BAC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BATCHMSG_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BATCHMSG_VW];
    GO

create view [THB].[BATCHMSG_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BATCHMSG]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BATCHMSG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BATCHMSG_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BATCHMSG_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BATCHMSG_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BMF_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BMF_VW];
    GO

create view [THB].[BMF_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BMF]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BMF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BMF_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BMF_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BMF_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BOA_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BOA_VW];
    GO

create view [THB].[BOA_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BOA]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BOA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BOA_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BOA_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BOA_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BRBRSC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BRBRSC_VW];
    GO

create view [THB].[BRBRSC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BRBRSC_TFD_BRSC]', [RECTYPE] = 'TFD.BRSC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BRBRSC_TFD_BRSC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BRBRSC_TFD_BRSC_InvalidDataType]', [RECTYPE] = 'TFD.BRSC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BRBRSC_TFD_BRSC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BRBRSC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BRCRSC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BRCRSC_VW];
    GO

create view [THB].[BRCRSC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BRCRSC_TFD_CRSC]', [RECTYPE] = 'TFD.CRSC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BRCRSC_TFD_CRSC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BRCRSC_TFD_CRSC_InvalidDataType]', [RECTYPE] = 'TFD.CRSC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BRCRSC_TFD_CRSC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BRCRSC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BSP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BSP_VW];
    GO

create view [THB].[BSP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSP_BSP_ACTION]', [RECTYPE] = 'BSP.ACTION'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BSP_BSP_ACTION] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSP_BSP_ACTION_InvalidDataType]', [RECTYPE] = 'BSP.ACTION' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BSP_BSP_ACTION_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSP_BSP_BASE]', [RECTYPE] = 'BSP.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BSP_BSP_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSP_BSP_BASE_InvalidDataType]', [RECTYPE] = 'BSP.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BSP_BSP_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSP_BSP_COND]', [RECTYPE] = 'BSP.COND'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BSP_BSP_COND] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSP_BSP_COND_InvalidDataType]', [RECTYPE] = 'BSP.COND' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BSP_BSP_COND_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BSP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BSPAUD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BSPAUD_VW];
    GO

create view [THB].[BSPAUD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSPAUD]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BSPAUD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSPAUD_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BSPAUD_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BSPAUD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BSR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BSR_VW];
    GO

create view [THB].[BSR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSR]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BSR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSR_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BSR_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BSR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BSRPDB_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BSRPDB_VW];
    GO

create view [THB].[BSRPDB_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSRPDB_BSRPDB]', [RECTYPE] = 'BSRPDB'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BSRPDB_BSRPDB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSRPDB_BSRPDB_InvalidDataType]', [RECTYPE] = 'BSRPDB' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BSRPDB_BSRPDB_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BSRPDB_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BSRPRE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BSRPRE_VW];
    GO

create view [THB].[BSRPRE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSRPRE]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BSRPRE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSRPRE_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BSRPRE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BSRPRE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BSR_HIST_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BSR_HIST_VW];
    GO

create view [THB].[BSR_HIST_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSR_HIST]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[BSR_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSR_HIST_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[BSR_HIST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BSR_HIST_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BSS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BSS_VW];
    GO

create view [THB].[BSS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSS]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BSS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BSS_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BSS_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BSS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BTR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BTR_VW];
    GO

create view [THB].[BTR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BTR_CRDT_VNDR]', [RECTYPE] = 'CRDT.VNDR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BTR_CRDT_VNDR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BTR_CRDT_VNDR_InvalidDataType]', [RECTYPE] = 'CRDT.VNDR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BTR_CRDT_VNDR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BTR_REQUEST]', [RECTYPE] = 'REQUEST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BTR_REQUEST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BTR_REQUEST_InvalidDataType]', [RECTYPE] = 'REQUEST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BTR_REQUEST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BTR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BUS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BUS_VW];
    GO

create view [THB].[BUS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_ALIAS]', [RECTYPE] = 'BUS.ALIAS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_ALIAS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_ALIAS_InvalidDataType]', [RECTYPE] = 'BUS.ALIAS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_ALIAS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_BASE]', [RECTYPE] = 'BUS.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_BASE_InvalidDataType]', [RECTYPE] = 'BUS.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_BDUE_INVOICE]', [RECTYPE] = 'BUS.BDUE.INVOICE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_BDUE_INVOICE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_BDUE_INVOICE_InvalidDataType]', [RECTYPE] = 'BUS.BDUE.INVOICE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_BDUE_INVOICE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_COMMENT]', [RECTYPE] = 'BUS.COMMENT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_COMMENT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_COMMENT_InvalidDataType]', [RECTYPE] = 'BUS.COMMENT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_COMMENT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_CONTACT]', [RECTYPE] = 'BUS.CONTACT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_CONTACT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_CONTACT_InvalidDataType]', [RECTYPE] = 'BUS.CONTACT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_CONTACT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_CORS_MAILING]', [RECTYPE] = 'BUS.CORS.MAILING'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_CORS_MAILING] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_CORS_MAILING_InvalidDataType]', [RECTYPE] = 'BUS.CORS.MAILING' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_CORS_MAILING_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_CREDIT_RATING]', [RECTYPE] = 'BUS.CREDIT.RATING'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_CREDIT_RATING] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_CREDIT_RATING_InvalidDataType]', [RECTYPE] = 'BUS.CREDIT.RATING' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_CREDIT_RATING_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_INVOICE]', [RECTYPE] = 'BUS.INVOICE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_INVOICE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_INVOICE_InvalidDataType]', [RECTYPE] = 'BUS.INVOICE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_INVOICE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_MAILING]', [RECTYPE] = 'BUS.MAILING'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_MAILING] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_MAILING_InvalidDataType]', [RECTYPE] = 'BUS.MAILING' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_MAILING_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_NATL_HISTORY]', [RECTYPE] = 'BUS.NATL.HISTORY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_NATL_HISTORY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_NATL_HISTORY_InvalidDataType]', [RECTYPE] = 'BUS.NATL.HISTORY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_NATL_HISTORY_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_PDUE_INVOICE]', [RECTYPE] = 'BUS.PDUE.INVOICE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_PDUE_INVOICE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_PDUE_INVOICE_InvalidDataType]', [RECTYPE] = 'BUS.PDUE.INVOICE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_PDUE_INVOICE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_PYMT_TRMS]', [RECTYPE] = 'BUS.PYMT.TRMS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_PYMT_TRMS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_PYMT_TRMS_InvalidDataType]', [RECTYPE] = 'BUS.PYMT.TRMS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_PYMT_TRMS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_SALES_DATA]', [RECTYPE] = 'BUS.SALES.DATA'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_SALES_DATA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_SALES_DATA_InvalidDataType]', [RECTYPE] = 'BUS.SALES.DATA' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_SALES_DATA_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_SHP_PROF]', [RECTYPE] = 'BUS.SHP.PROF'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_SHP_PROF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_SHP_PROF_InvalidDataType]', [RECTYPE] = 'BUS.SHP.PROF' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_SHP_PROF_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_STRUCTURE]', [RECTYPE] = 'BUS.STRUCTURE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_STRUCTURE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_STRUCTURE_InvalidDataType]', [RECTYPE] = 'BUS.STRUCTURE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_STRUCTURE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_TEMP_DATA]', [RECTYPE] = 'BUS.TEMP.DATA'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_TEMP_DATA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_TEMP_DATA_InvalidDataType]', [RECTYPE] = 'BUS.TEMP.DATA' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_TEMP_DATA_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_V]', [RECTYPE] = 'BUS.V'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS_BUS_V] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_BUS_V_InvalidDataType]', [RECTYPE] = 'BUS.V' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_BUS_V_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUS_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUS_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BUS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BUSAUDIT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BUSAUDIT_VW];
    GO

create view [THB].[BUSAUDIT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUSAUDIT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUSAUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUSAUDIT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUSAUDIT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BUSAUDIT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --BUSCMT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[BUSCMT_VW];
    GO

create view [THB].[BUSCMT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUSCMT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[BUSCMT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[BUSCMT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[BUSCMT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'BUSCMT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CAR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CAR_VW];
    GO

create view [THB].[CAR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_AUDIT_PARM]', [RECTYPE] = 'CAR.AUDIT.PARM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_AUDIT_PARM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_AUDIT_PARM_InvalidDataType]', [RECTYPE] = 'CAR.AUDIT.PARM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_AUDIT_PARM_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_BILLED_FL]', [RECTYPE] = 'CAR.BILLED.FL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_BILLED_FL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_BILLED_FL_InvalidDataType]', [RECTYPE] = 'CAR.BILLED.FL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_BILLED_FL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_DELASTRAY_FL]', [RECTYPE] = 'CAR.DELASTRAY.FL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_DELASTRAY_FL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_DELASTRAY_FL_InvalidDataType]', [RECTYPE] = 'CAR.DELASTRAY.FL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_DELASTRAY_FL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_DELIGLN_FL]', [RECTYPE] = 'CAR.DELIGLN.FL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_DELIGLN_FL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_DELIGLN_FL_InvalidDataType]', [RECTYPE] = 'CAR.DELIGLN.FL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_DELIGLN_FL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_DELINTL_FL]', [RECTYPE] = 'CAR.DELINTL.FL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_DELINTL_FL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_DELINTL_FL_InvalidDataType]', [RECTYPE] = 'CAR.DELINTL.FL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_DELINTL_FL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_DELIVERED_FL]', [RECTYPE] = 'CAR.DELIVERED.FL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_DELIVERED_FL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_DELIVERED_FL_InvalidDataType]', [RECTYPE] = 'CAR.DELIVERED.FL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_DELIVERED_FL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_IMAGE_FL]', [RECTYPE] = 'CAR.IMAGE.FL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_IMAGE_FL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_IMAGE_FL_InvalidDataType]', [RECTYPE] = 'CAR.IMAGE.FL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_IMAGE_FL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_INVC_FL]', [RECTYPE] = 'CAR.INVC.FL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_INVC_FL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_INVC_FL_InvalidDataType]', [RECTYPE] = 'CAR.INVC.FL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_INVC_FL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_MNFST_FL]', [RECTYPE] = 'CAR.MNFST.FL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_MNFST_FL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_MNFST_FL_InvalidDataType]', [RECTYPE] = 'CAR.MNFST.FL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_MNFST_FL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_RATE_CLERK]', [RECTYPE] = 'CAR.RATE.CLERK'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_RATE_CLERK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_RATE_CLERK_InvalidDataType]', [RECTYPE] = 'CAR.RATE.CLERK' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_RATE_CLERK_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_REASON]', [RECTYPE] = 'CAR.REASON'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_REASON] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_REASON_InvalidDataType]', [RECTYPE] = 'CAR.REASON' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_REASON_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_WORK_CAT]', [RECTYPE] = 'CAR.WORK.CAT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_WORK_CAT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_WORK_CAT_InvalidDataType]', [RECTYPE] = 'CAR.WORK.CAT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_WORK_CAT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_WORK_GROUP]', [RECTYPE] = 'CAR.WORK.GROUP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_WORK_GROUP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_WORK_GROUP_InvalidDataType]', [RECTYPE] = 'CAR.WORK.GROUP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_WORK_GROUP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_WORK_OVERRIDE]', [RECTYPE] = 'CAR.WORK.OVERRIDE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CAR_CAR_WORK_OVERRIDE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CAR_CAR_WORK_OVERRIDE_InvalidDataType]', [RECTYPE] = 'CAR.WORK.OVERRIDE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CAR_CAR_WORK_OVERRIDE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CAR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CARE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CARE_VW];
    GO

create view [THB].[CARE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CARE]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CARE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CARE_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CARE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CARE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CARH_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CARH_VW];
    GO

create view [THB].[CARH_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CARH]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CARH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CARH_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CARH_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CARH_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CARS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CARS_VW];
    GO

create view [THB].[CARS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CARS]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CARS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CARS_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CARS_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CARS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CCD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CCD_VW];
    GO

create view [THB].[CCD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCD_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCD_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCD_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCD_B_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCD_H]', [RECTYPE] = 'H'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCD_H] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCD_H_InvalidDataType]', [RECTYPE] = 'H' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCD_H_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCD_I]', [RECTYPE] = 'I'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCD_I] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCD_I_InvalidDataType]', [RECTYPE] = 'I' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCD_I_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCD]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCD_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCD_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CCD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CCLS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CCLS_VW];
    GO

create view [THB].[CCLS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCLS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCLS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_TFD_CCLS]', [RECTYPE] = 'TFD.CCLS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCLS_TFD_CCLS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_TFD_CCLS_InvalidDataType]', [RECTYPE] = 'TFD.CCLS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCLS_TFD_CCLS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_TFD_HTS]', [RECTYPE] = 'TFD.HTS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCLS_TFD_HTS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_TFD_HTS_InvalidDataType]', [RECTYPE] = 'TFD.HTS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCLS_TFD_HTS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_TFD_HTSX]', [RECTYPE] = 'TFD.HTSX'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCLS_TFD_HTSX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_TFD_HTSX_InvalidDataType]', [RECTYPE] = 'TFD.HTSX' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCLS_TFD_HTSX_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_TFD_INDX]', [RECTYPE] = 'TFD.INDX'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCLS_TFD_INDX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_TFD_INDX_InvalidDataType]', [RECTYPE] = 'TFD.INDX' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCLS_TFD_INDX_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_TFD_SYNM]', [RECTYPE] = 'TFD.SYNM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCLS_TFD_SYNM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCLS_TFD_SYNM_InvalidDataType]', [RECTYPE] = 'TFD.SYNM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCLS_TFD_SYNM_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CCLS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CCS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CCS_VW];
    GO

create view [THB].[CCS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_ASSIGN]', [RECTYPE] = 'CCS.ASSIGN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_ASSIGN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_ASSIGN_InvalidDataType]', [RECTYPE] = 'CCS.ASSIGN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_ASSIGN_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_AUDIT]', [RECTYPE] = 'CCS.AUDIT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_AUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_AUDIT_InvalidDataType]', [RECTYPE] = 'CCS.AUDIT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_AUDIT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_AUTOPAY]', [RECTYPE] = 'CCS.AUTOPAY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_AUTOPAY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_AUTOPAY_InvalidDataType]', [RECTYPE] = 'CCS.AUTOPAY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_AUTOPAY_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_BASE]', [RECTYPE] = 'CCS.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_BASE_InvalidDataType]', [RECTYPE] = 'CCS.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_BUS]', [RECTYPE] = 'CCS.BUS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_BUS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_BUS_InvalidDataType]', [RECTYPE] = 'CCS.BUS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_BUS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_DETAIL]', [RECTYPE] = 'CCS.DETAIL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_DETAIL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_DETAIL_InvalidDataType]', [RECTYPE] = 'CCS.DETAIL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_DETAIL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_JRNL]', [RECTYPE] = 'CCS.JRNL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_JRNL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_JRNL_InvalidDataType]', [RECTYPE] = 'CCS.JRNL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_JRNL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_MAINT]', [RECTYPE] = 'CCS.MAINT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_MAINT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_MAINT_InvalidDataType]', [RECTYPE] = 'CCS.MAINT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_MAINT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_RLTD]', [RECTYPE] = 'CCS.RLTD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_RLTD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_RLTD_InvalidDataType]', [RECTYPE] = 'CCS.RLTD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_RLTD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_RSLTN]', [RECTYPE] = 'CCS.RSLTN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_RSLTN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_RSLTN_InvalidDataType]', [RECTYPE] = 'CCS.RSLTN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_RSLTN_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_STAGE]', [RECTYPE] = 'CCS.STAGE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CCS_CCS_STAGE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CCS_CCS_STAGE_InvalidDataType]', [RECTYPE] = 'CCS.STAGE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CCS_CCS_STAGE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CCS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CDT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CDT_VW];
    GO

create view [THB].[CDT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CDT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CDT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CDT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CDT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CDT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CIF_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CIF_VW];
    GO

create view [THB].[CIF_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CIF_BRG]', [RECTYPE] = 'BRG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CIF_BRG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CIF_BRG_InvalidDataType]', [RECTYPE] = 'BRG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CIF_BRG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CIF_CARR]', [RECTYPE] = 'CARR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CIF_CARR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CIF_CARR_InvalidDataType]', [RECTYPE] = 'CARR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CIF_CARR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CIF_CUST]', [RECTYPE] = 'CUST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CIF_CUST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CIF_CUST_InvalidDataType]', [RECTYPE] = 'CUST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CIF_CUST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CIF_NATL]', [RECTYPE] = 'NATL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CIF_NATL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CIF_NATL_InvalidDataType]', [RECTYPE] = 'NATL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CIF_NATL_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CIF_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CINV_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CINV_VW];
    GO

create view [THB].[CINV_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_BCB]', [RECTYPE] = 'BCB'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_BCB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_BCB_InvalidDataType]', [RECTYPE] = 'BCB' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_BCB_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_BCBH]', [RECTYPE] = 'BCBH'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_BCBH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_BCBH_InvalidDataType]', [RECTYPE] = 'BCBH' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_BCBH_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_BCD]', [RECTYPE] = 'BCD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_BCD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_BCD_InvalidDataType]', [RECTYPE] = 'BCD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_BCD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_BCDH]', [RECTYPE] = 'BCDH'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_BCDH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_BCDH_InvalidDataType]', [RECTYPE] = 'BCDH' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_BCDH_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CALC]', [RECTYPE] = 'CALC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CALC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CALC_InvalidDataType]', [RECTYPE] = 'CALC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CALC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CB]', [RECTYPE] = 'CB'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CB_InvalidDataType]', [RECTYPE] = 'CB' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CB_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CBH]', [RECTYPE] = 'CBH'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CBH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CBH_InvalidDataType]', [RECTYPE] = 'CBH' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CBH_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CD]', [RECTYPE] = 'CD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CD_InvalidDataType]', [RECTYPE] = 'CD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CDH]', [RECTYPE] = 'CDH'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CDH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CDH_InvalidDataType]', [RECTYPE] = 'CDH' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CDH_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CG]', [RECTYPE] = 'CG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CG_InvalidDataType]', [RECTYPE] = 'CG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CH]', [RECTYPE] = 'CH'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CH_InvalidDataType]', [RECTYPE] = 'CH' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CH_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CI]', [RECTYPE] = 'CI'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CI] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CI_InvalidDataType]', [RECTYPE] = 'CI' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CI_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CIH]', [RECTYPE] = 'CIH'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CIH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CIH_InvalidDataType]', [RECTYPE] = 'CIH' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CIH_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CMTS]', [RECTYPE] = 'CMTS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CMTS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CMTS_InvalidDataType]', [RECTYPE] = 'CMTS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CMTS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CS]', [RECTYPE] = 'CS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CS_InvalidDataType]', [RECTYPE] = 'CS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CSH]', [RECTYPE] = 'CSH'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CSH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CSH_InvalidDataType]', [RECTYPE] = 'CSH' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CSH_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CV]', [RECTYPE] = 'CV'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CV] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CV_InvalidDataType]', [RECTYPE] = 'CV' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CV_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CVH]', [RECTYPE] = 'CVH'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CINV_CVH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CINV_CVH_InvalidDataType]', [RECTYPE] = 'CVH' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CINV_CVH_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CINV_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CIVR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CIVR_VW];
    GO

create view [THB].[CIVR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CIVR_CIVR_PROFILE]', [RECTYPE] = 'CIVR.PROFILE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CIVR_CIVR_PROFILE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CIVR_CIVR_PROFILE_InvalidDataType]', [RECTYPE] = 'CIVR.PROFILE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CIVR_CIVR_PROFILE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CIVR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CLF_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CLF_VW];
    GO

create view [THB].[CLF_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_BASE]', [RECTYPE] = 'CLF.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLF_CLF_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_BASE_InvalidDataType]', [RECTYPE] = 'CLF.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLF_CLF_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_INFO]', [RECTYPE] = 'CLF.INFO'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLF_CLF_INFO] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_INFO_InvalidDataType]', [RECTYPE] = 'CLF.INFO' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLF_CLF_INFO_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_INTRCHG]', [RECTYPE] = 'CLF.INTRCHG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLF_CLF_INTRCHG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_INTRCHG_InvalidDataType]', [RECTYPE] = 'CLF.INTRCHG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLF_CLF_INTRCHG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_ORZ]', [RECTYPE] = 'CLF.ORZ'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLF_CLF_ORZ] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_ORZ_InvalidDataType]', [RECTYPE] = 'CLF.ORZ' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLF_CLF_ORZ_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_RGN]', [RECTYPE] = 'CLF.RGN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLF_CLF_RGN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_RGN_InvalidDataType]', [RECTYPE] = 'CLF.RGN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLF_CLF_RGN_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_SVC]', [RECTYPE] = 'CLF.SVC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLF_CLF_SVC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_CLF_SVC_InvalidDataType]', [RECTYPE] = 'CLF.SVC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLF_CLF_SVC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLF_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLF_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CLF_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CLFTEC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CLFTEC_VW];
    GO

create view [THB].[CLFTEC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLFTEC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLFTEC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLFTEC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLFTEC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CLFTEC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CLOC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CLOC_VW];
    GO

create view [THB].[CLOC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLOC_CLAIMS_LOC]', [RECTYPE] = 'CLAIMS.LOC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLOC_CLAIMS_LOC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLOC_CLAIMS_LOC_InvalidDataType]', [RECTYPE] = 'CLAIMS.LOC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLOC_CLAIMS_LOC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLOC_LOCATION]', [RECTYPE] = 'LOCATION'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLOC_LOCATION] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLOC_LOCATION_InvalidDataType]', [RECTYPE] = 'LOCATION' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLOC_LOCATION_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLOC_PARTY_INQUIRY]', [RECTYPE] = 'PARTY INQUIRY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLOC_PARTY_INQUIRY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLOC_PARTY_INQUIRY_InvalidDataType]', [RECTYPE] = 'PARTY INQUIRY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLOC_PARTY_INQUIRY_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CLOC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CLT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CLT_VW];
    GO

create view [THB].[CLT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLT_BSE]', [RECTYPE] = 'BSE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLT_BSE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLT_BSE_InvalidDataType]', [RECTYPE] = 'BSE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLT_BSE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLT_DTL]', [RECTYPE] = 'DTL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CLT_DTL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CLT_DTL_InvalidDataType]', [RECTYPE] = 'DTL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CLT_DTL_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CLT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CMS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CMS_VW];
    GO

create view [THB].[CMS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CMS_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CMS_B_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_B_HOLD]', [RECTYPE] = 'B.HOLD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CMS_B_HOLD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_B_HOLD_InvalidDataType]', [RECTYPE] = 'B.HOLD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CMS_B_HOLD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_D]', [RECTYPE] = 'D'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CMS_D] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_D_InvalidDataType]', [RECTYPE] = 'D' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CMS_D_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_D_HOLD]', [RECTYPE] = 'D.HOLD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CMS_D_HOLD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_D_HOLD_InvalidDataType]', [RECTYPE] = 'D.HOLD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CMS_D_HOLD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_H]', [RECTYPE] = 'H'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CMS_H] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_H_InvalidDataType]', [RECTYPE] = 'H' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CMS_H_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_N]', [RECTYPE] = 'N'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CMS_N] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_N_InvalidDataType]', [RECTYPE] = 'N' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CMS_N_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_S]', [RECTYPE] = 'S'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CMS_S] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_S_InvalidDataType]', [RECTYPE] = 'S' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CMS_S_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_T]', [RECTYPE] = 'T'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CMS_T] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_T_InvalidDataType]', [RECTYPE] = 'T' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CMS_T_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_X]', [RECTYPE] = 'X'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CMS_X] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMS_X_InvalidDataType]', [RECTYPE] = 'X' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CMS_X_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CMS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CMT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CMT_VW];
    GO

create view [THB].[CMT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMT_CUST_PROFILE]', [RECTYPE] = 'CUST.PROFILE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CMT_CUST_PROFILE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CMT_CUST_PROFILE_InvalidDataType]', [RECTYPE] = 'CUST.PROFILE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CMT_CUST_PROFILE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CMT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CNT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CNT_VW];
    GO

create view [THB].[CNT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CNT_CNT_BASE]', [RECTYPE] = 'CNT.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CNT_CNT_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CNT_CNT_BASE_InvalidDataType]', [RECTYPE] = 'CNT.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CNT_CNT_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CNT_CNT_RATE]', [RECTYPE] = 'CNT.RATE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CNT_CNT_RATE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CNT_CNT_RATE_InvalidDataType]', [RECTYPE] = 'CNT.RATE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CNT_CNT_RATE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CNT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --COLA_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[COLA_VW];
    GO

create view [THB].[COLA_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLA]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLA_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLA_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'COLA_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --COLC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[COLC_VW];
    GO

create view [THB].[COLC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLC_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLC_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLC_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLC_B_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLC_O]', [RECTYPE] = 'O'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLC_O] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLC_O_InvalidDataType]', [RECTYPE] = 'O' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLC_O_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'COLC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --COLE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[COLE_VW];
    GO

create view [THB].[COLE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLE]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLE_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'COLE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --COLM_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[COLM_VW];
    GO

create view [THB].[COLM_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_COLLAGE]', [RECTYPE] = 'COLLAGE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM_COLLAGE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_COLLAGE_InvalidDataType]', [RECTYPE] = 'COLLAGE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_COLLAGE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_COLLCTR]', [RECTYPE] = 'COLLCTR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM_COLLCTR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_COLLCTR_InvalidDataType]', [RECTYPE] = 'COLLCTR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_COLLCTR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_COLLETR]', [RECTYPE] = 'COLLETR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM_COLLETR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_COLLETR_InvalidDataType]', [RECTYPE] = 'COLLETR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_COLLETR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_COLLETT]', [RECTYPE] = 'COLLETT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM_COLLETT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_COLLETT_InvalidDataType]', [RECTYPE] = 'COLLETT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_COLLETT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_DAGENT]', [RECTYPE] = 'DAGENT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM_DAGENT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_DAGENT_InvalidDataType]', [RECTYPE] = 'DAGENT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_DAGENT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_SELCATG]', [RECTYPE] = 'SELCATG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM_SELCATG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_SELCATG_InvalidDataType]', [RECTYPE] = 'SELCATG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_SELCATG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_USERQRY]', [RECTYPE] = 'USERQRY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM_USERQRY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_USERQRY_InvalidDataType]', [RECTYPE] = 'USERQRY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_USERQRY_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_USERQRYADMIN]', [RECTYPE] = 'USERQRYADMIN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM_USERQRYADMIN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_USERQRYADMIN_InvalidDataType]', [RECTYPE] = 'USERQRYADMIN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_USERQRYADMIN_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_USERQRYJOB]', [RECTYPE] = 'USERQRYJOB'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM_USERQRYJOB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_USERQRYJOB_InvalidDataType]', [RECTYPE] = 'USERQRYJOB' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_USERQRYJOB_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_WORKGRP]', [RECTYPE] = 'WORKGRP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLM_WORKGRP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLM_WORKGRP_InvalidDataType]', [RECTYPE] = 'WORKGRP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLM_WORKGRP_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'COLM_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --COLP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[COLP_VW];
    GO

create view [THB].[COLP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLP]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLP_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLP_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'COLP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --COLS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[COLS_VW];
    GO

create view [THB].[COLS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLS]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLS_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLS_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'COLS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --COLT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[COLT_VW];
    GO

create view [THB].[COLT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'COLT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --COLZ_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[COLZ_VW];
    GO

create view [THB].[COLZ_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLZ_L]', [RECTYPE] = 'L'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLZ_L] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLZ_L_InvalidDataType]', [RECTYPE] = 'L' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLZ_L_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLZ_N]', [RECTYPE] = 'N'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLZ_N] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLZ_N_InvalidDataType]', [RECTYPE] = 'N' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLZ_N_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLZ_S]', [RECTYPE] = 'S'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[COLZ_S] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[COLZ_S_InvalidDataType]', [RECTYPE] = 'S' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[COLZ_S_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'COLZ_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CPP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CPP_VW];
    GO

create view [THB].[CPP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPP_BOND_RPTDT]', [RECTYPE] = 'BOND.RPTDT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPP_BOND_RPTDT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPP_BOND_RPTDT_InvalidDataType]', [RECTYPE] = 'BOND.RPTDT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPP_BOND_RPTDT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPP_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPP_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPP_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPP_C_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPP_S]', [RECTYPE] = 'S'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPP_S] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPP_S_InvalidDataType]', [RECTYPE] = 'S' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPP_S_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CPP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CPR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CPR_VW];
    GO

create view [THB].[CPR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_BASE]', [RECTYPE] = 'CPR.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPR_CPR_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_BASE_InvalidDataType]', [RECTYPE] = 'CPR.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPR_CPR_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_CONTROL]', [RECTYPE] = 'CPR.CONTROL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPR_CPR_CONTROL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_CONTROL_InvalidDataType]', [RECTYPE] = 'CPR.CONTROL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPR_CPR_CONTROL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_PRO_DETAIL]', [RECTYPE] = 'CPR.PRO.DETAIL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPR_CPR_PRO_DETAIL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_PRO_DETAIL_InvalidDataType]', [RECTYPE] = 'CPR.PRO.DETAIL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPR_CPR_PRO_DETAIL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_RED_ACTION_PLAN]', [RECTYPE] = 'CPR.RED.ACTION.PLAN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPR_CPR_RED_ACTION_PLAN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_RED_ACTION_PLAN_InvalidDataType]', [RECTYPE] = 'CPR.RED.ACTION.PLAN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPR_CPR_RED_ACTION_PLAN_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_SECURITY]', [RECTYPE] = 'CPR.SECURITY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPR_CPR_SECURITY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_SECURITY_InvalidDataType]', [RECTYPE] = 'CPR.SECURITY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPR_CPR_SECURITY_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_STATUS]', [RECTYPE] = 'CPR.STATUS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPR_CPR_STATUS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_CPR_STATUS_InvalidDataType]', [RECTYPE] = 'CPR.STATUS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPR_CPR_STATUS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_RED_SUM_COMPANY]', [RECTYPE] = 'RED.SUM.COMPANY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPR_RED_SUM_COMPANY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_RED_SUM_COMPANY_InvalidDataType]', [RECTYPE] = 'RED.SUM.COMPANY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPR_RED_SUM_COMPANY_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_RED_SUM_DISTRICT]', [RECTYPE] = 'RED.SUM.DISTRICT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPR_RED_SUM_DISTRICT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_RED_SUM_DISTRICT_InvalidDataType]', [RECTYPE] = 'RED.SUM.DISTRICT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPR_RED_SUM_DISTRICT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_RED_SUM_DIVISION]', [RECTYPE] = 'RED.SUM.DIVISION'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPR_RED_SUM_DIVISION] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_RED_SUM_DIVISION_InvalidDataType]', [RECTYPE] = 'RED.SUM.DIVISION' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPR_RED_SUM_DIVISION_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_RED_SUM_TERMINAL]', [RECTYPE] = 'RED.SUM.TERMINAL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CPR_RED_SUM_TERMINAL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CPR_RED_SUM_TERMINAL_InvalidDataType]', [RECTYPE] = 'RED.SUM.TERMINAL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CPR_RED_SUM_TERMINAL_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CPR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CRN_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CRN_VW];
    GO

create view [THB].[CRN_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CRN]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CRN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CRN_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CRN_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CRN_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CRNPDB_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CRNPDB_VW];
    GO

create view [THB].[CRNPDB_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CRNPDB_CRNPDB]', [RECTYPE] = 'CRNPDB'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CRNPDB_CRNPDB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CRNPDB_CRNPDB_InvalidDataType]', [RECTYPE] = 'CRNPDB' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CRNPDB_CRNPDB_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CRNPDB_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CRNPRE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CRNPRE_VW];
    GO

create view [THB].[CRNPRE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CRNPRE]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CRNPRE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CRNPRE_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CRNPRE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CRNPRE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CRN_HIST_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CRN_HIST_VW];
    GO

create view [THB].[CRN_HIST_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CRN_HIST]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[CRN_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CRN_HIST_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[CRN_HIST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CRN_HIST_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CSC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CSC_VW];
    GO

create view [THB].[CSC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_BOL_SPCL_INST]', [RECTYPE] = 'BOL.SPCL.INST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSC_BOL_SPCL_INST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_BOL_SPCL_INST_InvalidDataType]', [RECTYPE] = 'BOL.SPCL.INST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSC_BOL_SPCL_INST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_PRICE_AUDIT]', [RECTYPE] = 'PRICE.AUDIT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSC_PRICE_AUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_PRICE_AUDIT_InvalidDataType]', [RECTYPE] = 'PRICE.AUDIT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSC_PRICE_AUDIT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_QUOTE_AUDIT]', [RECTYPE] = 'QUOTE.AUDIT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSC_QUOTE_AUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_QUOTE_AUDIT_InvalidDataType]', [RECTYPE] = 'QUOTE.AUDIT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSC_QUOTE_AUDIT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_REFNO]', [RECTYPE] = 'REFNO'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSC_REFNO] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_REFNO_InvalidDataType]', [RECTYPE] = 'REFNO' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSC_REFNO_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_REMARK]', [RECTYPE] = 'REMARK'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSC_REMARK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_REMARK_InvalidDataType]', [RECTYPE] = 'REMARK' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSC_REMARK_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_REPORT_AUDIT]', [RECTYPE] = 'REPORT.AUDIT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSC_REPORT_AUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSC_REPORT_AUDIT_InvalidDataType]', [RECTYPE] = 'REPORT.AUDIT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSC_REPORT_AUDIT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CSC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CSCM_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CSCM_VW];
    GO

create view [THB].[CSCM_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCM]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSCM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCM_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSCM_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCM_QUOTE]', [RECTYPE] = 'QUOTE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSCM_QUOTE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCM_QUOTE_InvalidDataType]', [RECTYPE] = 'QUOTE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSCM_QUOTE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CSCM_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CSCQ_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CSCQ_VW];
    GO

create view [THB].[CSCQ_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_API]', [RECTYPE] = 'API'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSCQ_API] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_API_InvalidDataType]', [RECTYPE] = 'API' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSCQ_API_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_APIPQ]', [RECTYPE] = 'APIPQ'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSCQ_APIPQ] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_APIPQ_InvalidDataType]', [RECTYPE] = 'APIPQ' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSCQ_APIPQ_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_CSC_CONTROL]', [RECTYPE] = 'CSC.CONTROL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSCQ_CSC_CONTROL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_CSC_CONTROL_InvalidDataType]', [RECTYPE] = 'CSC.CONTROL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSCQ_CSC_CONTROL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSCQ] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSCQ_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_QUOTE]', [RECTYPE] = 'QUOTE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSCQ_QUOTE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_QUOTE_InvalidDataType]', [RECTYPE] = 'QUOTE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSCQ_QUOTE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_RATE]', [RECTYPE] = 'RATE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSCQ_RATE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCQ_RATE_InvalidDataType]', [RECTYPE] = 'RATE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSCQ_RATE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CSCQ_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CSCX_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CSCX_VW];
    GO

create view [THB].[CSCX_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCX_QUOTE]', [RECTYPE] = 'QUOTE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSCX_QUOTE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSCX_QUOTE_InvalidDataType]', [RECTYPE] = 'QUOTE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSCX_QUOTE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CSCX_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CSR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CSR_VW];
    GO

create view [THB].[CSR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSR_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSR_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSR_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSR_C_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSR_J]', [RECTYPE] = 'J'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSR_J] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSR_J_InvalidDataType]', [RECTYPE] = 'J' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSR_J_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSR]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSR_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSR_P]', [RECTYPE] = 'P'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSR_P] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSR_P_InvalidDataType]', [RECTYPE] = 'P' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSR_P_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSR_R]', [RECTYPE] = 'R'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSR_R] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSR_R_InvalidDataType]', [RECTYPE] = 'R' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSR_R_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CSR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CSVC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CSVC_VW];
    GO

create view [THB].[CSVC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSVC_EXPRTNG]', [RECTYPE] = 'EXPRTNG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSVC_EXPRTNG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSVC_EXPRTNG_InvalidDataType]', [RECTYPE] = 'EXPRTNG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSVC_EXPRTNG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSVC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CSVC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CSVC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CSVC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CSVC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CTC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CTC_VW];
    GO

create view [THB].[CTC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CTC_ANIONLY]', [RECTYPE] = 'ANIONLY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CTC_ANIONLY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CTC_ANIONLY_InvalidDataType]', [RECTYPE] = 'ANIONLY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CTC_ANIONLY_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CTC_CONTACT]', [RECTYPE] = 'CONTACT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CTC_CONTACT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CTC_CONTACT_InvalidDataType]', [RECTYPE] = 'CONTACT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CTC_CONTACT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CTC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --CUR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[CUR_VW];
    GO

create view [THB].[CUR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CUR_CUR_BASE]', [RECTYPE] = 'CUR.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CUR_CUR_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CUR_CUR_BASE_InvalidDataType]', [RECTYPE] = 'CUR.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CUR_CUR_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CUR_CUR_HIST]', [RECTYPE] = 'CUR.HIST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[CUR_CUR_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[CUR_CUR_HIST_InvalidDataType]', [RECTYPE] = 'CUR.HIST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[CUR_CUR_HIST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'CUR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --DXL_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[DXL_VW];
    GO

create view [THB].[DXL_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[DXL_OP050_BASE]', [RECTYPE] = 'OP050.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[DXL_OP050_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[DXL_OP050_BASE_InvalidDataType]', [RECTYPE] = 'OP050.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[DXL_OP050_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[DXL_OP050_NBR]', [RECTYPE] = 'OP050.NBR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[DXL_OP050_NBR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[DXL_OP050_NBR_InvalidDataType]', [RECTYPE] = 'OP050.NBR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[DXL_OP050_NBR_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'DXL_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ECM_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ECM_VW];
    GO

create view [THB].[ECM_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECM_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECM_B_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_H]', [RECTYPE] = 'H'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECM_H] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_H_InvalidDataType]', [RECTYPE] = 'H' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECM_H_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_HT]', [RECTYPE] = 'HT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECM_HT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_HT_InvalidDataType]', [RECTYPE] = 'HT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECM_HT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_N]', [RECTYPE] = 'N'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECM_N] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_N_InvalidDataType]', [RECTYPE] = 'N' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECM_N_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_PR]', [RECTYPE] = 'PR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECM_PR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_PR_InvalidDataType]', [RECTYPE] = 'PR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECM_PR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_T]', [RECTYPE] = 'T'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECM_T] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECM_T_InvalidDataType]', [RECTYPE] = 'T' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECM_T_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ECM_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ECP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ECP_VW];
    GO

create view [THB].[ECP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_BASE]', [RECTYPE] = 'ECP.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECP_ECP_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_BASE_InvalidDataType]', [RECTYPE] = 'ECP.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECP_ECP_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_BUS_LINK]', [RECTYPE] = 'ECP.BUS.LINK'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECP_ECP_BUS_LINK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_BUS_LINK_InvalidDataType]', [RECTYPE] = 'ECP.BUS.LINK' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECP_ECP_BUS_LINK_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_BUS_NOTE_LINK]', [RECTYPE] = 'ECP.BUS.NOTE.LINK'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECP_ECP_BUS_NOTE_LINK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_BUS_NOTE_LINK_InvalidDataType]', [RECTYPE] = 'ECP.BUS.NOTE.LINK' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECP_ECP_BUS_NOTE_LINK_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_CONTRACT]', [RECTYPE] = 'ECP.CONTRACT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECP_ECP_CONTRACT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_CONTRACT_InvalidDataType]', [RECTYPE] = 'ECP.CONTRACT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECP_ECP_CONTRACT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_DETAIL]', [RECTYPE] = 'ECP.DETAIL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECP_ECP_DETAIL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_DETAIL_InvalidDataType]', [RECTYPE] = 'ECP.DETAIL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECP_ECP_DETAIL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_NOTE]', [RECTYPE] = 'ECP.NOTE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECP_ECP_NOTE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_NOTE_InvalidDataType]', [RECTYPE] = 'ECP.NOTE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECP_ECP_NOTE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_SUB_TYPE]', [RECTYPE] = 'ECP.SUB.TYPE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECP_ECP_SUB_TYPE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_SUB_TYPE_InvalidDataType]', [RECTYPE] = 'ECP.SUB.TYPE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECP_ECP_SUB_TYPE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_TFA_LINK]', [RECTYPE] = 'ECP.TFA.LINK'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECP_ECP_TFA_LINK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_TFA_LINK_InvalidDataType]', [RECTYPE] = 'ECP.TFA.LINK' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECP_ECP_TFA_LINK_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_TYPE]', [RECTYPE] = 'ECP.TYPE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECP_ECP_TYPE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECP_ECP_TYPE_InvalidDataType]', [RECTYPE] = 'ECP.TYPE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECP_ECP_TYPE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ECP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ECPAUDIT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ECPAUDIT_VW];
    GO

create view [THB].[ECPAUDIT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECPAUDIT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ECPAUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ECPAUDIT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ECPAUDIT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ECPAUDIT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --EDDBL_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[EDDBL_VW];
    GO

create view [THB].[EDDBL_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDBL_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EDDBL_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDBL_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EDDBL_B_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'EDDBL_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --EDDBM_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[EDDBM_VW];
    GO

create view [THB].[EDDBM_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDBM_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EDDBM_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDBM_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EDDBM_B_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'EDDBM_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --EDDBS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[EDDBS_VW];
    GO

create view [THB].[EDDBS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDBS_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EDDBS_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDBS_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EDDBS_B_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'EDDBS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --EDDH_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[EDDH_VW];
    GO

create view [THB].[EDDH_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDH_A]', [RECTYPE] = 'A'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EDDH_A] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDH_A_InvalidDataType]', [RECTYPE] = 'A' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EDDH_A_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDH_LR]', [RECTYPE] = 'LR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EDDH_LR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDH_LR_InvalidDataType]', [RECTYPE] = 'LR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EDDH_LR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDH_S]', [RECTYPE] = 'S'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EDDH_S] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDH_S_InvalidDataType]', [RECTYPE] = 'S' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EDDH_S_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'EDDH_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --EDDT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[EDDT_VW];
    GO

create view [THB].[EDDT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDT_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EDDT_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDT_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EDDT_C_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDT_P]', [RECTYPE] = 'P'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EDDT_P] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDT_P_InvalidDataType]', [RECTYPE] = 'P' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EDDT_P_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDT_T]', [RECTYPE] = 'T'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EDDT_T] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EDDT_T_InvalidDataType]', [RECTYPE] = 'T' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EDDT_T_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'EDDT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --EMP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[EMP_VW];
    GO

create view [THB].[EMP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EMP_EMP_BASE]', [RECTYPE] = 'EMP.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EMP_EMP_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EMP_EMP_BASE_InvalidDataType]', [RECTYPE] = 'EMP.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EMP_EMP_BASE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'EMP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --EMPSRVC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[EMPSRVC_VW];
    GO

create view [THB].[EMPSRVC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EMPSRVC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EMPSRVC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EMPSRVC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EMPSRVC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'EMPSRVC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --EQP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[EQP_VW];
    GO

create view [THB].[EQP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EQP_EQP_BASE]', [RECTYPE] = 'EQP.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EQP_EQP_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EQP_EQP_BASE_InvalidDataType]', [RECTYPE] = 'EQP.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EQP_EQP_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EQP_EQP_EXCHANGE]', [RECTYPE] = 'EQP.EXCHANGE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EQP_EQP_EXCHANGE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EQP_EQP_EXCHANGE_InvalidDataType]', [RECTYPE] = 'EQP.EXCHANGE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EQP_EQP_EXCHANGE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EQP_EQP_SPOT_DTL]', [RECTYPE] = 'EQP.SPOT.DTL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EQP_EQP_SPOT_DTL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EQP_EQP_SPOT_DTL_InvalidDataType]', [RECTYPE] = 'EQP.SPOT.DTL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EQP_EQP_SPOT_DTL_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'EQP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --EQPSTAT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[EQPSTAT_VW];
    GO

create view [THB].[EQPSTAT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EQPSTAT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[EQPSTAT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[EQPSTAT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[EQPSTAT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'EQPSTAT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ESO_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ESO_VW];
    GO

create view [THB].[ESO_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ESO]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ESO] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ESO_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ESO_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ESO_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ESRR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ESRR_VW];
    GO

create view [THB].[ESRR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ESRR_TFD_ESRC]', [RECTYPE] = 'TFD.ESRC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ESRR_TFD_ESRC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ESRR_TFD_ESRC_InvalidDataType]', [RECTYPE] = 'TFD.ESRC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ESRR_TFD_ESRC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ESRR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ESRZ_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ESRZ_VW];
    GO

create view [THB].[ESRZ_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ESRZ_TFD_ESRT]', [RECTYPE] = 'TFD.ESRT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ESRZ_TFD_ESRT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ESRZ_TFD_ESRT_InvalidDataType]', [RECTYPE] = 'TFD.ESRT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ESRZ_TFD_ESRT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ESRZ_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --FAC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[FAC_VW];
    GO

create view [THB].[FAC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_F]', [RECTYPE] = 'F'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[FAC_F] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_F_InvalidDataType]', [RECTYPE] = 'F' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[FAC_F_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_H]', [RECTYPE] = 'H'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[FAC_H] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_H_InvalidDataType]', [RECTYPE] = 'H' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[FAC_H_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_M]', [RECTYPE] = 'M'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[FAC_M] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_M_InvalidDataType]', [RECTYPE] = 'M' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[FAC_M_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_N]', [RECTYPE] = 'N'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[FAC_N] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_N_InvalidDataType]', [RECTYPE] = 'N' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[FAC_N_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_R]', [RECTYPE] = 'R'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[FAC_R] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_R_InvalidDataType]', [RECTYPE] = 'R' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[FAC_R_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_T]', [RECTYPE] = 'T'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[FAC_T] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAC_T_InvalidDataType]', [RECTYPE] = 'T' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[FAC_T_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'FAC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --FAX_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[FAX_VW];
    GO

create view [THB].[FAX_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAX]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[FAX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FAX_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[FAX_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'FAX_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --FTD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[FTD_VW];
    GO

create view [THB].[FTD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FTD]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[FTD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FTD_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[FTD_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'FTD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --FTDAUDIT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[FTDAUDIT_VW];
    GO

create view [THB].[FTDAUDIT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FTDAUDIT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[FTDAUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[FTDAUDIT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[FTDAUDIT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'FTDAUDIT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --GAP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[GAP_VW];
    GO

create view [THB].[GAP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GAP]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[GAP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GAP_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[GAP_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'GAP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --GBL_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[GBL_VW];
    GO

create view [THB].[GBL_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GBL_GBL_BASE]', [RECTYPE] = 'GBL.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[GBL_GBL_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GBL_GBL_BASE_InvalidDataType]', [RECTYPE] = 'GBL.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[GBL_GBL_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GBL_GBL_CONTROL]', [RECTYPE] = 'GBL.CONTROL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[GBL_GBL_CONTROL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GBL_GBL_CONTROL_InvalidDataType]', [RECTYPE] = 'GBL.CONTROL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[GBL_GBL_CONTROL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GBL_GBL_ERROR]', [RECTYPE] = 'GBL.ERROR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[GBL_GBL_ERROR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GBL_GBL_ERROR_InvalidDataType]', [RECTYPE] = 'GBL.ERROR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[GBL_GBL_ERROR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GBL_GBL_VCHR]', [RECTYPE] = 'GBL.VCHR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[GBL_GBL_VCHR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GBL_GBL_VCHR_InvalidDataType]', [RECTYPE] = 'GBL.VCHR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[GBL_GBL_VCHR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GBL_GBL_VOID]', [RECTYPE] = 'GBL.VOID'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[GBL_GBL_VOID] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GBL_GBL_VOID_InvalidDataType]', [RECTYPE] = 'GBL.VOID' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[GBL_GBL_VOID_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'GBL_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --GENCAF_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[GENCAF_VW];
    GO

create view [THB].[GENCAF_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GENCAF]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[GENCAF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GENCAF_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[GENCAF_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'GENCAF_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --GIF_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[GIF_VW];
    GO

create view [THB].[GIF_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GIF]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[GIF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GIF_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[GIF_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'GIF_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --GSC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[GSC_VW];
    GO

create view [THB].[GSC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GSC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[GSC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GSC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[GSC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'GSC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --GSM_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[GSM_VW];
    GO

create view [THB].[GSM_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GSM]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[GSM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[GSM_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[GSM_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'GSM_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --HLP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[HLP_VW];
    GO

create view [THB].[HLP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HLP_HLP_BASE]', [RECTYPE] = 'HLP.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[HLP_HLP_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HLP_HLP_BASE_InvalidDataType]', [RECTYPE] = 'HLP.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[HLP_HLP_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HLP_HLP_INFO]', [RECTYPE] = 'HLP.INFO'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[HLP_HLP_INFO] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HLP_HLP_INFO_InvalidDataType]', [RECTYPE] = 'HLP.INFO' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[HLP_HLP_INFO_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'HLP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --HMD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[HMD_VW];
    GO

create view [THB].[HMD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HMD_HMD_DATA]', [RECTYPE] = 'HMD.DATA'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[HMD_HMD_DATA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HMD_HMD_DATA_InvalidDataType]', [RECTYPE] = 'HMD.DATA' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[HMD_HMD_DATA_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HMD_USR_DATA]', [RECTYPE] = 'USR.DATA'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[HMD_USR_DATA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HMD_USR_DATA_InvalidDataType]', [RECTYPE] = 'USR.DATA' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[HMD_USR_DATA_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'HMD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --HRC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[HRC_VW];
    GO

create view [THB].[HRC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HRC_HRC_BASE]', [RECTYPE] = 'HRC.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[HRC_HRC_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HRC_HRC_BASE_InvalidDataType]', [RECTYPE] = 'HRC.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[HRC_HRC_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HRC_HRC_PROCESS]', [RECTYPE] = 'HRC.PROCESS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[HRC_HRC_PROCESS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HRC_HRC_PROCESS_InvalidDataType]', [RECTYPE] = 'HRC.PROCESS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[HRC_HRC_PROCESS_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'HRC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --HRCAUDIT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[HRCAUDIT_VW];
    GO

create view [THB].[HRCAUDIT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HRCAUDIT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[HRCAUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[HRCAUDIT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[HRCAUDIT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'HRCAUDIT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --IBF_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[IBF_VW];
    GO

create view [THB].[IBF_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IBF_CARRIER]', [RECTYPE] = 'CARRIER'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[IBF_CARRIER] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IBF_CARRIER_InvalidDataType]', [RECTYPE] = 'CARRIER' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[IBF_CARRIER_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IBF_FACILITY]', [RECTYPE] = 'FACILITY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[IBF_FACILITY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IBF_FACILITY_InvalidDataType]', [RECTYPE] = 'FACILITY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[IBF_FACILITY_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'IBF_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --IISX_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[IISX_VW];
    GO

create view [THB].[IISX_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IISX_BUS_SHPID]', [RECTYPE] = 'BUS.SHPID'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[IISX_BUS_SHPID] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IISX_BUS_SHPID_InvalidDataType]', [RECTYPE] = 'BUS.SHPID' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[IISX_BUS_SHPID_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IISX_BUS_SHPID_PU]', [RECTYPE] = 'BUS.SHPID.PU'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[IISX_BUS_SHPID_PU] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IISX_BUS_SHPID_PU_InvalidDataType]', [RECTYPE] = 'BUS.SHPID.PU' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[IISX_BUS_SHPID_PU_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'IISX_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --IMGX_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[IMGX_VW];
    GO

create view [THB].[IMGX_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IMGX]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[IMGX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IMGX_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[IMGX_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'IMGX_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --IML_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[IML_VW];
    GO

create view [THB].[IML_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IML_IML_BOL]', [RECTYPE] = 'IML.BOL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[IML_IML_BOL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IML_IML_BOL_InvalidDataType]', [RECTYPE] = 'IML.BOL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[IML_IML_BOL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IML]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[IML] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IML_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[IML_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'IML_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --INV_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[INV_VW];
    GO

create view [THB].[INV_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INV]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INV] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INV_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INV_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'INV_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --INVAUD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[INVAUD_VW];
    GO

create view [THB].[INVAUD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVAUD_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVAUD_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVAUD_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVAUD_C_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVAUD]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVAUD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVAUD_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVAUD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVAUD_P]', [RECTYPE] = 'P'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVAUD_P] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVAUD_P_InvalidDataType]', [RECTYPE] = 'P' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVAUD_P_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVAUD_T]', [RECTYPE] = 'T'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVAUD_T] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVAUD_T_InvalidDataType]', [RECTYPE] = 'T' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVAUD_T_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'INVAUD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --INVCAF_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[INVCAF_VW];
    GO

create view [THB].[INVCAF_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVCAF]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVCAF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVCAF_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVCAF_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'INVCAF_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --INVCMT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[INVCMT_VW];
    GO

create view [THB].[INVCMT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVCMT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVCMT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVCMT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVCMT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'INVCMT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --INVR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[INVR_VW];
    GO

create view [THB].[INVR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVR_EDI]', [RECTYPE] = 'EDI'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVR_EDI] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVR_EDI_InvalidDataType]', [RECTYPE] = 'EDI' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVR_EDI_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVR_FAX]', [RECTYPE] = 'FAX'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVR_FAX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVR_FAX_InvalidDataType]', [RECTYPE] = 'FAX' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVR_FAX_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVR_FTP]', [RECTYPE] = 'FTP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVR_FTP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVR_FTP_InvalidDataType]', [RECTYPE] = 'FTP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVR_FTP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVR_INVOICE]', [RECTYPE] = 'INVOICE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVR_INVOICE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVR_INVOICE_InvalidDataType]', [RECTYPE] = 'INVOICE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVR_INVOICE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVR_WEB]', [RECTYPE] = 'WEB'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[INVR_WEB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[INVR_WEB_InvalidDataType]', [RECTYPE] = 'WEB' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[INVR_WEB_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'INVR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ISD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ISD_VW];
    GO

create view [THB].[ISD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ISD]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ISD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ISD_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ISD_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ISD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ITC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ITC_VW];
    GO

create view [THB].[ITC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ITC_BUS_INTERFACE]', [RECTYPE] = 'BUS.INTERFACE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ITC_BUS_INTERFACE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ITC_BUS_INTERFACE_InvalidDataType]', [RECTYPE] = 'BUS.INTERFACE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ITC_BUS_INTERFACE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ITC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --IVRXFR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[IVRXFR_VW];
    GO

create view [THB].[IVRXFR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IVRXFR_TRANSFER]', [RECTYPE] = 'TRANSFER'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[IVRXFR_TRANSFER] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[IVRXFR_TRANSFER_InvalidDataType]', [RECTYPE] = 'TRANSFER' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[IVRXFR_TRANSFER_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'IVRXFR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --LGL_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[LGL_VW];
    GO

create view [THB].[LGL_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LGL_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LGL_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LGL_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LGL_C_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LGL_P]', [RECTYPE] = 'P'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LGL_P] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LGL_P_InvalidDataType]', [RECTYPE] = 'P' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LGL_P_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'LGL_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --LHC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[LHC_VW];
    GO

create view [THB].[LHC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_BRKR]', [RECTYPE] = 'BRKR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LHC_BRKR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_BRKR_InvalidDataType]', [RECTYPE] = 'BRKR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LHC_BRKR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_BRKR_MC]', [RECTYPE] = 'BRKR.MC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LHC_BRKR_MC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_BRKR_MC_InvalidDataType]', [RECTYPE] = 'BRKR.MC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LHC_BRKR_MC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_CPM]', [RECTYPE] = 'CPM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LHC_CPM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_CPM_InvalidDataType]', [RECTYPE] = 'CPM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LHC_CPM_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_EXCL]', [RECTYPE] = 'EXCL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LHC_EXCL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_EXCL_InvalidDataType]', [RECTYPE] = 'EXCL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LHC_EXCL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_GDE]', [RECTYPE] = 'GDE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LHC_GDE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_GDE_InvalidDataType]', [RECTYPE] = 'GDE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LHC_GDE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_OVR]', [RECTYPE] = 'OVR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LHC_OVR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_OVR_InvalidDataType]', [RECTYPE] = 'OVR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LHC_OVR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_PUL]', [RECTYPE] = 'PUL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LHC_PUL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_PUL_InvalidDataType]', [RECTYPE] = 'PUL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LHC_PUL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_TRP]', [RECTYPE] = 'TRP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LHC_TRP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_TRP_InvalidDataType]', [RECTYPE] = 'TRP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LHC_TRP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_VLV]', [RECTYPE] = 'VLV'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LHC_VLV] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LHC_VLV_InvalidDataType]', [RECTYPE] = 'VLV' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LHC_VLV_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'LHC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --LNE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[LNE_VW];
    GO

create view [THB].[LNE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LNE]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LNE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LNE_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LNE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'LNE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --LOADCTL_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[LOADCTL_VW];
    GO

create view [THB].[LOADCTL_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_10SLASH20_QUOTE]', [RECTYPE] = '10/20 QUOTE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_10SLASH20_QUOTE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_10SLASH20_QUOTE_InvalidDataType]', [RECTYPE] = '10/20 QUOTE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_10SLASH20_QUOTE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_BLUE_RIBBON_QUOTE]', [RECTYPE] = 'BLUE RIBBON QUOTE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_BLUE_RIBBON_QUOTE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_BLUE_RIBBON_QUOTE_InvalidDataType]', [RECTYPE] = 'BLUE RIBBON QUOTE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_BLUE_RIBBON_QUOTE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_C_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_CCSA]', [RECTYPE] = 'CCSA'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_CCSA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_CCSA_InvalidDataType]', [RECTYPE] = 'CCSA' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_CCSA_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_CCSW]', [RECTYPE] = 'CCSW'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_CCSW] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_CCSW_InvalidDataType]', [RECTYPE] = 'CCSW' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_CCSW_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_CLF]', [RECTYPE] = 'CLF'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_CLF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_CLF_InvalidDataType]', [RECTYPE] = 'CLF' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_CLF_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_CSH]', [RECTYPE] = 'CSH'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_CSH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_CSH_InvalidDataType]', [RECTYPE] = 'CSH' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_CSH_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_DUMP]', [RECTYPE] = 'DUMP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_DUMP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_DUMP_InvalidDataType]', [RECTYPE] = 'DUMP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_DUMP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_LINK]', [RECTYPE] = 'LINK'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_LINK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_LINK_InvalidDataType]', [RECTYPE] = 'LINK' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_LINK_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_LOADCTL]', [RECTYPE] = 'LOADCTL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_LOADCTL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_LOADCTL_InvalidDataType]', [RECTYPE] = 'LOADCTL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_LOADCTL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_ODR]', [RECTYPE] = 'ODR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_ODR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_ODR_InvalidDataType]', [RECTYPE] = 'ODR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_ODR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_ODRT]', [RECTYPE] = 'ODRT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_ODRT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_ODRT_InvalidDataType]', [RECTYPE] = 'ODRT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_ODRT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_PMA]', [RECTYPE] = 'PMA'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_PMA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_PMA_InvalidDataType]', [RECTYPE] = 'PMA' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_PMA_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_RCS]', [RECTYPE] = 'RCS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_RCS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_RCS_InvalidDataType]', [RECTYPE] = 'RCS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_RCS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_REV_CLAIM]', [RECTYPE] = 'REV.CLAIM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_REV_CLAIM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_REV_CLAIM_InvalidDataType]', [RECTYPE] = 'REV.CLAIM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_REV_CLAIM_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_TFQ_INTL]', [RECTYPE] = 'TFQ.INTL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_TFQ_INTL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_TFQ_INTL_InvalidDataType]', [RECTYPE] = 'TFQ.INTL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_TFQ_INTL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_UNIFIED]', [RECTYPE] = 'UNIFIED'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[LOADCTL_UNIFIED] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[LOADCTL_UNIFIED_InvalidDataType]', [RECTYPE] = 'UNIFIED' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[LOADCTL_UNIFIED_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'LOADCTL_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --MLEM_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[MLEM_VW];
    GO

create view [THB].[MLEM_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[MLEM_MILEAGE]', [RECTYPE] = 'MILEAGE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[MLEM_MILEAGE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[MLEM_MILEAGE_InvalidDataType]', [RECTYPE] = 'MILEAGE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[MLEM_MILEAGE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'MLEM_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --MLEP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[MLEP_VW];
    GO

create view [THB].[MLEP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[MLEP_PCMILER]', [RECTYPE] = 'PCMILER'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[MLEP_PCMILER] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[MLEP_PCMILER_InvalidDataType]', [RECTYPE] = 'PCMILER' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[MLEP_PCMILER_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'MLEP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --MNFST_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[MNFST_VW];
    GO

create view [THB].[MNFST_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[MNFST]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[MNFST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[MNFST_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[MNFST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'MNFST_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --MSG_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[MSG_VW];
    GO

create view [THB].[MSG_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[MSG]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[MSG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[MSG_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[MSG_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'MSG_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --NAD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[NAD_VW];
    GO

create view [THB].[NAD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[NAD_CSC]', [RECTYPE] = 'CSC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[NAD_CSC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[NAD_CSC_InvalidDataType]', [RECTYPE] = 'CSC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[NAD_CSC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[NAD]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[NAD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[NAD_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[NAD_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'NAD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ORI_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ORI_VW];
    GO

create view [THB].[ORI_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ORI]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ORI] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ORI_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ORI_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ORI_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ORZNEWS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ORZNEWS_VW];
    GO

create view [THB].[ORZNEWS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ORZNEWS_ORZ_NEWS]', [RECTYPE] = 'ORZ.NEWS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ORZNEWS_ORZ_NEWS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ORZNEWS_ORZ_NEWS_InvalidDataType]', [RECTYPE] = 'ORZ.NEWS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ORZNEWS_ORZ_NEWS_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ORZNEWS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --OSD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[OSD_VW];
    GO

create view [THB].[OSD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSD_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSD_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSD_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSD_C_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'OSD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --OSDA_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[OSDA_VW];
    GO

create view [THB].[OSDA_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDA_EX_WORK]', [RECTYPE] = 'EX.WORK'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDA_EX_WORK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDA_EX_WORK_InvalidDataType]', [RECTYPE] = 'EX.WORK' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDA_EX_WORK_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'OSDA_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --OSDD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[OSDD_VW];
    GO

create view [THB].[OSDD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDD_EX_BASE]', [RECTYPE] = 'EX.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDD_EX_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDD_EX_BASE_InvalidDataType]', [RECTYPE] = 'EX.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDD_EX_BASE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'OSDD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --OSDE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[OSDE_VW];
    GO

create view [THB].[OSDE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDE_EX_BASE]', [RECTYPE] = 'EX.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDE_EX_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDE_EX_BASE_InvalidDataType]', [RECTYPE] = 'EX.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDE_EX_BASE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'OSDE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --OSDM_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[OSDM_VW];
    GO

create view [THB].[OSDM_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_ADDR_LIST]', [RECTYPE] = 'ADDR.LIST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_ADDR_LIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_ADDR_LIST_InvalidDataType]', [RECTYPE] = 'ADDR.LIST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_ADDR_LIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_CLM_CAT]', [RECTYPE] = 'CLM.CAT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_CLM_CAT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_CLM_CAT_InvalidDataType]', [RECTYPE] = 'CLM.CAT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_CLM_CAT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_DISPO_CD]', [RECTYPE] = 'DISPO.CD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_DISPO_CD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_DISPO_CD_InvalidDataType]', [RECTYPE] = 'DISPO.CD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_DISPO_CD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_EX_AGE]', [RECTYPE] = 'EX.AGE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_EX_AGE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_EX_AGE_InvalidDataType]', [RECTYPE] = 'EX.AGE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_EX_AGE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_ID_BASE]', [RECTYPE] = 'ID.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_ID_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_ID_BASE_InvalidDataType]', [RECTYPE] = 'ID.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_ID_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_ID_WRK]', [RECTYPE] = 'ID.WRK'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_ID_WRK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_ID_WRK_InvalidDataType]', [RECTYPE] = 'ID.WRK' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_ID_WRK_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_NOTE_AGE]', [RECTYPE] = 'NOTE.AGE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_NOTE_AGE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_NOTE_AGE_InvalidDataType]', [RECTYPE] = 'NOTE.AGE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_NOTE_AGE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_NOTE_FMT]', [RECTYPE] = 'NOTE.FMT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_NOTE_FMT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_NOTE_FMT_InvalidDataType]', [RECTYPE] = 'NOTE.FMT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_NOTE_FMT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_OSD_CAT]', [RECTYPE] = 'OSD.CAT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_OSD_CAT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_OSD_CAT_InvalidDataType]', [RECTYPE] = 'OSD.CAT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_OSD_CAT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_OSD_CAT_HIST]', [RECTYPE] = 'OSD.CAT.HIST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_OSD_CAT_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_OSD_CAT_HIST_InvalidDataType]', [RECTYPE] = 'OSD.CAT.HIST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_OSD_CAT_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_OVG_NBR]', [RECTYPE] = 'OVG.NBR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_OVG_NBR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_OVG_NBR_InvalidDataType]', [RECTYPE] = 'OVG.NBR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_OVG_NBR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_SLC_CONTACT]', [RECTYPE] = 'SLC.CONTACT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_SLC_CONTACT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_SLC_CONTACT_InvalidDataType]', [RECTYPE] = 'SLC.CONTACT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_SLC_CONTACT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_SLC_ORZ_EMAIL]', [RECTYPE] = 'SLC.ORZ.EMAIL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_SLC_ORZ_EMAIL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_SLC_ORZ_EMAIL_InvalidDataType]', [RECTYPE] = 'SLC.ORZ.EMAIL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_SLC_ORZ_EMAIL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_THLD]', [RECTYPE] = 'THLD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_THLD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_THLD_InvalidDataType]', [RECTYPE] = 'THLD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_THLD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_WRKGRP]', [RECTYPE] = 'WRKGRP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDM_WRKGRP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDM_WRKGRP_InvalidDataType]', [RECTYPE] = 'WRKGRP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDM_WRKGRP_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'OSDM_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --OSDN_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[OSDN_VW];
    GO

create view [THB].[OSDN_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_AUD]', [RECTYPE] = 'AUD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDN_AUD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_AUD_InvalidDataType]', [RECTYPE] = 'AUD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDN_AUD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_CALL]', [RECTYPE] = 'CALL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDN_CALL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_CALL_InvalidDataType]', [RECTYPE] = 'CALL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDN_CALL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_EMAIL]', [RECTYPE] = 'EMAIL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDN_EMAIL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_EMAIL_InvalidDataType]', [RECTYPE] = 'EMAIL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDN_EMAIL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_FAX]', [RECTYPE] = 'FAX'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDN_FAX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_FAX_InvalidDataType]', [RECTYPE] = 'FAX' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDN_FAX_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_LTR]', [RECTYPE] = 'LTR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDN_LTR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_LTR_InvalidDataType]', [RECTYPE] = 'LTR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDN_LTR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_NOTE]', [RECTYPE] = 'NOTE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDN_NOTE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_NOTE_InvalidDataType]', [RECTYPE] = 'NOTE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDN_NOTE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_REPLY]', [RECTYPE] = 'REPLY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDN_REPLY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_REPLY_InvalidDataType]', [RECTYPE] = 'REPLY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDN_REPLY_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_UPD]', [RECTYPE] = 'UPD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDN_UPD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDN_UPD_InvalidDataType]', [RECTYPE] = 'UPD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDN_UPD_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'OSDN_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --OSDR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[OSDR_VW];
    GO

create view [THB].[OSDR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_BUS]', [RECTYPE] = 'EX.BUS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDR_EX_BUS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_BUS_InvalidDataType]', [RECTYPE] = 'EX.BUS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDR_EX_BUS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_DP]', [RECTYPE] = 'EX.DP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDR_EX_DP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_DP_InvalidDataType]', [RECTYPE] = 'EX.DP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDR_EX_DP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_HAZ]', [RECTYPE] = 'EX.HAZ'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDR_EX_HAZ] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_HAZ_InvalidDataType]', [RECTYPE] = 'EX.HAZ' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDR_EX_HAZ_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_MATCH]', [RECTYPE] = 'EX.MATCH'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDR_EX_MATCH] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_MATCH_InvalidDataType]', [RECTYPE] = 'EX.MATCH' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDR_EX_MATCH_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_RLTD]', [RECTYPE] = 'EX.RLTD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDR_EX_RLTD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_RLTD_InvalidDataType]', [RECTYPE] = 'EX.RLTD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDR_EX_RLTD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_SLI]', [RECTYPE] = 'EX.SLI'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDR_EX_SLI] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_SLI_InvalidDataType]', [RECTYPE] = 'EX.SLI' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDR_EX_SLI_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_TRACE]', [RECTYPE] = 'EX.TRACE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDR_EX_TRACE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_EX_TRACE_InvalidDataType]', [RECTYPE] = 'EX.TRACE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDR_EX_TRACE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_NEW_OVER]', [RECTYPE] = 'NEW.OVER'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDR_NEW_OVER] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_NEW_OVER_InvalidDataType]', [RECTYPE] = 'NEW.OVER' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDR_NEW_OVER_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_NEW_REF]', [RECTYPE] = 'NEW.REF'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDR_NEW_REF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_NEW_REF_InvalidDataType]', [RECTYPE] = 'NEW.REF' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDR_NEW_REF_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_NEW_SHORT]', [RECTYPE] = 'NEW.SHORT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[OSDR_NEW_SHORT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[OSDR_NEW_SHORT_InvalidDataType]', [RECTYPE] = 'NEW.SHORT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[OSDR_NEW_SHORT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'OSDR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PAS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PAS_VW];
    GO

create view [THB].[PAS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PAS_PAS_CONTROL]', [RECTYPE] = 'PAS.CONTROL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PAS_PAS_CONTROL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PAS_PAS_CONTROL_InvalidDataType]', [RECTYPE] = 'PAS.CONTROL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PAS_PAS_CONTROL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PAS_PICKUP]', [RECTYPE] = 'PICKUP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PAS_PICKUP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PAS_PICKUP_InvalidDataType]', [RECTYPE] = 'PICKUP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PAS_PICKUP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PAS_REASON]', [RECTYPE] = 'REASON'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PAS_REASON] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PAS_REASON_InvalidDataType]', [RECTYPE] = 'REASON' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PAS_REASON_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PAS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PASH_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PASH_VW];
    GO

create view [THB].[PASH_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PASH_HISTORY]', [RECTYPE] = 'HISTORY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PASH_HISTORY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PASH_HISTORY_InvalidDataType]', [RECTYPE] = 'HISTORY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PASH_HISTORY_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PASH_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PCB_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PCB_VW];
    GO

create view [THB].[PCB_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PCB]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PCB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PCB_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PCB_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PCB_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PCF_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PCF_VW];
    GO

create view [THB].[PCF_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PCF]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PCF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PCF_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PCF_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PCF_PCF_WKDEF]', [RECTYPE] = 'PCF.WKDEF'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PCF_PCF_WKDEF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PCF_PCF_WKDEF_InvalidDataType]', [RECTYPE] = 'PCF.WKDEF' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PCF_PCF_WKDEF_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PCF_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PCM_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PCM_VW];
    GO

create view [THB].[PCM_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PCM_PCM_BASE]', [RECTYPE] = 'PCM.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PCM_PCM_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PCM_PCM_BASE_InvalidDataType]', [RECTYPE] = 'PCM.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PCM_PCM_BASE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PCM_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PCX_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PCX_VW];
    GO

create view [THB].[PCX_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PCX]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PCX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PCX_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PCX_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PCX_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PDB_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PDB_VW];
    GO

create view [THB].[PDB_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PDB_PDB_BASE]', [RECTYPE] = 'PDB.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PDB_PDB_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PDB_PDB_BASE_InvalidDataType]', [RECTYPE] = 'PDB.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PDB_PDB_BASE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PDB_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PHN_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PHN_VW];
    GO

create view [THB].[PHN_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PHN_PHONE]', [RECTYPE] = 'PHONE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PHN_PHONE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PHN_PHONE_InvalidDataType]', [RECTYPE] = 'PHONE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PHN_PHONE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PHN_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PLC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PLC_VW];
    GO

create view [THB].[PLC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PLC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PLC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PLC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PLC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PLC_PLC_BASE]', [RECTYPE] = 'PLC.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PLC_PLC_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PLC_PLC_BASE_InvalidDataType]', [RECTYPE] = 'PLC.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PLC_PLC_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PLC_PLC_ORGANIZATION]', [RECTYPE] = 'PLC.ORGANIZATION'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PLC_PLC_ORGANIZATION] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PLC_PLC_ORGANIZATION_InvalidDataType]', [RECTYPE] = 'PLC.ORGANIZATION' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PLC_PLC_ORGANIZATION_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PLC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PLCAUDIT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PLCAUDIT_VW];
    GO

create view [THB].[PLCAUDIT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PLCAUDIT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PLCAUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PLCAUDIT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PLCAUDIT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PLCAUDIT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PMA_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PMA_VW];
    GO

create view [THB].[PMA_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMA_A]', [RECTYPE] = 'A'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PMA_A] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMA_A_InvalidDataType]', [RECTYPE] = 'A' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PMA_A_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMA_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PMA_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMA_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PMA_C_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMA_J]', [RECTYPE] = 'J'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PMA_J] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMA_J_InvalidDataType]', [RECTYPE] = 'J' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PMA_J_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMA_P]', [RECTYPE] = 'P'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PMA_P] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMA_P_InvalidDataType]', [RECTYPE] = 'P' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PMA_P_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMA_R]', [RECTYPE] = 'R'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PMA_R] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMA_R_InvalidDataType]', [RECTYPE] = 'R' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PMA_R_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PMA_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PMT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PMT_VW];
    GO

create view [THB].[PMT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PMT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PMT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PMT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PMT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PND_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PND_VW];
    GO

create view [THB].[PND_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PND_PND_CUST_CDWRD]', [RECTYPE] = 'PND.CUST.CDWRD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PND_PND_CUST_CDWRD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PND_PND_CUST_CDWRD_InvalidDataType]', [RECTYPE] = 'PND.CUST.CDWRD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PND_PND_CUST_CDWRD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PND_PND_CUST_DATA]', [RECTYPE] = 'PND.CUST.DATA'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PND_PND_CUST_DATA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PND_PND_CUST_DATA_InvalidDataType]', [RECTYPE] = 'PND.CUST.DATA' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PND_PND_CUST_DATA_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PND_PND_CUST_HOLIDAY]', [RECTYPE] = 'PND.CUST.HOLIDAY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PND_PND_CUST_HOLIDAY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PND_PND_CUST_HOLIDAY_InvalidDataType]', [RECTYPE] = 'PND.CUST.HOLIDAY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PND_PND_CUST_HOLIDAY_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PND_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PRD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PRD_VW];
    GO

create view [THB].[PRD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRD_PRD_BASE]', [RECTYPE] = 'PRD.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRD_PRD_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRD_PRD_BASE_InvalidDataType]', [RECTYPE] = 'PRD.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRD_PRD_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRD_PRD_PROCESS]', [RECTYPE] = 'PRD.PROCESS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRD_PRD_PROCESS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRD_PRD_PROCESS_InvalidDataType]', [RECTYPE] = 'PRD.PROCESS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRD_PRD_PROCESS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRD_PRD_REFERENCE]', [RECTYPE] = 'PRD.REFERENCE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRD_PRD_REFERENCE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRD_PRD_REFERENCE_InvalidDataType]', [RECTYPE] = 'PRD.REFERENCE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRD_PRD_REFERENCE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PRD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PREBIL_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PREBIL_VW];
    GO

create view [THB].[PREBIL_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PREBIL_QUOTE]', [RECTYPE] = 'QUOTE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PREBIL_QUOTE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PREBIL_QUOTE_InvalidDataType]', [RECTYPE] = 'QUOTE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PREBIL_QUOTE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PREBIL_SHP_BASE]', [RECTYPE] = 'SHP.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PREBIL_SHP_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PREBIL_SHP_BASE_InvalidDataType]', [RECTYPE] = 'SHP.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PREBIL_SHP_BASE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PREBIL_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PRP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PRP_VW];
    GO

create view [THB].[PRP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRP_PRP_BASE]', [RECTYPE] = 'PRP.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRP_PRP_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRP_PRP_BASE_InvalidDataType]', [RECTYPE] = 'PRP.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRP_PRP_BASE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PRP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --PRQ_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[PRQ_VW];
    GO

create view [THB].[PRQ_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_MONITOR]', [RECTYPE] = 'MONITOR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRQ_MONITOR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_MONITOR_InvalidDataType]', [RECTYPE] = 'MONITOR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRQ_MONITOR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_BASE]', [RECTYPE] = 'PRQ.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRQ_PRQ_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_BASE_InvalidDataType]', [RECTYPE] = 'PRQ.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRQ_PRQ_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_BID]', [RECTYPE] = 'PRQ.BID'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRQ_PRQ_BID] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_BID_InvalidDataType]', [RECTYPE] = 'PRQ.BID' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRQ_PRQ_BID_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_COSTING]', [RECTYPE] = 'PRQ.COSTING'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRQ_PRQ_COSTING] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_COSTING_InvalidDataType]', [RECTYPE] = 'PRQ.COSTING' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRQ_PRQ_COSTING_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_CSNI]', [RECTYPE] = 'PRQ.CSNI'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRQ_PRQ_CSNI] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_CSNI_InvalidDataType]', [RECTYPE] = 'PRQ.CSNI' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRQ_PRQ_CSNI_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_DPR]', [RECTYPE] = 'PRQ.DPR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRQ_PRQ_DPR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_DPR_InvalidDataType]', [RECTYPE] = 'PRQ.DPR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRQ_PRQ_DPR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_REMARK]', [RECTYPE] = 'PRQ.REMARK'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRQ_PRQ_REMARK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_REMARK_InvalidDataType]', [RECTYPE] = 'PRQ.REMARK' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRQ_PRQ_REMARK_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_REVENUE]', [RECTYPE] = 'PRQ.REVENUE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[PRQ_PRQ_REVENUE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[PRQ_PRQ_REVENUE_InvalidDataType]', [RECTYPE] = 'PRQ.REVENUE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[PRQ_PRQ_REVENUE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'PRQ_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --QTA_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[QTA_VW];
    GO

create view [THB].[QTA_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[QTA_DATE]', [RECTYPE] = 'DATE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[QTA_DATE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[QTA_DATE_InvalidDataType]', [RECTYPE] = 'DATE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[QTA_DATE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'QTA_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --QTR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[QTR_VW];
    GO

create view [THB].[QTR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[QTR]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[QTR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[QTR_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[QTR_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'QTR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RBNT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RBNT_VW];
    GO

create view [THB].[RBNT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RBNT_TFD_BTDM]', [RECTYPE] = 'TFD.BTDM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RBNT_TFD_BTDM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RBNT_TFD_BTDM_InvalidDataType]', [RECTYPE] = 'TFD.BTDM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RBNT_TFD_BTDM_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RBNT_TFD_RBNT]', [RECTYPE] = 'TFD.RBNT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RBNT_TFD_RBNT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RBNT_TFD_RBNT_InvalidDataType]', [RECTYPE] = 'TFD.RBNT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RBNT_TFD_RBNT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RBNT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RCS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RCS_VW];
    GO

create view [THB].[RCS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RCS_RCS_BASE]', [RECTYPE] = 'RCS.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RCS_RCS_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RCS_RCS_BASE_InvalidDataType]', [RECTYPE] = 'RCS.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RCS_RCS_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RCS_RCS_CONTROL]', [RECTYPE] = 'RCS.CONTROL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RCS_RCS_CONTROL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RCS_RCS_CONTROL_InvalidDataType]', [RECTYPE] = 'RCS.CONTROL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RCS_RCS_CONTROL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RCS_RCS_DETAIL]', [RECTYPE] = 'RCS.DETAIL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RCS_RCS_DETAIL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RCS_RCS_DETAIL_InvalidDataType]', [RECTYPE] = 'RCS.DETAIL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RCS_RCS_DETAIL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RCS_RCS_WORK_GROUP]', [RECTYPE] = 'RCS.WORK.GROUP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RCS_RCS_WORK_GROUP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RCS_RCS_WORK_GROUP_InvalidDataType]', [RECTYPE] = 'RCS.WORK.GROUP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RCS_RCS_WORK_GROUP_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RCS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RDWAPSY_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RDWAPSY_VW];
    GO

create view [THB].[RDWAPSY_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_ADMG]', [RECTYPE] = 'ADMG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_ADMG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_ADMG_InvalidDataType]', [RECTYPE] = 'ADMG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_ADMG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_DEL2]', [RECTYPE] = 'DEL2'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_DEL2] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_DEL2_InvalidDataType]', [RECTYPE] = 'DEL2' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_DEL2_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_DELG]', [RECTYPE] = 'DELG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_DELG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_DELG_InvalidDataType]', [RECTYPE] = 'DELG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_DELG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_DELO]', [RECTYPE] = 'DELO'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_DELO] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_DELO_InvalidDataType]', [RECTYPE] = 'DELO' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_DELO_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_DEPT]', [RECTYPE] = 'DEPT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_DEPT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_DEPT_InvalidDataType]', [RECTYPE] = 'DEPT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_DEPT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_DUP3]', [RECTYPE] = 'DUP3'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_DUP3] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_DUP3_InvalidDataType]', [RECTYPE] = 'DUP3' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_DUP3_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_KPXX]', [RECTYPE] = 'KPXX'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_KPXX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_KPXX_InvalidDataType]', [RECTYPE] = 'KPXX' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_KPXX_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SEC2]', [RECTYPE] = 'SEC2'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_SEC2] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SEC2_InvalidDataType]', [RECTYPE] = 'SEC2' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_SEC2_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SEC3]', [RECTYPE] = 'SEC3'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_SEC3] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SEC3_InvalidDataType]', [RECTYPE] = 'SEC3' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_SEC3_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SECG]', [RECTYPE] = 'SECG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_SECG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SECG_InvalidDataType]', [RECTYPE] = 'SECG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_SECG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SECO]', [RECTYPE] = 'SECO'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_SECO] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SECO_InvalidDataType]', [RECTYPE] = 'SECO' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_SECO_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SECU]', [RECTYPE] = 'SECU'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_SECU] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SECU_InvalidDataType]', [RECTYPE] = 'SECU' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_SECU_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SECX]', [RECTYPE] = 'SECX'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_SECX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SECX_InvalidDataType]', [RECTYPE] = 'SECX' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_SECX_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SODO]', [RECTYPE] = 'SODO'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_SODO] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SODO_InvalidDataType]', [RECTYPE] = 'SODO' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_SODO_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SODP]', [RECTYPE] = 'SODP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_SODP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SODP_InvalidDataType]', [RECTYPE] = 'SODP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_SODP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SODR]', [RECTYPE] = 'SODR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_SODR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_SODR_InvalidDataType]', [RECTYPE] = 'SODR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_SODR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_WMM]', [RECTYPE] = 'WMM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_WMM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_WMM_InvalidDataType]', [RECTYPE] = 'WMM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_WMM_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_WPRC]', [RECTYPE] = 'WPRC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_WPRC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_WPRC_InvalidDataType]', [RECTYPE] = 'WPRC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_WPRC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_WSM]', [RECTYPE] = 'WSM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RDWAPSY_WSM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RDWAPSY_WSM_InvalidDataType]', [RECTYPE] = 'WSM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RDWAPSY_WSM_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RDWAPSY_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RGN_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RGN_VW];
    GO

create view [THB].[RGN_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGN_RGN_BASE]', [RECTYPE] = 'RGN.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RGN_RGN_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGN_RGN_BASE_InvalidDataType]', [RECTYPE] = 'RGN.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RGN_RGN_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGN_RGN_CURR]', [RECTYPE] = 'RGN.CURR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RGN_RGN_CURR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGN_RGN_CURR_InvalidDataType]', [RECTYPE] = 'RGN.CURR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RGN_RGN_CURR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGN_RGN_ORGANIZATION]', [RECTYPE] = 'RGN.ORGANIZATION'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RGN_RGN_ORGANIZATION] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGN_RGN_ORGANIZATION_InvalidDataType]', [RECTYPE] = 'RGN.ORGANIZATION' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RGN_RGN_ORGANIZATION_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RGN_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RGNAUDIT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RGNAUDIT_VW];
    GO

create view [THB].[RGNAUDIT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGNAUDIT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RGNAUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGNAUDIT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RGNAUDIT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RGNAUDIT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RGPSVC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RGPSVC_VW];
    GO

create view [THB].[RGPSVC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGPSVC_TFD_PSVC]', [RECTYPE] = 'TFD.PSVC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RGPSVC_TFD_PSVC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGPSVC_TFD_PSVC_InvalidDataType]', [RECTYPE] = 'TFD.PSVC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RGPSVC_TFD_PSVC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RGPSVC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RGRGAA_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RGRGAA_VW];
    GO

create view [THB].[RGRGAA_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGRGAA_TFD_RGAA]', [RECTYPE] = 'TFD.RGAA'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RGRGAA_TFD_RGAA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGRGAA_TFD_RGAA_InvalidDataType]', [RECTYPE] = 'TFD.RGAA' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RGRGAA_TFD_RGAA_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RGRGAA_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RGTERR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RGTERR_VW];
    GO

create view [THB].[RGTERR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGTERR_TFD_TERR]', [RECTYPE] = 'TFD.TERR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RGTERR_TFD_TERR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGTERR_TFD_TERR_InvalidDataType]', [RECTYPE] = 'TFD.TERR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RGTERR_TFD_TERR_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RGTERR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RGZONE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RGZONE_VW];
    GO

create view [THB].[RGZONE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGZONE_TFD_ZONE]', [RECTYPE] = 'TFD.ZONE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RGZONE_TFD_ZONE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RGZONE_TFD_ZONE_InvalidDataType]', [RECTYPE] = 'TFD.ZONE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RGZONE_TFD_ZONE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RGZONE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RIP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RIP_VW];
    GO

create view [THB].[RIP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RIP_REASON_CD]', [RECTYPE] = 'REASON.CD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RIP_REASON_CD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RIP_REASON_CD_InvalidDataType]', [RECTYPE] = 'REASON.CD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RIP_REASON_CD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RIP_REASON_HISTORY]', [RECTYPE] = 'REASON.HISTORY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RIP_REASON_HISTORY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RIP_REASON_HISTORY_InvalidDataType]', [RECTYPE] = 'REASON.HISTORY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RIP_REASON_HISTORY_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RIP_RIP_DETAIL_DEL]', [RECTYPE] = 'RIP.DETAIL.DEL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RIP_RIP_DETAIL_DEL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RIP_RIP_DETAIL_DEL_InvalidDataType]', [RECTYPE] = 'RIP.DETAIL.DEL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RIP_RIP_DETAIL_DEL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RIP_RIP_DETAIL_HIST]', [RECTYPE] = 'RIP.DETAIL.HIST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RIP_RIP_DETAIL_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RIP_RIP_DETAIL_HIST_InvalidDataType]', [RECTYPE] = 'RIP.DETAIL.HIST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RIP_RIP_DETAIL_HIST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RIP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RMT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RMT_VW];
    GO

create view [THB].[RMT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RMT_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RMT_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RMT_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RMT_C_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RMT_J]', [RECTYPE] = 'J'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RMT_J] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RMT_J_InvalidDataType]', [RECTYPE] = 'J' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RMT_J_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RMT_P]', [RECTYPE] = 'P'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RMT_P] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RMT_P_InvalidDataType]', [RECTYPE] = 'P' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RMT_P_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RMT_R]', [RECTYPE] = 'R'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RMT_R] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RMT_R_InvalidDataType]', [RECTYPE] = 'R' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RMT_R_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RMT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RPT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RPT_VW];
    GO

create view [THB].[RPT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RPT_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RPT_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RPT_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RPT_B_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RPT_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RPT_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RPT_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RPT_C_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RPT_C_HOLD]', [RECTYPE] = 'C.HOLD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RPT_C_HOLD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RPT_C_HOLD_InvalidDataType]', [RECTYPE] = 'C.HOLD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RPT_C_HOLD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RPT_T]', [RECTYPE] = 'T'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RPT_T] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RPT_T_InvalidDataType]', [RECTYPE] = 'T' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RPT_T_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RPT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RTARSC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RTARSC_VW];
    GO

create view [THB].[RTARSC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTARSC_TFD_ARSC]', [RECTYPE] = 'TFD.ARSC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTARSC_TFD_ARSC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTARSC_TFD_ARSC_InvalidDataType]', [RECTYPE] = 'TFD.ARSC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTARSC_TFD_ARSC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RTARSC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RTE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RTE_VW];
    GO

create view [THB].[RTE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTE_RTE_BASE]', [RECTYPE] = 'RTE.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTE_RTE_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTE_RTE_BASE_InvalidDataType]', [RECTYPE] = 'RTE.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTE_RTE_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTE_RTE_IML_RTG]', [RECTYPE] = 'RTE.IML.RTG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTE_RTE_IML_RTG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTE_RTE_IML_RTG_InvalidDataType]', [RECTYPE] = 'RTE.IML.RTG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTE_RTE_IML_RTG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTE_RTE_RSPN]', [RECTYPE] = 'RTE.RSPN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTE_RTE_RSPN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTE_RTE_RSPN_InvalidDataType]', [RECTYPE] = 'RTE.RSPN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTE_RTE_RSPN_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTE_RTE_RSTRDLY]', [RECTYPE] = 'RTE.RSTRDLY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTE_RTE_RSTRDLY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTE_RTE_RSTRDLY_InvalidDataType]', [RECTYPE] = 'RTE.RSTRDLY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTE_RTE_RSTRDLY_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RTE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RTEAUD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RTEAUD_VW];
    GO

create view [THB].[RTEAUD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTEAUD_RTE_BASE]', [RECTYPE] = 'RTE.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTEAUD_RTE_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTEAUD_RTE_BASE_InvalidDataType]', [RECTYPE] = 'RTE.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTEAUD_RTE_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTEAUD_RTE_RSPN]', [RECTYPE] = 'RTE.RSPN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTEAUD_RTE_RSPN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTEAUD_RTE_RSPN_InvalidDataType]', [RECTYPE] = 'RTE.RSPN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTEAUD_RTE_RSPN_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTEAUD_RTE_RSTRDLY]', [RECTYPE] = 'RTE.RSTRDLY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTEAUD_RTE_RSTRDLY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTEAUD_RTE_RSTRDLY_InvalidDataType]', [RECTYPE] = 'RTE.RSTRDLY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTEAUD_RTE_RSTRDLY_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RTEAUD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RTLADJ_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RTLADJ_VW];
    GO

create view [THB].[RTLADJ_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTLADJ_TFD_LADJ]', [RECTYPE] = 'TFD.LADJ'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTLADJ_TFD_LADJ] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTLADJ_TFD_LADJ_InvalidDataType]', [RECTYPE] = 'TFD.LADJ' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTLADJ_TFD_LADJ_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RTLADJ_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RTLRSC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RTLRSC_VW];
    GO

create view [THB].[RTLRSC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTLRSC_TFD_LRSC]', [RECTYPE] = 'TFD.LRSC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTLRSC_TFD_LRSC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTLRSC_TFD_LRSC_InvalidDataType]', [RECTYPE] = 'TFD.LRSC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTLRSC_TFD_LRSC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RTLRSC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RTRATE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RTRATE_VW];
    GO

create view [THB].[RTRATE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTRATE_TFD_RATE]', [RECTYPE] = 'TFD.RATE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTRATE_TFD_RATE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTRATE_TFD_RATE_InvalidDataType]', [RECTYPE] = 'TFD.RATE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTRATE_TFD_RATE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RTRATE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --RTTRSC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[RTTRSC_VW];
    GO

create view [THB].[RTTRSC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTTRSC_TFD_TRSC]', [RECTYPE] = 'TFD.TRSC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[RTTRSC_TFD_TRSC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[RTTRSC_TFD_TRSC_InvalidDataType]', [RECTYPE] = 'TFD.TRSC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[RTTRSC_TFD_TRSC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'RTTRSC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SATAUDIT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SATAUDIT_VW];
    GO

create view [THB].[SATAUDIT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SATAUDIT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SATAUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SATAUDIT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SATAUDIT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SATAUDIT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SCD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SCD_VW];
    GO

create view [THB].[SCD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCD_INET]', [RECTYPE] = 'INET'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCD_INET] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCD_INET_InvalidDataType]', [RECTYPE] = 'INET' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCD_INET_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCD_ONET]', [RECTYPE] = 'ONET'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCD_ONET] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCD_ONET_InvalidDataType]', [RECTYPE] = 'ONET' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCD_ONET_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SCD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SCHB_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SCHB_VW];
    GO

create view [THB].[SCHB_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHB]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCHB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHB_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCHB_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHB_SCHB_CMMNT]', [RECTYPE] = 'SCHB.CMMNT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCHB_SCHB_CMMNT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHB_SCHB_CMMNT_InvalidDataType]', [RECTYPE] = 'SCHB.CMMNT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCHB_SCHB_CMMNT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SCHB_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SCHM_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SCHM_VW];
    GO

create view [THB].[SCHM_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_EQP]', [RECTYPE] = 'SCHM.EQP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCHM_SCHM_EQP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_EQP_InvalidDataType]', [RECTYPE] = 'SCHM.EQP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCHM_SCHM_EQP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_MNLB]', [RECTYPE] = 'SCHM.MNLB'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCHM_SCHM_MNLB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_MNLB_InvalidDataType]', [RECTYPE] = 'SCHM.MNLB' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCHM_SCHM_MNLB_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_PFL]', [RECTYPE] = 'SCHM.PFL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCHM_SCHM_PFL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_PFL_InvalidDataType]', [RECTYPE] = 'SCHM.PFL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCHM_SCHM_PFL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_ROAD]', [RECTYPE] = 'SCHM.ROAD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCHM_SCHM_ROAD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_ROAD_InvalidDataType]', [RECTYPE] = 'SCHM.ROAD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCHM_SCHM_ROAD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_STD]', [RECTYPE] = 'SCHM.STD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCHM_SCHM_STD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_STD_InvalidDataType]', [RECTYPE] = 'SCHM.STD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCHM_SCHM_STD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_TIME]', [RECTYPE] = 'SCHM.TIME'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCHM_SCHM_TIME] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_TIME_InvalidDataType]', [RECTYPE] = 'SCHM.TIME' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCHM_SCHM_TIME_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_VAN]', [RECTYPE] = 'SCHM.VAN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SCHM_SCHM_VAN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SCHM_SCHM_VAN_InvalidDataType]', [RECTYPE] = 'SCHM.VAN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SCHM_SCHM_VAN_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SCHM_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SHP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SHP_VW];
    GO

create view [THB].[SHP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHP]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHP_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHP_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SHP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SHPAUDA_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SHPAUDA_VW];
    GO

create view [THB].[SHPAUDA_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPAUDA]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPAUDA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPAUDA_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPAUDA_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SHPAUDA_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SHPPDB_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SHPPDB_VW];
    GO

create view [THB].[SHPPDB_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPPDB_SHPPDB]', [RECTYPE] = 'SHPPDB'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPPDB_SHPPDB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPPDB_SHPPDB_InvalidDataType]', [RECTYPE] = 'SHPPDB' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPPDB_SHPPDB_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SHPPDB_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SHPPRE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SHPPRE_VW];
    GO

create view [THB].[SHPPRE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPPRE]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPPRE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPPRE_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPPRE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SHPPRE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SHPS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SHPS_VW];
    GO

create view [THB].[SHPS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPS_SHP_DATE]', [RECTYPE] = 'SHP.DATE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPS_SHP_DATE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPS_SHP_DATE_InvalidDataType]', [RECTYPE] = 'SHP.DATE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPS_SHP_DATE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPS_SHP_SUMMARY]', [RECTYPE] = 'SHP.SUMMARY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPS_SHP_SUMMARY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPS_SHP_SUMMARY_InvalidDataType]', [RECTYPE] = 'SHP.SUMMARY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPS_SHP_SUMMARY_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SHPS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SHPTMP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SHPTMP_VW];
    GO

create view [THB].[SHPTMP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPTMP_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPTMP_B_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_D]', [RECTYPE] = 'D'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPTMP_D] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_D_InvalidDataType]', [RECTYPE] = 'D' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPTMP_D_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_I]', [RECTYPE] = 'I'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPTMP_I] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_I_InvalidDataType]', [RECTYPE] = 'I' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPTMP_I_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_L]', [RECTYPE] = 'L'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPTMP_L] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_L_InvalidDataType]', [RECTYPE] = 'L' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPTMP_L_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPTMP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPTMP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_R]', [RECTYPE] = 'R'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPTMP_R] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_R_InvalidDataType]', [RECTYPE] = 'R' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPTMP_R_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_S]', [RECTYPE] = 'S'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPTMP_S] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_S_InvalidDataType]', [RECTYPE] = 'S' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPTMP_S_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_T]', [RECTYPE] = 'T'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPTMP_T] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPTMP_T_InvalidDataType]', [RECTYPE] = 'T' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPTMP_T_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SHPTMP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SHPX_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SHPX_VW];
    GO

create view [THB].[SHPX_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPX]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPX_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPX_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SHPX_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SHPXT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SHPXT_VW];
    GO

create view [THB].[SHPXT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPXT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SHPXT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHPXT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SHPXT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SHPXT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SHP_HIST_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SHP_HIST_VW];
    GO

create view [THB].[SHP_HIST_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHP_HIST]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[SHP_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SHP_HIST_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[SHP_HIST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SHP_HIST_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SLI_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SLI_VW];
    GO

create view [THB].[SLI_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SLI]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SLI] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SLI_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SLI_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SLI_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SLIPDB_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SLIPDB_VW];
    GO

create view [THB].[SLIPDB_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SLIPDB_SLIPDB]', [RECTYPE] = 'SLIPDB'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SLIPDB_SLIPDB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SLIPDB_SLIPDB_InvalidDataType]', [RECTYPE] = 'SLIPDB' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SLIPDB_SLIPDB_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SLIPDB_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SLIPRE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SLIPRE_VW];
    GO

create view [THB].[SLIPRE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SLIPRE]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SLIPRE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SLIPRE_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SLIPRE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SLIPRE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SLI_HIST_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SLI_HIST_VW];
    GO

create view [THB].[SLI_HIST_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SLI_HIST]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[SLI_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SLI_HIST_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[SLI_HIST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SLI_HIST_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SMD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SMD_VW];
    GO

create view [THB].[SMD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SMD]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SMD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SMD_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SMD_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SMD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SNC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SNC_VW];
    GO

create view [THB].[SNC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SNC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SNC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SNC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SNC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SNC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SPR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SPR_VW];
    GO

create view [THB].[SPR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SPR_SPR_BASE]', [RECTYPE] = 'SPR.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SPR_SPR_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SPR_SPR_BASE_InvalidDataType]', [RECTYPE] = 'SPR.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SPR_SPR_BASE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SPR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SRC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SRC_VW];
    GO

create view [THB].[SRC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SRC_REF_BASE]', [RECTYPE] = 'REF.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SRC_REF_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SRC_REF_BASE_InvalidDataType]', [RECTYPE] = 'REF.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SRC_REF_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SRC_REF_COMMENT]', [RECTYPE] = 'REF.COMMENT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SRC_REF_COMMENT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SRC_REF_COMMENT_InvalidDataType]', [RECTYPE] = 'REF.COMMENT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SRC_REF_COMMENT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SRC_SAL_BASE]', [RECTYPE] = 'SAL.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SRC_SAL_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SRC_SAL_BASE_InvalidDataType]', [RECTYPE] = 'SAL.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SRC_SAL_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SRC_SAL_COMMENT]', [RECTYPE] = 'SAL.COMMENT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SRC_SAL_COMMENT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SRC_SAL_COMMENT_InvalidDataType]', [RECTYPE] = 'SAL.COMMENT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SRC_SAL_COMMENT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SRC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SRVC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SRVC_VW];
    GO

create view [THB].[SRVC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SRVC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SRVC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SRVC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SRVC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SRVC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SSC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SSC_VW];
    GO

create view [THB].[SSC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SSC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SSC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SSC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SSC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SSC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --STA_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[STA_VW];
    GO

create view [THB].[STA_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[STA]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[STA] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[STA_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[STA_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'STA_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SUP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SUP_VW];
    GO

create view [THB].[SUP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SUP]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SUP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SUP_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SUP_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SUP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SVC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SVC_VW];
    GO

create view [THB].[SVC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SVC_C]', [RECTYPE] = 'C'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SVC_C] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SVC_C_InvalidDataType]', [RECTYPE] = 'C' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SVC_C_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SVC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SVC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SVC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SVC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SVC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SWG_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SWG_VW];
    GO

create view [THB].[SWG_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_DELV_CDWRD]', [RECTYPE] = 'DELV.CDWRD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SWG_DELV_CDWRD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_DELV_CDWRD_InvalidDataType]', [RECTYPE] = 'DELV.CDWRD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SWG_DELV_CDWRD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_DELV_INST]', [RECTYPE] = 'DELV.INST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SWG_DELV_INST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_DELV_INST_InvalidDataType]', [RECTYPE] = 'DELV.INST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SWG_DELV_INST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_PRT_DEST]', [RECTYPE] = 'PRT.DEST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[SWG_PRT_DEST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_PRT_DEST_InvalidDataType]', [RECTYPE] = 'PRT.DEST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[SWG_PRT_DEST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SWG_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --SWG_HIST_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[SWG_HIST_VW];
    GO

create view [THB].[SWG_HIST_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_HIST_DELV_CDWRD]', [RECTYPE] = 'DELV.CDWRD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[SWG_DELV_CDWRD_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_HIST_DELV_CDWRD_InvalidDataType]', [RECTYPE] = 'DELV.CDWRD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[SWG_DELV_CDWRD_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_HIST_DELV_INST]', [RECTYPE] = 'DELV.INST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[SWG_DELV_INST_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_HIST_DELV_INST_InvalidDataType]', [RECTYPE] = 'DELV.INST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[SWG_DELV_INST_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_HIST_PRT_DEST]', [RECTYPE] = 'PRT.DEST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[SWG_PRT_DEST_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[SWG_HIST_PRT_DEST_InvalidDataType]', [RECTYPE] = 'PRT.DEST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[SWG_PRT_DEST_HIST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'SWG_HIST_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TAR_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TAR_VW];
    GO

create view [THB].[TAR_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TAR]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TAR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TAR_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TAR_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TAR_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TARCTL_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TARCTL_VW];
    GO

create view [THB].[TARCTL_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TARCTL_BKUP]', [RECTYPE] = 'BKUP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TARCTL_BKUP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TARCTL_BKUP_InvalidDataType]', [RECTYPE] = 'BKUP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TARCTL_BKUP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TARCTL_CTL]', [RECTYPE] = 'CTL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TARCTL_CTL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TARCTL_CTL_InvalidDataType]', [RECTYPE] = 'CTL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TARCTL_CTL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TARCTL_TNDR]', [RECTYPE] = 'TNDR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TARCTL_TNDR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TARCTL_TNDR_InvalidDataType]', [RECTYPE] = 'TNDR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TARCTL_TNDR_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TARCTL_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TBL_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TBL_VW];
    GO

create view [THB].[TBL_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_ACI_PARMS]', [RECTYPE] = 'ACI.PARMS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_ACI_PARMS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_ACI_PARMS_InvalidDataType]', [RECTYPE] = 'ACI.PARMS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_ACI_PARMS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_CSC_REMARKS]', [RECTYPE] = 'CSC.REMARKS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_CSC_REMARKS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_CSC_REMARKS_InvalidDataType]', [RECTYPE] = 'CSC.REMARKS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_CSC_REMARKS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_DIMS_CUBE]', [RECTYPE] = 'DIMS.CUBE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_DIMS_CUBE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_DIMS_CUBE_InvalidDataType]', [RECTYPE] = 'DIMS.CUBE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_DIMS_CUBE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_DIMS_NMFC]', [RECTYPE] = 'DIMS.NMFC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_DIMS_NMFC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_DIMS_NMFC_InvalidDataType]', [RECTYPE] = 'DIMS.NMFC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_DIMS_NMFC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_DIMS_PROG]', [RECTYPE] = 'DIMS.PROG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_DIMS_PROG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_DIMS_PROG_InvalidDataType]', [RECTYPE] = 'DIMS.PROG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_DIMS_PROG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_PRO_PREFIX]', [RECTYPE] = 'PRO.PREFIX'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_PRO_PREFIX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_PRO_PREFIX_InvalidDataType]', [RECTYPE] = 'PRO.PREFIX' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_PRO_PREFIX_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_PYM_ROUTING]', [RECTYPE] = 'PYM.ROUTING'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_PYM_ROUTING] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_PYM_ROUTING_InvalidDataType]', [RECTYPE] = 'PYM.ROUTING' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_PYM_ROUTING_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_SAC_TBL]', [RECTYPE] = 'SAC.TBL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_SAC_TBL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_SAC_TBL_InvalidDataType]', [RECTYPE] = 'SAC.TBL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_SAC_TBL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL11_BASE]', [RECTYPE] = 'TBL11.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL11_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL11_BASE_InvalidDataType]', [RECTYPE] = 'TBL11.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL11_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL11_STATUS]', [RECTYPE] = 'TBL11.STATUS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL11_STATUS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL11_STATUS_InvalidDataType]', [RECTYPE] = 'TBL11.STATUS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL11_STATUS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL12_RATE_DESC]', [RECTYPE] = 'TBL12.RATE.DESC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL12_RATE_DESC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL12_RATE_DESC_InvalidDataType]', [RECTYPE] = 'TBL12.RATE.DESC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL12_RATE_DESC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL14_RATE_ACTION]', [RECTYPE] = 'TBL14.RATE.ACTION'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL14_RATE_ACTION] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL14_RATE_ACTION_InvalidDataType]', [RECTYPE] = 'TBL14.RATE.ACTION' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL14_RATE_ACTION_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL16_ST_ZIP]', [RECTYPE] = 'TBL16.ST.ZIP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL16_ST_ZIP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL16_ST_ZIP_InvalidDataType]', [RECTYPE] = 'TBL16.ST.ZIP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL16_ST_ZIP_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_AUDIT]', [RECTYPE] = 'TBL.AUDIT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_AUDIT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_AUDIT_InvalidDataType]', [RECTYPE] = 'TBL.AUDIT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_AUDIT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_AUDIT_HIST]', [RECTYPE] = 'TBL.AUDIT.HIST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_AUDIT_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_AUDIT_HIST_InvalidDataType]', [RECTYPE] = 'TBL.AUDIT.HIST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_AUDIT_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_CAES]', [RECTYPE] = 'TBL.CAES'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_CAES] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_CAES_InvalidDataType]', [RECTYPE] = 'TBL.CAES' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_CAES_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_CINV_CDWRD]', [RECTYPE] = 'TBL.CINV.CDWRD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_CINV_CDWRD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_CINV_CDWRD_InvalidDataType]', [RECTYPE] = 'TBL.CINV.CDWRD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_CINV_CDWRD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_COS_DEFAULTS]', [RECTYPE] = 'TBL.COS.DEFAULTS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_COS_DEFAULTS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_COS_DEFAULTS_InvalidDataType]', [RECTYPE] = 'TBL.COS.DEFAULTS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_COS_DEFAULTS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_COS_DSTRBTN]', [RECTYPE] = 'TBL.COS.DSTRBTN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_COS_DSTRBTN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_COS_DSTRBTN_InvalidDataType]', [RECTYPE] = 'TBL.COS.DSTRBTN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_COS_DSTRBTN_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_EBRC]', [RECTYPE] = 'TBL.EBRC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_EBRC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_EBRC_InvalidDataType]', [RECTYPE] = 'TBL.EBRC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_EBRC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_GBL_CODE]', [RECTYPE] = 'TBL.GBL.CODE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_GBL_CODE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_GBL_CODE_InvalidDataType]', [RECTYPE] = 'TBL.GBL.CODE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_GBL_CODE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_INV]', [RECTYPE] = 'TBL.INV'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_INV] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_INV_InvalidDataType]', [RECTYPE] = 'TBL.INV' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_INV_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_PORTS]', [RECTYPE] = 'TBL.PORTS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_PORTS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_PORTS_InvalidDataType]', [RECTYPE] = 'TBL.PORTS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_PORTS_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_REORG]', [RECTYPE] = 'TBL.REORG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_REORG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_REORG_InvalidDataType]', [RECTYPE] = 'TBL.REORG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_REORG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_RMT_INV]', [RECTYPE] = 'TBL.RMT.INV'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_RMT_INV] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_RMT_INV_InvalidDataType]', [RECTYPE] = 'TBL.RMT.INV' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_RMT_INV_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_SPC_SVC]', [RECTYPE] = 'TBL.SPC.SVC'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_SPC_SVC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_SPC_SVC_InvalidDataType]', [RECTYPE] = 'TBL.SPC.SVC' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_SPC_SVC_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_XREF]', [RECTYPE] = 'TBL.XREF'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TBL_XREF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TBL_XREF_InvalidDataType]', [RECTYPE] = 'TBL.XREF' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TBL_XREF_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TFQ_AIR]', [RECTYPE] = 'TFQ.AIR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TFQ_AIR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TFQ_AIR_InvalidDataType]', [RECTYPE] = 'TFQ.AIR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TFQ_AIR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TFQ_ZONE_FACTOR]', [RECTYPE] = 'TFQ.ZONE.FACTOR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TFQ_ZONE_FACTOR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TFQ_ZONE_FACTOR_InvalidDataType]', [RECTYPE] = 'TFQ.ZONE.FACTOR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TFQ_ZONE_FACTOR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TNDR_CDWRD]', [RECTYPE] = 'TNDR.CDWRD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_TNDR_CDWRD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_TNDR_CDWRD_InvalidDataType]', [RECTYPE] = 'TNDR.CDWRD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_TNDR_CDWRD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_WI]', [RECTYPE] = 'WI'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL_WI] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL_WI_InvalidDataType]', [RECTYPE] = 'WI' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL_WI_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TBL_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TBL008_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TBL008_VW];
    GO

create view [THB].[TBL008_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL008_TBL_HOLI]', [RECTYPE] = 'TBL.HOLI'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL008_TBL_HOLI] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL008_TBL_HOLI_InvalidDataType]', [RECTYPE] = 'TBL.HOLI' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL008_TBL_HOLI_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TBL008_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TBL010_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TBL010_VW];
    GO

create view [THB].[TBL010_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL010]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TBL010] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TBL010_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TBL010_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TBL010_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TFA_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TFA_VW];
    GO

create view [THB].[TFA_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFA_TFA_ITEM]', [RECTYPE] = 'TFA.ITEM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFA_TFA_ITEM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFA_TFA_ITEM_InvalidDataType]', [RECTYPE] = 'TFA.ITEM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFA_TFA_ITEM_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFA_TFA_NOTE]', [RECTYPE] = 'TFA.NOTE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFA_TFA_NOTE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFA_TFA_NOTE_InvalidDataType]', [RECTYPE] = 'TFA.NOTE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFA_TFA_NOTE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFA_TFA_SECTION]', [RECTYPE] = 'TFA.SECTION'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFA_TFA_SECTION] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFA_TFA_SECTION_InvalidDataType]', [RECTYPE] = 'TFA.SECTION' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFA_TFA_SECTION_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFA_TFA_TARIFF]', [RECTYPE] = 'TFA.TARIFF'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFA_TFA_TARIFF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFA_TFA_TARIFF_InvalidDataType]', [RECTYPE] = 'TFA.TARIFF' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFA_TFA_TARIFF_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TFA_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TFDX_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TFDX_VW];
    GO

create view [THB].[TFDX_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFDX]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFDX] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFDX_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFDX_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TFDX_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TFI_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TFI_VW];
    GO

create view [THB].[TFI_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFI_TFI_PARTICIPANT]', [RECTYPE] = 'TFI.PARTICIPANT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFI_TFI_PARTICIPANT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFI_TFI_PARTICIPANT_InvalidDataType]', [RECTYPE] = 'TFI.PARTICIPANT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFI_TFI_PARTICIPANT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TFI_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TFP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TFP_VW];
    GO

create view [THB].[TFP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFP_TFP_BASE]', [RECTYPE] = 'TFP.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFP_TFP_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFP_TFP_BASE_InvalidDataType]', [RECTYPE] = 'TFP.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFP_TFP_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFP_TFP_GEN_INFO]', [RECTYPE] = 'TFP.GEN.INFO'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFP_TFP_GEN_INFO] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFP_TFP_GEN_INFO_InvalidDataType]', [RECTYPE] = 'TFP.GEN.INFO' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFP_TFP_GEN_INFO_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFP_TFP_PAGE_INFO]', [RECTYPE] = 'TFP.PAGE.INFO'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFP_TFP_PAGE_INFO] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFP_TFP_PAGE_INFO_InvalidDataType]', [RECTYPE] = 'TFP.PAGE.INFO' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFP_TFP_PAGE_INFO_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFP_TFP_SECTION]', [RECTYPE] = 'TFP.SECTION'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFP_TFP_SECTION] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFP_TFP_SECTION_InvalidDataType]', [RECTYPE] = 'TFP.SECTION' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFP_TFP_SECTION_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TFP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TFQ_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TFQ_VW];
    GO

create view [THB].[TFQ_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFQ_CUST_PROFILE]', [RECTYPE] = 'CUST.PROFILE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFQ_CUST_PROFILE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFQ_CUST_PROFILE_InvalidDataType]', [RECTYPE] = 'CUST.PROFILE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFQ_CUST_PROFILE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFQ_GOAL]', [RECTYPE] = 'GOAL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFQ_GOAL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFQ_GOAL_InvalidDataType]', [RECTYPE] = 'GOAL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFQ_GOAL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFQ_QUOTE]', [RECTYPE] = 'QUOTE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFQ_QUOTE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFQ_QUOTE_InvalidDataType]', [RECTYPE] = 'QUOTE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFQ_QUOTE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFQ_TFQ_CONTROL]', [RECTYPE] = 'TFQ.CONTROL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFQ_TFQ_CONTROL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFQ_TFQ_CONTROL_InvalidDataType]', [RECTYPE] = 'TFQ.CONTROL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFQ_TFQ_CONTROL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFQ_TFQ_FLOOR]', [RECTYPE] = 'TFQ.FLOOR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TFQ_TFQ_FLOOR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TFQ_TFQ_FLOOR_InvalidDataType]', [RECTYPE] = 'TFQ.FLOOR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TFQ_TFQ_FLOOR_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TFQ_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TMC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TMC_VW];
    GO

create view [THB].[TMC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TMC]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TMC] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TMC_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TMC_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TMC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TMCAUD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TMCAUD_VW];
    GO

create view [THB].[TMCAUD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TMCAUD]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TMCAUD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TMCAUD_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TMCAUD_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TMCAUD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TMD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TMD_VW];
    GO

create view [THB].[TMD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TMD]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TMD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TMD_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TMD_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TMD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TPF_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TPF_VW];
    GO

create view [THB].[TPF_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TPF]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TPF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TPF_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TPF_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TPF_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TRACK_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TRACK_VW];
    GO

create view [THB].[TRACK_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TRACK]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TRACK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TRACK_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TRACK_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TRACK_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TSK_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TSK_VW];
    GO

create view [THB].[TSK_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TSK_A]', [RECTYPE] = 'A'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TSK_A] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TSK_A_InvalidDataType]', [RECTYPE] = 'A' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TSK_A_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TSK_T]', [RECTYPE] = 'T'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TSK_T] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TSK_T_InvalidDataType]', [RECTYPE] = 'T' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TSK_T_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TSK_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TWG_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TWG_VW];
    GO

create view [THB].[TWG_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_BASE]', [RECTYPE] = 'TWG.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TWG_TWG_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_BASE_InvalidDataType]', [RECTYPE] = 'TWG.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TWG_TWG_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_DIM]', [RECTYPE] = 'TWG.DIM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TWG_TWG_DIM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_DIM_InvalidDataType]', [RECTYPE] = 'TWG.DIM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TWG_TWG_DIM_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_NEG]', [RECTYPE] = 'TWG.NEG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TWG_TWG_NEG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_NEG_InvalidDataType]', [RECTYPE] = 'TWG.NEG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TWG_TWG_NEG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_OSANDD]', [RECTYPE] = 'TWG.OS&D'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TWG_TWG_OSANDD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_OSANDD_InvalidDataType]', [RECTYPE] = 'TWG.OS&D' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TWG_TWG_OSANDD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_REW]', [RECTYPE] = 'TWG.REW'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TWG_TWG_REW] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_REW_InvalidDataType]', [RECTYPE] = 'TWG.REW' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TWG_TWG_REW_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_STAT]', [RECTYPE] = 'TWG.STAT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TWG_TWG_STAT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_STAT_InvalidDataType]', [RECTYPE] = 'TWG.STAT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TWG_TWG_STAT_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_XCPN]', [RECTYPE] = 'TWG.XCPN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TWG_TWG_XCPN] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_TWG_XCPN_InvalidDataType]', [RECTYPE] = 'TWG.XCPN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TWG_TWG_XCPN_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TWG_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TWGPRE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TWGPRE_VW];
    GO

create view [THB].[TWGPRE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWGPRE]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[TWGPRE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWGPRE_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[TWGPRE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TWGPRE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --TWG_HIST_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[TWG_HIST_VW];
    GO

create view [THB].[TWG_HIST_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_BASE]', [RECTYPE] = 'TWG.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_BASE_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_BASE_InvalidDataType]', [RECTYPE] = 'TWG.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_BASE_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_DIM]', [RECTYPE] = 'TWG.DIM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_DIM_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_DIM_InvalidDataType]', [RECTYPE] = 'TWG.DIM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_DIM_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_NEG]', [RECTYPE] = 'TWG.NEG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_NEG_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_NEG_InvalidDataType]', [RECTYPE] = 'TWG.NEG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_NEG_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_OSANDD]', [RECTYPE] = 'TWG.OS&D'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_OSANDD_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_OSANDD_InvalidDataType]', [RECTYPE] = 'TWG.OS&D' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_OSANDD_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_REW]', [RECTYPE] = 'TWG.REW'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_REW_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_REW_InvalidDataType]', [RECTYPE] = 'TWG.REW' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_REW_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_STAT]', [RECTYPE] = 'TWG.STAT'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_STAT_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_STAT_InvalidDataType]', [RECTYPE] = 'TWG.STAT' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_STAT_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_XCPN]', [RECTYPE] = 'TWG.XCPN'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_XCPN_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[TWG_HIST_TWG_XCPN_InvalidDataType]', [RECTYPE] = 'TWG.XCPN' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[TWG_TWG_XCPN_HIST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'TWG_HIST_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --VALUES_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[VALUES_VW];
    GO

create view [THB].[VALUES_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VALUES]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VALUES] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VALUES_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VALUES_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'VALUES_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --VLT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[VLT_VW];
    GO

create view [THB].[VLT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VLT_VLT_FACTOR]', [RECTYPE] = 'VLT.FACTOR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VLT_VLT_FACTOR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VLT_VLT_FACTOR_InvalidDataType]', [RECTYPE] = 'VLT.FACTOR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VLT_VLT_FACTOR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VLT_VLT_GRP_SECTOR]', [RECTYPE] = 'VLT.GRP.SECTOR'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VLT_VLT_GRP_SECTOR] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VLT_VLT_GRP_SECTOR_InvalidDataType]', [RECTYPE] = 'VLT.GRP.SECTOR' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VLT_VLT_GRP_SECTOR_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VLT_VLT_OD_COST]', [RECTYPE] = 'VLT.OD.COST'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VLT_VLT_OD_COST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VLT_VLT_OD_COST_InvalidDataType]', [RECTYPE] = 'VLT.OD.COST' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VLT_VLT_OD_COST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'VLT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --VTGTLP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[VTGTLP_VW];
    GO

create view [THB].[VTGTLP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTGTLP_TFD_GTLP]', [RECTYPE] = 'TFD.GTLP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VTGTLP_TFD_GTLP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTGTLP_TFD_GTLP_InvalidDataType]', [RECTYPE] = 'TFD.GTLP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VTGTLP_TFD_GTLP_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'VTGTLP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --VTINFO_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[VTINFO_VW];
    GO

create view [THB].[VTINFO_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTINFO_TFD_INFO]', [RECTYPE] = 'TFD.INFO'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VTINFO_TFD_INFO] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTINFO_TFD_INFO_InvalidDataType]', [RECTYPE] = 'TFD.INFO' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VTINFO_TFD_INFO_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'VTINFO_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --VTLINK_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[VTLINK_VW];
    GO

create view [THB].[VTLINK_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTLINK_TFD_LINK]', [RECTYPE] = 'TFD.LINK'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VTLINK_TFD_LINK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTLINK_TFD_LINK_InvalidDataType]', [RECTYPE] = 'TFD.LINK' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VTLINK_TFD_LINK_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'VTLINK_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --VTPARM_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[VTPARM_VW];
    GO

create view [THB].[VTPARM_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTPARM_TFD_PARM]', [RECTYPE] = 'TFD.PARM'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VTPARM_TFD_PARM] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTPARM_TFD_PARM_InvalidDataType]', [RECTYPE] = 'TFD.PARM' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VTPARM_TFD_PARM_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'VTPARM_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --VTQNTY_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[VTQNTY_VW];
    GO

create view [THB].[VTQNTY_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTQNTY_TFD_QNTY]', [RECTYPE] = 'TFD.QNTY'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VTQNTY_TFD_QNTY] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTQNTY_TFD_QNTY_InvalidDataType]', [RECTYPE] = 'TFD.QNTY' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VTQNTY_TFD_QNTY_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'VTQNTY_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --VTRBNS_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[VTRBNS_VW];
    GO

create view [THB].[VTRBNS_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTRBNS_TFD_RBNS]', [RECTYPE] = 'TFD.RBNS'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VTRBNS_TFD_RBNS] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTRBNS_TFD_RBNS_InvalidDataType]', [RECTYPE] = 'TFD.RBNS' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VTRBNS_TFD_RBNS_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'VTRBNS_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --VTRULE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[VTRULE_VW];
    GO

create view [THB].[VTRULE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTRULE_TFD_RULE]', [RECTYPE] = 'TFD.RULE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[VTRULE_TFD_RULE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[VTRULE_TFD_RULE_InvalidDataType]', [RECTYPE] = 'TFD.RULE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[VTRULE_TFD_RULE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'VTRULE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --WEB_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[WEB_VW];
    GO

create view [THB].[WEB_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_A]', [RECTYPE] = 'A'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WEB_A] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_A_InvalidDataType]', [RECTYPE] = 'A' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WEB_A_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_B]', [RECTYPE] = 'B'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WEB_B] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_B_InvalidDataType]', [RECTYPE] = 'B' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WEB_B_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_B_HOLD]', [RECTYPE] = 'B.HOLD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WEB_B_HOLD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_B_HOLD_InvalidDataType]', [RECTYPE] = 'B.HOLD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WEB_B_HOLD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_C_HOLD]', [RECTYPE] = 'C.HOLD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WEB_C_HOLD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_C_HOLD_InvalidDataType]', [RECTYPE] = 'C.HOLD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WEB_C_HOLD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_JCL]', [RECTYPE] = 'JCL'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WEB_JCL] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_JCL_InvalidDataType]', [RECTYPE] = 'JCL' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WEB_JCL_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_JCL2]', [RECTYPE] = 'JCL2'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WEB_JCL2] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_JCL2_InvalidDataType]', [RECTYPE] = 'JCL2' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WEB_JCL2_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_R]', [RECTYPE] = 'R'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WEB_R] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_R_InvalidDataType]', [RECTYPE] = 'R' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WEB_R_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_S]', [RECTYPE] = 'S'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WEB_S] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_S_InvalidDataType]', [RECTYPE] = 'S' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WEB_S_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_T]', [RECTYPE] = 'T'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WEB_T] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_T_InvalidDataType]', [RECTYPE] = 'T' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WEB_T_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_W]', [RECTYPE] = 'W'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WEB_W] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WEB_W_InvalidDataType]', [RECTYPE] = 'W' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WEB_W_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'WEB_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --WGP_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[WGP_VW];
    GO

create view [THB].[WGP_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGP]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WGP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGP_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WGP_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'WGP_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --WGPAPT_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[WGPAPT_VW];
    GO

create view [THB].[WGPAPT_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAPT]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WGPAPT] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAPT_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WGPAPT_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'WGPAPT_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --WGPAUD_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[WGPAUD_VW];
    GO

create view [THB].[WGPAUD_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WGPAUD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WGPAUD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_TWGAUD]', [RECTYPE] = 'TWGAUD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WGPAUD_TWGAUD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_TWGAUD_InvalidDataType]', [RECTYPE] = 'TWGAUD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WGPAUD_TWGAUD_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_WGPAUD]', [RECTYPE] = 'WGPAUD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WGPAUD_WGPAUD] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_WGPAUD_InvalidDataType]', [RECTYPE] = 'WGPAUD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WGPAUD_WGPAUD_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'WGPAUD_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --WGPAUD_HIST_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[WGPAUD_HIST_VW];
    GO

create view [THB].[WGPAUD_HIST_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_HIST]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[WGPAUD_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_HIST_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[WGPAUD_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_HIST_TWGAUD]', [RECTYPE] = 'TWGAUD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[WGPAUD_TWGAUD_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_HIST_TWGAUD_InvalidDataType]', [RECTYPE] = 'TWGAUD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[WGPAUD_TWGAUD_HIST_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_HIST_WGPAUD]', [RECTYPE] = 'WGPAUD'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[WGPAUD_WGPAUD_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPAUD_HIST_WGPAUD_InvalidDataType]', [RECTYPE] = 'WGPAUD' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[WGPAUD_WGPAUD_HIST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'WGPAUD_HIST_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --WGPIML_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[WGPIML_VW];
    GO

create view [THB].[WGPIML_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPIML]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WGPIML] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPIML_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WGPIML_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'WGPIML_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --WGPPDB_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[WGPPDB_VW];
    GO

create view [THB].[WGPPDB_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPPDB_WGPPDB]', [RECTYPE] = 'WGPPDB'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WGPPDB_WGPPDB] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPPDB_WGPPDB_InvalidDataType]', [RECTYPE] = 'WGPPDB' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WGPPDB_WGPPDB_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'WGPPDB_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --WGPPRE_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[WGPPRE_VW];
    GO

create view [THB].[WGPPRE_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPPRE]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WGPPRE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGPPRE_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WGPPRE_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'WGPPRE_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --WGP_HIST_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[WGP_HIST_VW];
    GO

create view [THB].[WGP_HIST_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGP_HIST]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[WGP_HIST] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WGP_HIST_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        ,[b].[PurgeAfterDate],[b].[HistoryAsOfDate]
        from [THB].[WGP_HIST_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'WGP_HIST_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --WRK_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[WRK_VW];
    GO

create view [THB].[WRK_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WRK]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[WRK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[WRK_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[WRK_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'WRK_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --XORZ_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[XORZ_VW];
    GO

create view [THB].[XORZ_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[XORZ_ORZ_ACTNG]', [RECTYPE] = 'ORZ.ACTNG'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[XORZ_ORZ_ACTNG] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[XORZ_ORZ_ACTNG_InvalidDataType]', [RECTYPE] = 'ORZ.ACTNG' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[XORZ_ORZ_ACTNG_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[XORZ_ORZ_BASE]', [RECTYPE] = 'ORZ.BASE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[XORZ_ORZ_BASE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[XORZ_ORZ_BASE_InvalidDataType]', [RECTYPE] = 'ORZ.BASE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[XORZ_ORZ_BASE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[XORZ_TERR_TRANSF]', [RECTYPE] = 'TERR.TRANSF'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[XORZ_TERR_TRANSF] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[XORZ_TERR_TRANSF_InvalidDataType]', [RECTYPE] = 'TERR.TRANSF' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[XORZ_TERR_TRANSF_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'XORZ_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --XORZLINK_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[XORZLINK_VW];
    GO

create view [THB].[XORZLINK_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[XORZLINK]', [RECTYPE] = NULL
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[XORZLINK] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[XORZLINK_InvalidDataType]', [RECTYPE] = NULL 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[XORZLINK_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'XORZLINK_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO


    -- ====================================================================================
    --ZPC_VW Version 1.0 
    -- ====================================================================================

    DROP VIEW IF EXISTS [THB].[ZPC_VW];
    GO

create view [THB].[ZPC_VW]
as
        
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ZPC_POS_CODE]', [RECTYPE] = 'POS.CODE'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ZPC_POS_CODE] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ZPC_POS_CODE_InvalidDataType]', [RECTYPE] = 'POS.CODE' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ZPC_POS_CODE_InvalidDataType] [b] 
        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ZPC_ZIP]', [RECTYPE] = 'ZIP'
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(1 as bit)
        ,[Max_Occur] = 
        NULL
        
        from [THB].[ZPC_ZIP] [b] 
         

        UNION ALL
        SELECT [b].[RECORD_KEY], [b].[DTS_DTTMSP], [b].[Create_TS], [b].[Modify_TS], [TableName] = '[THB].[ZPC_ZIP_InvalidDataType]', [RECTYPE] = 'ZIP' 
        ,[DTS_DTTMSP_Reoccur] = NULL
        ,[ReoccurTableName] = 
        NULL
        ,[ValidData] = cast(0 as bit)
        ,[Max_Occur] = null
        
        from [THB].[ZPC_ZIP_InvalidDataType] [b] 
;
GO

 /*Add extended properties for base VIEW database version*/

    DECLARE @schema_name NVARCHAR(255) = 'THB'
    DECLARE @object_type NVARCHAR(255) = 'V'
    DECLARE @object_name NVARCHAR(255) = 'ZPC_VW'

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
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name
        
    ELSE
        EXEC [sys].[sp_addextendedproperty]
            @name = N'Data_Dictionary_Version'
           ,@value = N'243'
           ,@level0type = N'SCHEMA'
           ,@level0name = @schema_name
           ,@level1type = N'VIEW'
           ,@level1name = @object_name;
GO
