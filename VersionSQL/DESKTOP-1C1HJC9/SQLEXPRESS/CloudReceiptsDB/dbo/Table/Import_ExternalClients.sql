/****** Object:  Table [dbo].[Import_ExternalClients]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Import_ExternalClients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [varchar](150) NULL,
	[ProjectAccountNo] [varchar](50) NULL,
	[AccountOwner] [varchar](50) NULL,
	[ClientAccountNo] [varchar](150) NULL,
	[Name] [varchar](150) NULL,
	[MobilePhone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PlayerID] [varchar](250) NULL,
	[PN_Status] [varchar](50) NULL,
	[SMS_Status] [varchar](50) NULL,
	[Email_Status] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_Import_ExternalClients_RowStatus]  DEFAULT ('Active'),
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_Import_ExternalClients_CreatedDate]  DEFAULT (getdate()),
	[SearchCol] [varchar](550) NULL,
	[UserLoginID] [varchar](250) NULL,
	[EnterpriseAccNo] [varchar](150) NULL,
	[ModifiedBy] [varchar](150) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Import_ExternalClients] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
