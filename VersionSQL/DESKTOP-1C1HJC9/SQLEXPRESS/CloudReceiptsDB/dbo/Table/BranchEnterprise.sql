/****** Object:  Table [dbo].[BranchEnterprise]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BranchEnterprise](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[BranchEnterpriseAccNo] [varchar](50) NULL,
	[EnterpriseName] [varchar](250) NULL,
	[EnterpriseAddress] [varchar](250) NULL,
	[EnterprisePhoneNo] [varchar](50) NULL,
	[EnterpriseRegistrationNo] [varchar](50) NULL,
	[EnterpriseEmail] [varchar](50) NULL,
	[EnterpriseWebsite] [varchar](50) NULL,
	[EnterpriseDescriptions] [varchar](550) NULL,
	[EnterpriseFacebook] [varchar](250) NULL,
	[EnterpriseTwiter] [varchar](250) NULL,
	[EnterpriseInstagram] [varchar](250) NULL,
	[EnterpriseCoordinate] [varchar](150) NULL,
	[EnterpriseLogoPath] [varchar](550) NULL,
	[RowStatus] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[isFeedBackFormEnabled] [varchar](50) NULL,
	[PICContactNo] [varchar](50) NULL,
	[PersonInCharge] [varchar](50) NULL,
	[LoyaltyCardType] [varchar](50) NULL,
 CONSTRAINT [PK_BranchEnterprise] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
