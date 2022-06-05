/****** Object:  Table [dbo].[RedeemItem]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[RedeemItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CloudReceiptAccNo] [varchar](50) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[ItemName] [varchar](250) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemPoint] [int] NULL,
	[ItemImg] [varchar](250) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_RedeemItem_RowStatus]  DEFAULT ('Active'),
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_RedeemItem_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[Remarks] [varchar](550) NULL,
 CONSTRAINT [PK_RedeemItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
