/****** Object:  Table [dbo].[Enterprise]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Enterprise](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[EnterpriseName] [varchar](250) NULL,
	[EnterpriseAddress] [varchar](250) NULL,
	[EnterpriseRegistrationNo] [varchar](50) NULL,
	[EnterpriseGSTNo] [varchar](50) NULL,
	[EnterpriseEmail] [varchar](50) NULL,
	[EnterpriseWebsite] [varchar](50) NULL,
	[EnterprisePhoneNo] [varchar](50) NULL,
	[EnterpriseFaxNo] [varchar](50) NULL,
	[EnterpriseLogo] [image] NULL,
	[EnterpriseLogo64] [varchar](max) NULL,
	[EnterpriseLogoPath] [varchar](550) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_Enterprise_RowStatus]  DEFAULT ('Active'),
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_Enterprise_CreatedDate]  DEFAULT (getdate()),
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [varchar](50) NULL CONSTRAINT [DF_Enterprise_Status]  DEFAULT ('Active'),
	[EnterpriseTaxNo] [varchar](50) NULL,
	[isTaxApplied] [varchar](50) NULL CONSTRAINT [DF_Enterprise_isTaxApplied]  DEFAULT ('N'),
	[TaxRate] [decimal](18, 2) NULL,
	[EnterpriseDescriptions] [varchar](550) NULL,
	[ReceiptTemplateCode] [varchar](50) NULL CONSTRAINT [DF_Enterprise_ReceiptTemplateCode]  DEFAULT ('TR4'),
	[ReceiptAdvertisementImg] [varchar](max) NULL,
	[isFeedBackFormEnabled] [varchar](50) NULL CONSTRAINT [DF_Enterprise_isFeedBackForm]  DEFAULT ('N'),
	[EnterpriseFacebook] [varchar](250) NULL,
	[EnterpriseTwiter] [varchar](250) NULL,
	[EnterpriseInstagram] [varchar](250) NULL,
	[ReceiptNoStarted] [int] NULL CONSTRAINT [DF_Enterprise_ReceiptNoStarted]  DEFAULT ((0)),
	[InvoiceNoStarted] [int] NULL CONSTRAINT [DF_Enterprise_InvoiceNoStarted]  DEFAULT ((0)),
	[QuotationNoStarted] [int] NULL CONSTRAINT [DF_Enterprise_QuotationNoStarted]  DEFAULT ((0)),
	[ReceiptNoFormat] [varchar](50) NULL CONSTRAINT [DF_Enterprise_ReceiptNoFormat]  DEFAULT ('REC'),
	[InvoiceNoFormat] [varchar](50) NULL CONSTRAINT [DF_Enterprise_InvoiceNoFormat]  DEFAULT ('INV'),
	[QuotationNoFormat] [varchar](50) NULL CONSTRAINT [DF_Enterprise_QuotationNoFormat]  DEFAULT ('QUO'),
	[LoyaltyCardType] [varchar](50) NULL,
	[EnterpriseCoordinate] [varchar](150) NULL,
 CONSTRAINT [PK_Enterprise] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
Create TRIGGER [dbo].[InsertTaxTable] ON [dbo].[Enterprise]
  AFTER INSERT
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 
  -- get the last id value of the record inserted or updated
 Declare @EnterpriseAccNo varchar (100)
  Declare @EnterpriseRegistrationNo varchar (100)
  DECLARE @id INT
  SELECT @id = ID
  FROM INSERTED
 
 set @EnterpriseAccNo=(select EnterpriseAccNo from Enterprise where ID=@id)
  set @EnterpriseRegistrationNo=(select EnterpriseRegistrationNo from Enterprise where ID=@id)

   IF NOT EXISTS (SELECT EnterpriseAccNo  FROM Enterprise WHERE EnterpriseAccNo=@EnterpriseAccNo  and 1=1)
    
   INSERT INTO dbo.TaxTable
          ( 
               [EnterpriseAccNo]
      ,[EnterpriseRegistrationNo]
      ,[TaxName]
      ,[TaxNo]
      ,[TaxRate]
      ,[RowStatus]
		          ) 
     VALUES 
          ( 
@EnterpriseAccNo,
 @EnterpriseRegistrationNo,
 'SST',
 'NA',
 0.00,
 'Active'
	  )
 

 
END
