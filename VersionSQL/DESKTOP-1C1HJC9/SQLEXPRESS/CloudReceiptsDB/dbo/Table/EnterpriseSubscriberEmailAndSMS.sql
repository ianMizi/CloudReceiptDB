/****** Object:  Table [dbo].[EnterpriseSubscriberEmailAndSMS]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[EnterpriseSubscriberEmailAndSMS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubcriberAccNo] [varchar](50) NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[Name] [varchar](250) NULL,
	[PhoneNo] [varchar](250) NULL,
	[Emails] [varchar](250) NULL,
	[SubscribedStatus] [varchar](50) NULL,
	[SubscribedDate] [datetime] NULL CONSTRAINT [DF_EnterpriseSubscriberEmailAndSMS_SubscribedDate]  DEFAULT (getdate()),
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_EnterpriseSubscriberEmailAndSMS_CreatedDate]  DEFAULT (getdate()),
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL CONSTRAINT [DF_EnterpriseSubscriberEmailAndSMS_ModifiedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_EnterpriseSubscriberEmailAndSMS_RowStatus]  DEFAULT ('Active'),
	[SubscribedSMS] [int] NULL,
	[SubscribedEmail] [int] NULL,
	[SearchCol] [varchar](max) NULL,
 CONSTRAINT [PK_EnterpriseSubscriberEmailAndSMS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
