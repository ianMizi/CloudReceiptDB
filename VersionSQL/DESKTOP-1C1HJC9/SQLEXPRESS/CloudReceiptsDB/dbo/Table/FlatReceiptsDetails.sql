/****** Object:  Table [dbo].[FlatReceiptsDetails]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FlatReceiptsDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descriptions] [varchar](max) NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[FlatReceiptsID] [varchar](550) NULL,
	[FlatReceiptsGroupID] [varchar](max) NULL,
	[FlatReceiptsBSCloudreceiptAccountNo] [varchar](50) NULL,
	[FlatReceiptsCreatedDate] [datetime] NULL CONSTRAINT [DF_FlatReceiptsDetails_FlatReceiptsCreatedDate]  DEFAULT (getdate()),
	[FlatReceiptsModifiedDate] [datetime] NULL,
	[FlatReceiptsCreatedBy] [varchar](50) NULL,
	[FlatReceiptsNo] [varchar](50) NULL,
	[IsSent] [varchar](50) NULL CONSTRAINT [DF_FlatReceiptsDetails_IsSent]  DEFAULT ('No'),
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_FlatReceiptsDetails_RowStatus]  DEFAULT ('Active'),
	[SearchCol] [varchar](max) NULL,
 CONSTRAINT [PK_FlatReceiptsMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
