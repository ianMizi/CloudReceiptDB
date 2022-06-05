/****** Object:  Table [dbo].[MembershipCardCampaingEntitled]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MembershipCardCampaingEntitled](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CampaignCode] [varchar](250) NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[EnterpriseHQAccNo] [varchar](250) NULL,
	[MembershipCardCode] [varchar](250) NULL,
	[CreatedBy] [varchar](250) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_MembershipCardCampaingEntitled_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_MembershipCardCampaingEntitled_RowStatus]  DEFAULT ('Active'),
	[CampaignType] [varchar](50) NULL,
 CONSTRAINT [PK_MembershipCardCampaingEntitled] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
