/****** Object:  Table [dbo].[FlatInvoiceItemsDetails]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FlatInvoiceItemsDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descriptions] [varchar](550) NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[InvoiceNo] [varchar](50) NULL,
	[ReceiptNo] [varchar](50) NULL,
	[CloudReceiptNo] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[AccountNo] [varchar](50) NULL,
	[isSent] [varchar](50) NULL CONSTRAINT [DF_FlatInvoiceItemsDetails_isSent]  DEFAULT ('NO'),
	[GroupNo] [varchar](550) NULL,
 CONSTRAINT [PK_FlatInvoiceItemsDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
