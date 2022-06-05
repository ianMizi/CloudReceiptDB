/****** Object:  Table [dbo].[LoyaltyCardMember]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[LoyaltyCardMember](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CampaignCode] [varchar](250) NULL,
	[CampaignEnterpriseAccNo] [varchar](50) NULL,
	[CampaignRewardType] [varchar](50) NULL,
	[SubscriberAccNo] [varchar](250) NULL,
	[LoyaltyCardMemberRequestDate] [datetime] NULL CONSTRAINT [DF_LoyaltyCardMember_LoyaltyCardMemberRequestDate]  DEFAULT (getdate()),
	[LoyaltyCardMemberByMethod] [varchar](50) NULL,
	[LoyaltyCardMemberApprovalDate] [datetime] NULL,
	[LoyaltyCardMemberApprovalBy] [varchar](50) NULL,
	[ReferalSubscriberAccNo] [varchar](50) NULL,
	[LoyaltyCardMemberFee] [decimal](18, 2) NULL,
	[IsRequiredFee] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_LoyaltyCardMember_RowStatus]  DEFAULT ('Active'),
	[LoyaltyCardMemberNo] [varchar](50) NULL,
	[LoyaltyCardMemberApprovalStatus] [varchar](50) NULL,
 CONSTRAINT [PK_LoyaltyCardMember] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
