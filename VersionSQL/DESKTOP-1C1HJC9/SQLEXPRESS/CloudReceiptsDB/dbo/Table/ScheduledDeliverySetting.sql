/****** Object:  Table [dbo].[ScheduledDeliverySetting]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ScheduledDeliverySetting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SchDeliverySettingType] [varchar](50) NULL,
	[SchDeliverySettingTypeDateTime] [datetime] NULL,
	[SchDeliverySettingOnDay] [int] NULL,
	[SchDeliverySettingOnMonth] [varchar](50) NULL,
	[SchDeliverySettingOnTime] [varchar](50) NULL,
	[isRepeated] [varchar](50) NULL,
	[NotificationCode] [varchar](350) NULL,
	[NotificationType] [varchar](50) NULL,
	[EnterpriseAccountNo] [varchar](350) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_ScheduledDeliverySetting_CreatedDate]  DEFAULT (getdate()),
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_ScheduledDeliverySetting_RowStatus]  DEFAULT ('Active'),
	[SentTo] [varchar](max) NULL,
	[MessageTxt] [varchar](550) NULL,
	[SchDeliverySettingTypeDateTimeDT] [datetime] NULL,
 CONSTRAINT [PK_ScheduledDeliverySetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
