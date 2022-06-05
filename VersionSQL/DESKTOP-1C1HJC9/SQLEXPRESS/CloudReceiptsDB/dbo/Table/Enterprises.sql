/****** Object:  Table [dbo].[Enterprises]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Enterprises](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseHQAccNo] [varchar](250) NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[EnterpriseName] [varchar](250) NULL,
	[EnterpriseAddress] [varchar](250) NULL,
	[EnterprisePhoneNo] [varchar](250) NULL,
	[EnterpriseRegistrationNo] [varchar](250) NULL,
	[EnterpriseEmail] [varchar](250) NULL,
	[EnterpriseWebsite] [varchar](250) NULL,
	[EnterpriseDescriptions] [varchar](550) NULL,
	[EnterpriseFacebook] [varchar](250) NULL,
	[EnterpriseTwiter] [varchar](250) NULL,
	[EnterpriseInstagram] [varchar](250) NULL,
	[EnterpriseCoordinate] [varchar](250) NULL,
	[EnterpriseLogoPath] [varchar](550) NULL,
	[EnterpriseLogoName] [varchar](250) NULL,
	[RowStatus] [varchar](250) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_Enterprises_CreatedDate]  DEFAULT (getdate()),
	[CreatedBy] [varchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](250) NULL,
	[PICContactNo] [varchar](250) NULL,
	[PersonInCharge] [varchar](250) NULL,
	[LoyaltyCardType] [varchar](250) NULL,
	[EnterpriseType] [varchar](250) NULL,
	[EnterpriseBusinessType] [varchar](250) NULL,
	[AyohaVersion] [varchar](250) NULL,
	[CountMembership] [int] NULL CONSTRAINT [DF_Enterprises_CountMembership]  DEFAULT ((0)),
	[CountStar] [int] NULL CONSTRAINT [DF_Enterprises_CountStart]  DEFAULT ((1)),
	[SearchCol] [varchar](550) NULL,
	[Negeri] [varchar](250) NULL,
	[BusinessMode] [varchar](250) NULL CONSTRAINT [DF_Enterprises_BusinessMode]  DEFAULT ('Offline'),
	[BusinessTypeCode] [varchar](50) NULL,
	[BusinessTypeGroupCode] [varchar](50) NULL,
 CONSTRAINT [PK_Enterprises] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
