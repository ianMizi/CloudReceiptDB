/****** Object:  Table [dbo].[Import_ExternalClients_Enterprise]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Import_ExternalClients_Enterprise](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[EnterpriseName] [varchar](250) NULL,
	[EnterpriseAddress] [varchar](250) NULL,
	[EnterpriseRegistrationNo] [varchar](50) NULL,
	[EnterpriseGSTNo] [varchar](50) NULL,
	[EnterpriseEmail] [varchar](50) NULL,
	[EnterpriseWebsite] [varchar](50) NULL,
	[EnterprisePhoneNo] [varchar](50) NULL,
	[EnterpriseFaxNo] [varchar](50) NULL,
	[EnterpriseLogo64] [varchar](max) NULL,
	[RowStatus] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_Import_ExternalClients_Enterprise_CreatedDate]  DEFAULT (getdate()),
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [varchar](50) NULL CONSTRAINT [DF_Import_ExternalClients_Enterprise_Status]  DEFAULT ('Active'),
	[EnterpriseTaxNo] [varchar](50) NULL,
	[isTaxApplied] [varchar](50) NULL,
	[TaxRate] [decimal](18, 2) NULL,
	[EnterpriseDescriptions] [varchar](550) NULL,
	[EnterpriseFacebook] [varchar](250) NULL,
	[EnterpriseTwiter] [varchar](250) NULL,
	[EnterpriseInstagram] [varchar](250) NULL,
 CONSTRAINT [PK_Import_ExternalClients_Enterprise] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
