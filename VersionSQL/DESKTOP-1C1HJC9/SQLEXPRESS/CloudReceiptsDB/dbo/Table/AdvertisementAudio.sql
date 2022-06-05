/****** Object:  Table [dbo].[AdvertisementAudio]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AdvertisementAudio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertisementCode] [varchar](50) NULL,
	[AdvertisementAudio] [varchar](250) NULL,
	[AdvertisementAudioName] [varchar](50) NULL,
	[AdvertisementAudioNote] [varchar](250) NULL,
	[RowStatus] [varchar](50) NULL,
	[EnterpriseHQAccNo] [varchar](50) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_AdvertisementAudio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[AdvertisementAudio] ADD  CONSTRAINT [DF_AdvertisementAudio_RowStatus]  DEFAULT ('Active') FOR [RowStatus]
ALTER TABLE [dbo].[AdvertisementAudio] ADD  CONSTRAINT [DF_AdvertisementAudio_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
