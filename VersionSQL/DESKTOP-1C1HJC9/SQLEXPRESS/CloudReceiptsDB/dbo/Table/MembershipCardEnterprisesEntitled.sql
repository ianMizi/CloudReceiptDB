/****** Object:  Table [dbo].[MembershipCardEnterprisesEntitled]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MembershipCardEnterprisesEntitled](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[CampaignCode] [varchar](250) NULL,
	[EnterpriseHQAccNo] [varchar](250) NULL,
	[MembershipCardCode] [varchar](250) NULL,
	[CreatedBy] [varchar](250) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_MembershipCardEnterprisesEntitled_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_MembershipCardEnterprisesEntitled_RowStatus]  DEFAULT ('Active'),
 CONSTRAINT [PK_MembershipCardEnterprisesEntitled] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
