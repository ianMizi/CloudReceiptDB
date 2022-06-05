/****** Object:  Table [dbo].[Membership]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Membership](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CampaignCode] [varchar](250) NULL,
	[CampaignEnterpriseAccNo] [varchar](250) NULL,
	[CampaignRewardType] [varchar](250) NULL,
	[SubscriberAccNo] [varchar](250) NULL,
	[MembershipDate] [datetime] NULL,
	[MembershipByMethod] [varchar](50) NULL,
	[MembrshipApprovalDate] [datetime] NULL,
	[MembershipApprovalBy] [varchar](250) NULL,
	[ReferalSubscriberAccNo] [varchar](250) NULL,
	[MembershipFee] [decimal](18, 2) NULL CONSTRAINT [DF_Membership_MembershipFee]  DEFAULT ((0.00)),
	[MembershipLevel] [varchar](250) NULL,
	[IsRequiredMembershipFee] [varchar](50) NULL CONSTRAINT [DF_Membership_IsRequiredMembershipFee]  DEFAULT ('NO'),
	[RowStatus] [varchar](50) NULL,
	[MembershipNo] [varchar](250) NULL,
	[MembershipApprovalStatus] [varchar](250) NULL,
	[MembershipFeePaymentMethod] [varchar](250) NULL,
	[MembershipPaymentLink] [varchar](250) NULL,
	[MembershipPaymentPaidProof] [varchar](250) NULL,
	[MembershipCardCode] [varchar](250) NULL,
	[MembershipPaymentCode] [varchar](250) NULL,
 CONSTRAINT [PK_Membership] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
