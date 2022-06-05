/****** Object:  Table [dbo].[BlastingMsgQuota]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BlastingMsgQuota](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseAccountNo] [varchar](150) NULL,
	[SMSQuota] [int] NULL,
	[PushNotificationQuota] [int] NULL,
	[EmailQuota] [int] NULL,
	[WhatAppsQuota] [int] NULL,
	[FacebookQuota] [int] NULL,
	[TelegramQuota] [int] NULL,
	[CreatedBy] [varchar](150) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_BlastingMsgQuota_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](150) NULL,
	[ModifiedDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_BlastingMsgQuota_RowStatus]  DEFAULT ('Active'),
	[LogInfo] [varchar](max) NULL,
 CONSTRAINT [PK_BlastingMsgQuota] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
