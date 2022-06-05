/****** Object:  Table [dbo].[AdvertisementType]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AdvertisementType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertismentTypeCode] [varchar](50) NULL,
	[AdvertisementType] [varchar](50) NULL,
	[Descriptions] [varchar](150) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_AdvertisementType_RowStatus]  DEFAULT ('Active'),
 CONSTRAINT [PK_AdvertisementType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
