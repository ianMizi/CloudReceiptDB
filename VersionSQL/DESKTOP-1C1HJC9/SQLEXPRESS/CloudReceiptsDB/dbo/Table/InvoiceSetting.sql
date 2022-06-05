/****** Object:  Table [dbo].[InvoiceSetting]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[InvoiceSetting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceType] [varchar](150) NULL,
	[InvoiceNo] [varchar](150) NULL,
	[InvoiceDate] [datetime] NULL,
	[DueDateOption] [varchar](50) NULL,
	[DueDatevalue] [int] NULL,
	[DueDate] [datetime] NULL,
	[LPCRateOption] [varchar](50) NULL,
	[LPCRatevalue] [decimal](18, 2) NULL,
	[LPCRate] [varchar](50) NULL,
	[AgreementPeriodStartDate] [datetime] NULL,
	[AgreementPeriodEndDate] [datetime] NULL,
	[BillingCycleType] [varchar](50) NULL,
	[BillingCycleValue] [int] NULL,
	[AccountNo] [varchar](50) NULL,
	[EnterpriseAccountNo] [varchar](50) NULL,
	[SendMode] [varchar](150) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL,
 CONSTRAINT [PK_InvoiceSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[InvoiceSetting] ADD  CONSTRAINT [DF_InvoiceSetting_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
ALTER TABLE [dbo].[InvoiceSetting] ADD  CONSTRAINT [DF_InvoiceSetting_RowStatus]  DEFAULT ('Active') FOR [RowStatus]
