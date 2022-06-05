/****** Object:  Table [dbo].[EnterpriseSubscriber]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[EnterpriseSubscriber](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubcriberAccNo] [varchar](50) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[SubscribedStatus] [varchar](50) NULL CONSTRAINT [DF_EnterpriseSubscriber_SubscribedStatus]  DEFAULT ('Approved'),
	[SubscribedDate] [datetime] NULL CONSTRAINT [DF_EnterpriseSubscriber_SubscribedDate]  DEFAULT (getdate()),
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_EnterpriseSubscriber_CreatedDate]  DEFAULT (getdate()),
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_EnterpriseSubscriber_RowStatus]  DEFAULT ('Active'),
	[SubscribedCloudReceipt] [int] NULL CONSTRAINT [DF_EnterpriseSubscriber_SubscribedCloudReceipt]  DEFAULT ((0)),
	[SubscribedNewsAndPromotion] [int] NULL CONSTRAINT [DF_EnterpriseSubscriber_SubscribedNewsAndPromotion]  DEFAULT ((1)),
	[SubscribedEmailAndSMS] [int] NULL CONSTRAINT [DF_EnterpriseSubscriber_SubscribedEmailAndSMS]  DEFAULT ((1)),
	[SearchCol] [varchar](max) NULL,
 CONSTRAINT [PK_EnterpriseSubscriber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
