/****** Object:  Table [dbo].[AdvertisementLinkModule]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AdvertisementLinkModule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertisementCode] [varchar](50) NULL,
	[ModuleCode] [int] NULL,
	[ModuleName] [varchar](50) NULL,
	[ModuleDesc] [varchar](550) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_AdvertisementLinkModule_RowStatus]  DEFAULT ('Active'),
	[EnterpriseHQAccNo] [varchar](50) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_AdvertisementLinkModule_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_AdvertisementLinkModule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
