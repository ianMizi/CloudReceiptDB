/****** Object:  Table [dbo].[LoyaltyStamp]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[LoyaltyStamp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubscriberAccNo] [varchar](250) NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[StampCode] [varchar](250) NULL,
	[StampQrCode] [varchar](500) NULL,
	[StampedBy] [varchar](250) NULL,
	[StampedByDate] [datetime] NULL CONSTRAINT [DF_Table_1_StampDate]  DEFAULT (getdate()),
	[StampedByPhoneModel] [varchar](250) NULL,
	[StampedByUserAccNo] [varchar](250) NULL,
	[StampedByPhoneSerialNo] [varchar](250) NULL,
	[StampedByPhoneManufacturer] [varchar](250) NULL,
	[StampedByPhonePlatform] [varchar](250) NULL,
	[StampedByOneSignalID] [varchar](250) NULL,
	[StampedByPhoneRawInfo] [varchar](550) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_LoyaltyStamp_RowStatus]  DEFAULT ('Active'),
	[CountsStamp] [int] NULL CONSTRAINT [DF_LoyaltyStamp_CountsStamp]  DEFAULT ((1)),
	[StampedCampaignCode] [varchar](250) NULL,
	[Batch] [int] NULL,
	[StampClaimStatus] [varchar](250) NULL CONSTRAINT [DF_LoyaltyStamp_StampClaimStatus]  DEFAULT ('UnClaimed'),
 CONSTRAINT [PK_LoyaltyStamp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
