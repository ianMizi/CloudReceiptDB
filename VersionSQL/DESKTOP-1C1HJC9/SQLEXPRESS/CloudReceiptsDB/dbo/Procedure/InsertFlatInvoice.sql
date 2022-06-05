/****** Object:  Procedure [dbo].[InsertFlatInvoice]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[InsertFlatInvoice]  
	 @FlatInvoiceTo varchar (150)=null
	 ,@FlatInvoiceCompanyAddress varchar(550)=null
      ,@FlatInvoiceAttentionTo varchar (150)=null
      ,@FlatInvoiceContactNo varchar (150)=null
      ,@FlatInvoicEmailNo varchar (150)=null
      ,@FlatInvoiceNo varchar (150)=null
      ,@FlatInvoiceDate datetime
      ,@FlatInvoiceDueDate datetime
      ,@FlatInvoiceTaxNo varchar (150)=null
      ,@FlatInvoiceAccountNo varchar (150)=null
      ,@FlatInvoiceSendMode varchar (350)=null
      ,@FlatInvoiceOutStandingBalance decimal(18, 2)
      ,@FlatInvoicePreviousPayment decimal(18, 2)
      ,@FlatInvoiceCreditBalance decimal(18, 2)
      ,@FlatInvoicePenaltyCharge decimal(18, 2)
      ,@FlatInvoiceCurrentCharge decimal(18, 2)
      ,@FlatInvoiceAmountToBePaid decimal(18, 2)
      ,@FlatInvoiceSubTotal decimal(18, 2)
      ,@FlatInvoiceTaxAmount decimal(18, 2)
      ,@FlatInvoiceDiscount decimal(18, 2)
      ,@FlatInvoiceGrandTotal decimal(18, 2)
      ,@FlatInvoiceTermAndCondition varchar (MAX)=null
      ,@CloudreceiptAccNo varchar (150)=null
      ,@FlatInvoiceUniqueID varchar (150)=null
      ,@FlatInvoiceReceiptNo varchar (150)=null
      ,@FlatInvoiceCurrentPaid decimal(18, 2)
      ,@SearchCol varchar (150)=null
      ,@RowStatus varchar (150)=null
      ,@FlatInvoiceIssuedBy varchar (150)=null
      ,@FlatInvoiceIssuedDate datetime
      ,@FlatInvoiceUpdateDate datetime
      ,@FlatInvoiceUpdateby varchar (150)=null
	   ,@FlatInvoiceStatus varchar (150)=null
	    ,@FlatInvoiceSendingMode varchar (150)=null
		 ,@FlatInvoiceCycle varchar (150)=null
	  ,@FlatInvoiceCycleValue varchar (150)=null
	  ,@FlatInvoiceQuotationNo varchar (150)=null
	  ,@FlatInvoiceSubject varchar (max)=null
	   ,@FlatInvoiceNote varchar (750)=null
	     ,@FlatInvoiceDiscountPercentage decimal(18, 2)
	   ,@FlatInvoiceDocType varchar (750)=null
AS 
BEGIN 
     SET NOCOUNT ON 
     
  

	   INSERT INTO dbo.FlatInvoice
          ( 
                [FlatInvoiceTo]
				,[FlatInvoiceCompanyAddress]
      ,[FlatInvoiceAttentionTo]
      ,[FlatInvoiceContactNo]
      ,[FlatInvoicEmailNo]
      ,[FlatInvoiceNo]
      ,[FlatInvoiceDate]
      ,[FlatInvoiceDueDate]
      ,[FlatInvoiceTaxNo]
      ,[FlatInvoiceAccountNo]
      ,[FlatInvoiceSendMode]
      ,[FlatInvoiceOutStandingBalance]
      ,[FlatInvoicePreviousPayment]
      ,[FlatInvoiceCreditBalance]
      ,[FlatInvoicePenaltyCharge]
      ,[FlatInvoiceCurrentCharge]
      ,[FlatInvoiceAmountToBePaid]
      ,[FlatInvoiceSubTotal]
      ,[FlatInvoiceTaxAmount]
      ,[FlatInvoiceDiscount]
      ,[FlatInvoiceGrandTotal]
      ,[FlatInvoiceTermAndCondition]
      ,[CloudreceiptAccNo]
      ,[FlatInvoiceUniqueID]
      ,[FlatInvoiceReceiptNo]
      ,[FlatInvoiceCurrentPaid]
      ,[SearchCol]
      ,[RowStatus]
      ,[FlatInvoiceIssuedBy]
      ,[FlatInvoiceIssuedDate]
      ,[FlatInvoiceUpdateDate]
      ,[FlatInvoiceUpdateby]
	  ,[FlatInvoiceStatus] 
	    ,[FlatInvoiceSendingMode]
		 ,[FlatInvoiceCycle]
	  ,[FlatInvoiceCycleValue]
		,[FlatInvoiceQuotationNo]
		,[FlatInvoiceSubject]
		,[FlatInvoiceNote]
		,[FlatInvoiceDiscountPercentage]
	   ,[FlatInvoiceDocType]
		          ) 
     VALUES 
          ( 


@FlatInvoiceTo
,@FlatInvoiceCompanyAddress
      ,@FlatInvoiceAttentionTo
      ,@FlatInvoiceContactNo
      ,@FlatInvoicEmailNo
      ,@FlatInvoiceNo
      ,@FlatInvoiceDate
      ,@FlatInvoiceDueDate
      ,@FlatInvoiceTaxNo
      ,@FlatInvoiceAccountNo
      ,@FlatInvoiceSendMode
      ,@FlatInvoiceOutStandingBalance
      ,@FlatInvoicePreviousPayment
      ,@FlatInvoiceCreditBalance
      ,@FlatInvoicePenaltyCharge
      ,@FlatInvoiceCurrentCharge
      ,@FlatInvoiceAmountToBePaid
      ,@FlatInvoiceSubTotal
      ,@FlatInvoiceTaxAmount
      ,@FlatInvoiceDiscount
      ,@FlatInvoiceGrandTotal
      ,@FlatInvoiceTermAndCondition
      ,@CloudreceiptAccNo
      ,@FlatInvoiceUniqueID
      ,@FlatInvoiceReceiptNo
      ,@FlatInvoiceCurrentPaid
      ,@SearchCol
      ,@RowStatus
      ,@FlatInvoiceIssuedBy
      ,@FlatInvoiceIssuedDate
      ,@FlatInvoiceUpdateDate
      ,@FlatInvoiceUpdateby
	  ,@FlatInvoiceStatus
	  	    ,@FlatInvoiceSendingMode
		,@FlatInvoiceCycle
	  ,@FlatInvoiceCycleValue
	  ,@FlatInvoiceQuotationNo
	  ,@FlatInvoiceSubject
	  ,@FlatInvoiceNote
	  ,@FlatInvoiceDiscountPercentage 
	   ,@FlatInvoiceDocType
	  )

	END

	BEGIN

	UPDATE FlatInvoiceItemsDetails
	SET isSent='YES',RowStatus='Active',CreatedDate=getDate(),TaxAmount=0.00,DiscountAmount=0.00
	where CloudReceiptNo=@CloudreceiptAccNo and InvoiceNo=@FlatInvoiceNo


	END





	
