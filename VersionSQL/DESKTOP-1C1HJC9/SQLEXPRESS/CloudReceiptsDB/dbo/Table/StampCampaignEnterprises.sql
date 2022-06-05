/****** Object:  Table [dbo].[StampCampaignEnterprises]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[StampCampaignEnterprises](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[StampCampaignCode] [varchar](250) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_StampCampaignEnterprises_CreatedDate]  DEFAULT (getdate()),
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_StampCampaignEnterprises_RowStatus]  DEFAULT ('Active'),
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[EnterpriseHQAccNo] [varchar](250) NULL,
 CONSTRAINT [PK_StampCampaignEnterprises] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
