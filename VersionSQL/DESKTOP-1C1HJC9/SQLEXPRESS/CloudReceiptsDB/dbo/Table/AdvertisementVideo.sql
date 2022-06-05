/****** Object:  Table [dbo].[AdvertisementVideo]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AdvertisementVideo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertisementCode] [varchar](50) NULL,
	[AdvertisementVideo] [varchar](250) NULL,
	[AdvertisementVideoName] [varchar](50) NULL,
	[AdvertisementVideoNote] [varchar](250) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_AdvertisementVideo_RowStatus]  DEFAULT ('Active'),
	[EnterpriseHQAccNo] [varchar](50) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_AdvertisementVideo_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_AdvertisementVideo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
