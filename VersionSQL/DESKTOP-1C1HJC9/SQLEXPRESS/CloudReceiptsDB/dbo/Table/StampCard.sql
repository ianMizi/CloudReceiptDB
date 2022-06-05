/****** Object:  Table [dbo].[StampCard]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[StampCard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StampCardCode] [uniqueidentifier] NULL CONSTRAINT [DF_StampCard_StampCardCode]  DEFAULT (newid()),
	[StampCampaignCode] [varchar](250) NULL,
	[StampContent] [varchar](5500) NULL,
	[StampContentSequence] [int] NULL,
	[StampContentNote] [varchar](150) NULL,
	[StampCardType] [varchar](50) NULL CONSTRAINT [DF_StampCard_StampCardType]  DEFAULT ('Default'),
	[EnterpriseAccNo] [varchar](50) NULL,
	[CreatedByAccNo] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_StampCard_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_StampCard_RowStatus]  DEFAULT ('Active'),
	[TextOne] [varchar](50) NULL,
	[TextTwo] [varchar](50) NULL,
	[DivContent] [varchar](50) NULL,
	[DivContentTextTwo] [varchar](50) NULL,
	[StampContentDefaultTemplateID] [int] NULL,
	[ShowHide] [varchar](50) NULL CONSTRAINT [DF_StampCard_ShowHide]  DEFAULT ('Show'),
	[ImgContentName] [varchar](50) NULL,
	[isRedeemItem] [varchar](50) NULL CONSTRAINT [DF_StampCard_isRedeemItem]  DEFAULT ('NO'),
	[StampedStatus] [varchar](50) NULL CONSTRAINT [DF_StampCard_StampedStatus]  DEFAULT ('NO'),
 CONSTRAINT [PK_StampCard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
