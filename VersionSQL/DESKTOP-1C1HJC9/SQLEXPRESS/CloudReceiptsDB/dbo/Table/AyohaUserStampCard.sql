/****** Object:  Table [dbo].[AyohaUserStampCard]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AyohaUserStampCard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StampCardCode] [uniqueidentifier] NULL CONSTRAINT [DF_AyohaUserStampCard_StampCardCode]  DEFAULT (newid()),
	[StampCampaignCode] [varchar](250) NULL,
	[StampContent] [varchar](5500) NULL,
	[StampContentSequence] [int] NULL,
	[StampContentNote] [varchar](250) NULL,
	[StampCardType] [varchar](250) NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[CreatedByAccNo] [varchar](250) NULL,
	[CreatedBy] [varchar](250) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_AyohaUserStampCard_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[RowStatus] [varchar](250) NULL CONSTRAINT [DF_AyohaUserStampCard_RowStatus]  DEFAULT ('Active'),
	[TextOne] [varchar](250) NULL,
	[TextTwo] [varchar](250) NULL,
	[DivContent] [varchar](250) NULL,
	[DivContentTextTwo] [varchar](250) NULL,
	[StampContentDefaultTemplateID] [int] NULL,
	[ShowHide] [varchar](50) NULL,
	[ImgContentName] [varchar](250) NULL,
	[isRedeemItem] [varchar](50) NULL,
	[StampedStatus] [varchar](50) NULL,
	[SubscriberAccNo] [varchar](250) NULL,
	[StampedBy] [varchar](250) NULL,
	[StampedDate] [datetime] NULL,
	[Batch] [int] NULL CONSTRAINT [DF_AyohaUserStampCard_Batch]  DEFAULT ((1)),
 CONSTRAINT [PK_AyohaUserStampCard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
