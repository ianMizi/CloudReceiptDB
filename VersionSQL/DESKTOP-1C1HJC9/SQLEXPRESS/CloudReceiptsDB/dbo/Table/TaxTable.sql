/****** Object:  Table [dbo].[TaxTable]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[TaxTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[EnterpriseRegistrationNo] [varchar](50) NULL,
	[TaxName] [varchar](50) NULL,
	[TaxNo] [varchar](50) NULL,
	[TaxRate] [decimal](18, 2) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_TaxTable_RowStatus]  DEFAULT ('Active'),
 CONSTRAINT [PK_TaxTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
