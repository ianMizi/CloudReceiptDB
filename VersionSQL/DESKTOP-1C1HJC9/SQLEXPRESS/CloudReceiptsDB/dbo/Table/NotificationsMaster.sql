/****** Object:  Table [dbo].[NotificationsMaster]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[NotificationsMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationCode] [varchar](350) NULL,
	[NotificationTitle] [varchar](550) NULL,
	[PublishBy] [varchar](50) NULL,
	[PublishedDate] [datetime] NULL CONSTRAINT [DF_NotificationsMaster_PublishedDate]  DEFAULT (getdate()),
	[isApproved] [varchar](50) NULL CONSTRAINT [DF_NotificationsMaster_isApproved]  DEFAULT ('Approved'),
	[Audience] [varchar](50) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[ApprovedDate] [datetime] NULL CONSTRAINT [DF_NotificationsMaster_ApprovedDate]  DEFAULT (getdate()),
	[ApprovedBy] [varchar](50) NULL CONSTRAINT [DF_NotificationsMaster_ApprovedBy]  DEFAULT ('CR-Admin'),
	[Notes] [varchar](250) NULL,
	[ReceipientsCount] [int] NULL,
	[SearchCol] [varchar](max) NULL,
	[BlastingMessageType] [varchar](150) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_NotificationsMaster_RowStatus]  DEFAULT ('Active'),
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](150) NULL,
 CONSTRAINT [PK_NotificationsMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
