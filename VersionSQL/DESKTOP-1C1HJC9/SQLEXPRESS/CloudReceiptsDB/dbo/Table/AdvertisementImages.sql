/****** Object:  Table [dbo].[AdvertisementImages]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AdvertisementImages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertisementCode] [varchar](150) NULL,
	[AdvertisementImg] [varchar](550) NULL,
	[AdvertisementImgName] [varchar](550) NULL,
	[AdvertisementImgNote] [varchar](250) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_AdvertisementImages_RowStatus]  DEFAULT ('Active'),
	[EnterpriseHQAccNo] [varchar](50) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_AdvertisementImages_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_AdvertisementImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
