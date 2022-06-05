/****** Object:  Table [dbo].[Advertisement]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Advertisement](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertisementCode] [varchar](50) NULL,
	[AdvertisementTitle] [varchar](50) NULL,
	[AdvertisementDesc] [varchar](250) NULL,
	[AdvertisementStartDate] [datetime] NULL,
	[AdvertisementEndDate] [datetime] NULL,
	[AdvertisementType] [varchar](50) NULL,
	[AdvertisementStatus] [varchar](50) NULL,
	[AdvertisementNote] [varchar](250) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[EnterpriseHQAccNo] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_Advertisement_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedRemarks] [varchar](250) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_Advertisement_RowStatus]  DEFAULT ('Active'),
	[AdvertisementPeriod] [int] NULL CONSTRAINT [DF_Advertisement_AdvertisementPeriod]  DEFAULT ((0)),
	[AdvertisementFees] [decimal](18, 2) NULL CONSTRAINT [DF_Advertisement_AdvertisementFees]  DEFAULT ((0.00)),
	[AdvertisementMedia] [varchar](50) NULL,
 CONSTRAINT [PK_Advertisement] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
