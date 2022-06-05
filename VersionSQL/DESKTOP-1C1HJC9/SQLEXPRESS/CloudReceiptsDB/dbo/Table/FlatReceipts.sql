/****** Object:  Table [dbo].[FlatReceipts]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FlatReceipts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FlatReceiptsID] [varchar](550) NULL,
	[FlatReceiptsGroupID] [varchar](max) NULL,
	[FlatReceiptsPlayerID] [varchar](max) NULL,
	[FlatBillCRMobileUserAccountNo] [varchar](max) NULL,
	[FlatReceiptsBSCloudreceiptAccountNo] [varchar](50) NULL,
	[FlatReceiptsReceivedPaymentFrom] [varchar](max) NULL,
	[FlatReceiptsDate] [datetime] NULL,
	[FlatReceiptsSumOf] [decimal](18, 2) NULL,
	[FlatReceiptsIsHasAttachement] [varchar](50) NULL,
	[FlatReceiptsIssuedDate] [varchar](50) NULL,
	[FlatReceiptsIssuedBy] [varchar](50) NULL,
	[FlatReceiptsNo] [varchar](50) NULL,
	[FlatReceiptsPaymentType] [varchar](50) NULL,
	[FlatReceiptsGSTNo] [varchar](50) NULL,
	[FlatReceiptsAccountNo] [varchar](50) NULL,
	[FlatReceiptsInvoiceNo] [varchar](50) NULL,
	[FlatReceiptsOtherTaxNo] [varchar](50) NULL,
	[FlatReceiptsSubTotal] [decimal](18, 2) NULL,
	[FlatReceiptsGSTTAXValue] [decimal](18, 2) NULL,
	[FlatReceiptsOTHERTAXValue] [decimal](18, 2) NULL,
	[FlatReceiptsDiscount] [decimal](18, 2) NULL,
	[FlatReceiptsTotal] [decimal](18, 2) NULL,
	[FlatReceiptsDeposit] [decimal](18, 2) NULL,
	[FlatReceiptsBalance] [decimal](18, 2) NULL,
	[FlatReceiptsCreatedDate] [datetime] NULL,
	[FlatReceiptsCreatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_FlatReceipts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
