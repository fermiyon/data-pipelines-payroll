IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseDelimitedTextFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseDelimitedTextFormat] 
	WITH ( FORMAT_TYPE = DELIMITEDTEXT ,
	       FORMAT_OPTIONS (
			 FIELD_TERMINATOR = ',',
			 FIRST_ROW = 2,
			 USE_TYPE_DEFAULT = FALSE
			))
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'azcontainerpayroll_azstoragepayroll2_dfs_core_windows_net') 
	CREATE EXTERNAL DATA SOURCE [azcontainerpayroll_azstoragepayroll2_dfs_core_windows_net] 
	WITH (
		LOCATION = 'abfss://azcontainerpayroll@azstoragepayroll2.dfs.core.windows.net' 
	)
GO

CREATE EXTERNAL TABLE dbo.NYC_Payroll_Summary (
	[AgencyName] nvarchar(4000),
	[FiscalYear] nvarchar(4000),
	[TotalPaid] nvarchar(4000)
	)
	WITH (
	LOCATION = 'dirstaging/**',
	DATA_SOURCE = [azcontainerpayroll_azstoragepayroll2_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
GO