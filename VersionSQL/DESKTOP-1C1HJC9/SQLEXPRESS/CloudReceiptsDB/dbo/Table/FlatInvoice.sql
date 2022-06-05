/****** Object:  Table [dbo].[FlatInvoice]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FlatInvoice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FlatInvoiceTo] [varchar](250) NULL,
	[FlatInvoiceCompanyAddress] [varchar](550) NULL,
	[FlatInvoiceAttentionTo] [varchar](250) NULL,
	[FlatInvoiceContactNo] [varchar](50) NULL,
	[FlatInvoicEmailNo] [varchar](50) NULL,
	[FlatInvoiceNo] [varchar](50) NULL,
	[FlatInvoiceDate] [date] NULL,
	[FlatInvoiceDueDate] [datetime] NULL,
	[FlatInvoiceTaxNo] [varchar](50) NULL,
	[FlatInvoiceAccountNo] [varchar](50) NULL CONSTRAINT [DF_FlatInvoice_FlatInvoiceAccountNo]  DEFAULT ('NA'),
	[FlatInvoiceSendMode] [varchar](350) NULL,
	[FlatInvoiceOutStandingBalance] [decimal](18, 2) NULL,
	[FlatInvoicePreviousPayment] [decimal](18, 2) NULL,
	[FlatInvoiceCreditBalance] [decimal](18, 2) NULL,
	[FlatInvoicePenaltyCharge] [decimal](18, 2) NULL CONSTRAINT [DF_FlatInvoice_FlatInvoiceStatus]  DEFAULT ('2'),
	[FlatInvoiceCurrentCharge] [decimal](18, 2) NULL,
	[FlatInvoiceAmountToBePaid] [decimal](18, 2) NULL,
	[FlatInvoiceSubTotal] [decimal](18, 2) NULL,
	[FlatInvoiceTaxAmount] [decimal](18, 2) NULL,
	[FlatInvoiceDiscount] [decimal](18, 2) NULL,
	[FlatInvoiceGrandTotal] [decimal](18, 2) NULL,
	[FlatInvoiceTermAndCondition] [varchar](max) NULL,
	[CloudreceiptAccNo] [varchar](50) NULL,
	[FlatInvoiceUniqueID] [varchar](max) NULL,
	[FlatInvoiceReceiptNo] [varchar](50) NULL,
	[FlatInvoiceCurrentPaid] [decimal](18, 2) NULL,
	[SearchCol] [varchar](max) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_FlatInvoice_RowStatus]  DEFAULT ('Active'),
	[FlatInvoiceIssuedBy] [varchar](150) NULL,
	[FlatInvoiceIssuedDate] [datetime] NULL CONSTRAINT [DF_FlatInvoice_FlatInvoiceIssuedDate]  DEFAULT (getdate()),
	[FlatInvoiceUpdateDate] [datetime] NULL,
	[FlatInvoiceUpdateby] [varchar](50) NULL,
	[FlatInvoiceStatus] [varchar](50) NULL,
	[FlatInvoiceSendingMode] [varchar](150) NULL,
	[FlatInvoiceCycle] [varchar](50) NULL,
	[FlatInvoiceCycleValue] [varchar](50) NULL,
	[FlatInvoiceQuotationNo] [varchar](150) NULL,
	[FlatInvoiceSubject] [varchar](max) NULL,
	[FlatInvoiceNote] [varchar](750) NULL,
	[FlatInvoiceDiscountPercentage] [decimal](18, 2) NULL,
	[FlatInvoiceDocType] [varchar](50) NULL,
 CONSTRAINT [PK_FlatInvoice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
