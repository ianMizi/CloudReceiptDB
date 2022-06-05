/****** Object:  Table [dbo].[Notifications]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Notifications](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MyKadID] [varchar](50) NULL,
	[Notification] [varchar](max) NULL,
	[SentFrom] [varchar](50) NULL,
	[IsRead] [varchar](50) NULL CONSTRAINT [DF_Notifications_IsRead]  DEFAULT ('N'),
	[NotificationDate] [datetime] NULL,
	[NotificationReadDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_Notifications_RowStatus]  DEFAULT ('Active'),
	[Logo64] [varchar](max) NULL,
	[Logo] [image] NULL,
	[PaymentType] [varchar](50) NULL,
	[FlatbilliD] [varchar](50) NULL,
	[AccountNo] [varchar](150) NULL,
	[TotalPaid] [varchar](50) NULL,
	[NotificationType] [varchar](50) NULL CONSTRAINT [DF_Notifications_NotificationType]  DEFAULT ('R'),
	[NotificationTitle] [varchar](350) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[NotificationCode] [varchar](50) NULL CONSTRAINT [DF_Notifications_NotificationCode]  DEFAULT ('N001'),
	[IsOpen] [varchar](50) NULL CONSTRAINT [DF_Notifications_IsOpen]  DEFAULT ('N'),
	[Audience] [varchar](150) NULL CONSTRAINT [DF_Notifications_Audience]  DEFAULT ('All Subscriber'),
	[IsSent] [varchar](50) NULL CONSTRAINT [DF_Notifications_IsSent]  DEFAULT ('N'),
	[AdvertisementImage] [varchar](max) NULL,
	[SearchCol] [varchar](max) NULL,
	[BlastingMessageType] [varchar](150) NULL,
	[SentStatus] [varchar](350) NULL,
	[PlayerID] [varchar](550) NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
