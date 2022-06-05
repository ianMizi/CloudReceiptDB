/****** Object:  Table [dbo].[SMSLog]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[SMSLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationCode] [varchar](550) NULL,
	[SMSLogDate] [datetime] NULL CONSTRAINT [DF_SMSLog_SMSLogDate]  DEFAULT (getdate()),
	[SMSAddress] [varchar](350) NULL,
	[SMSSentStatus] [varchar](550) NULL,
	[EnterpriseAccountNo] [varchar](350) NULL,
 CONSTRAINT [PK_SMSLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
