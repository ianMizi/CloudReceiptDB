/****** Object:  Table [dbo].[BlastingMsgSpecificClient]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BlastingMsgSpecificClient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationCode] [varchar](350) NULL,
	[SubscriberName] [varchar](350) NULL,
	[SubscriberPhoneNo] [varchar](150) NULL,
	[SubscriberEmail] [varchar](350) NULL,
	[SubscriberAccNo] [varchar](350) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_BlastingMsgSpecificClient_RowStatus]  DEFAULT ('Active'),
	[EnterpriseAccountNo] [varchar](150) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_BlastingMsgSpecificClient_CreatedDate]  DEFAULT (getdate()),
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](150) NULL,
	[BlastingType] [varchar](50) NULL,
 CONSTRAINT [PK_BlastingMsgSpecificClient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
