/****** Object:  Table [dbo].[StampCampaignStamper]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[StampCampaignStamper](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [varchar](250) NULL,
	[AccountNo] [varchar](250) NULL,
	[StampCampaignCode] [varchar](250) NULL,
	[UserType] [varchar](50) NULL,
	[CreatedBy] [varchar](250) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_StampCampaignStamper_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_StampCampaignStamper_RowStatus]  DEFAULT ('Active'),
 CONSTRAINT [PK_StampCampaignStamper] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
