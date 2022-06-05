/****** Object:  Table [dbo].[LoyaltyCardBackgroundImage]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[LoyaltyCardBackgroundImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[StampCampaignCode] [varchar](250) NULL,
	[ImgName] [varchar](250) NULL,
	[ImgPath] [varchar](250) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_LoyaltyCardBackgroundImage_RowStatus]  DEFAULT ('Active'),
	[CreatedBy] [varchar](250) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_LoyaltyCardBackgroundImage_CreatedDate]  DEFAULT (getdate()),
	[ShowHide] [varchar](50) NULL CONSTRAINT [DF_LoyaltyCardBackgroundImage_ShowHide]  DEFAULT ('Show'),
 CONSTRAINT [PK_LoyaltyCardBackgroundImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
