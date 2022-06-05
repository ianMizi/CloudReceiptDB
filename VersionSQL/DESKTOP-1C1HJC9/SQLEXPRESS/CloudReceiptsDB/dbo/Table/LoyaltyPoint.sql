/****** Object:  Table [dbo].[LoyaltyPoint]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[LoyaltyPoint](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubscriberAccNo] [varchar](50) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[PointCode] [varchar](50) NULL,
	[PointQrCode] [varchar](500) NULL,
	[PointedBy] [varchar](50) NULL,
	[PointedByDate] [datetime] NULL CONSTRAINT [DF_LoyaltyPoint_PointedByDate]  DEFAULT (getdate()),
	[PointedByPhoneModel] [varchar](50) NULL,
	[PointedByUserAccNo] [varchar](50) NULL,
	[PointedByPhoneSerialNo] [varchar](50) NULL,
	[PointedByPhoneManufacturer] [varchar](50) NULL,
	[PointedByPhonePlatform] [varchar](50) NULL,
	[PointedByOneSignalID] [varchar](50) NULL,
	[PointedByPhoneRawInfo] [varchar](550) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_LoyaltyPoint_RowStatus]  DEFAULT ('Active'),
	[CountsPoint] [int] NULL,
	[PointCampaignCode] [varchar](50) NULL,
	[Batch] [int] NULL,
	[PointClaimStatus] [varchar](50) NULL CONSTRAINT [DF_LoyaltyPoint_PointClaimStatus]  DEFAULT ('UnClaimed'),
 CONSTRAINT [PK_LoyaltyPoint] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
