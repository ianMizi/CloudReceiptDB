/****** Object:  Table [dbo].[Import_ExternalClients_Backup]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Import_ExternalClients_Backup](
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
	[RowStatus] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[SearchCol] [varchar](550) NULL,
	[UserLoginID] [varchar](250) NULL
) ON [PRIMARY]
