/****** Object:  Table [dbo].[FlatBillPreview]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FlatBillPreview](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FlatBillDesc] [varchar](max) NULL,
	[FlatBillDate] [datetime] NULL,
	[FlatBillPlatNo] [varchar](50) NULL,
	[FlatBillWorkshop] [varchar](50) NULL,
	[FlatBillWorkshopID] [int] NULL,
	[FlatBillIssuedBy] [varchar](50) NULL,
	[FlatBillID] [int] NULL,
	[FlatBillTotalAmount] [varchar](50) NULL,
	[FlatBillNumberIC] [varchar](max) NULL,
	[FlatBillVehicleModel] [varchar](50) NULL,
	[FlatBillImgLogo64] [varchar](max) NULL,
	[FlatBillStatus] [varchar](50) NULL CONSTRAINT [DF_FlatBillPreview_FlatBillStatus]  DEFAULT ('2'),
	[FlatBillUpdateDate] [datetime] NULL,
	[FlatBillUpdateBy] [varchar](50) NULL,
	[CloudreceiptAccNo] [varchar](50) NULL,
	[FlatBillFinalAmount] [varchar](50) NULL,
	[FlatBillTax] [varchar](50) NULL,
	[FlatBillBalance] [varchar](50) NULL,
	[FlatBillDeposit] [varchar](50) NULL,
	[FlatBillMilage] [varchar](50) NULL,
	[FlatBillGSTNo] [varchar](50) NULL,
	[FlatBillTaxInvoice] [varchar](50) NULL,
	[FlatBillBillNo] [varchar](50) NULL,
	[FlatBillCustomerName] [varchar](150) NULL,
	[FlatBillWorkShopAddress] [varchar](250) NULL,
	[FlatBillWorkshopPhoneNo] [varchar](50) NULL,
	[FlatBillCompanyNumber] [varchar](50) NULL,
	[FlatBillPaymentType] [varchar](50) NULL CONSTRAINT [DF_FlatBillPreview_FlatBillPaymentType]  DEFAULT ('Cash'),
	[FlatBillPushNotificationSendStatus] [varchar](50) NULL CONSTRAINT [DF_FlatBillPreview_FlatBillPushNotificationSendStatus]  DEFAULT ('0'),
	[FlatBillUniqueID] [varchar](max) NULL,
	[FlatBillAccountNo] [varchar](50) NULL CONSTRAINT [DF_FlatBillPreview_FlatBillAccountNo]  DEFAULT ('NA'),
	[FlatBillShotDesc] [varchar](150) NULL,
	[FlatBillInvoiceNo] [varchar](50) NULL,
	[FlatBillReceiptNo] [varchar](50) NULL,
	[FlatBillFaxNo] [varchar](50) NULL,
	[FlatBillPremiseEmail] [varchar](50) NULL,
	[FlatBillPremiseWebsite] [varchar](50) NULL,
	[FlatBillOutStandingBalance] [varchar](50) NULL,
	[FlatBillCurrentPaid] [varchar](50) NULL,
	[FlatBillCategory] [varchar](250) NULL,
 CONSTRAINT [PK_FlatBillPreview] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
