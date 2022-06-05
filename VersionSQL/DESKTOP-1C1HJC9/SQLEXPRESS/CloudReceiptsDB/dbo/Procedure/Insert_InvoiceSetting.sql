/****** Object:  Procedure [dbo].[Insert_InvoiceSetting]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Insert_InvoiceSetting]  


@ID int
 ,@InvoiceType varchar (150)=null
      , @InvoiceNo varchar(150)
      , @Price decimal(18, 2)
	  ,@InvoiceDate datetime
      , @DueDateOption varchar(50)
      , @DueDatevalue int
      , @DueDate datetime
      , @LPCRateOption varchar (150)=null
      , @LPCRatevalue decimal(18,2)
      , @LPCRate varchar (150)=null
      , @AgreementPeriodStartDate datetime
      , @AgreementPeriodEndDate datetime
      , @BillingCycleType varchar(50)
      , @BillingCycleValue int
      , @AccountNo varchar (150)
      , @EnterpriseAccountNo varchar (150) 
      , @SendMode varchar(50)
      , @CreatedBy varchar(50)
	  , @ModifiedBy varchar (150)
      , @RowStatus varchar(50)
    
   
	 
AS 
BEGIN 
     SET NOCOUNT ON 
     
   IF Not EXISTS (SELECT ID  FROM InvoiceSetting WHERE ID=@ID  and 1=1)
 
	   INSERT INTO dbo.InvoiceSetting
          ( 
               [InvoiceType]
      ,[InvoiceNo]
      ,[InvoiceDate]
      ,[DueDateOption]
      ,[DueDatevalue]
      ,[DueDate]
      ,[LPCRateOption]
      ,[LPCRatevalue]
      ,[LPCRate]
      ,[AgreementPeriodStartDate]
      ,[AgreementPeriodEndDate]
      ,[BillingCycleType]
      ,[BillingCycleValue]
      ,[AccountNo]
      ,[EnterpriseAccountNo]
      ,[SendMode]
      ,[CreatedBy]
      ,[ModifiedBy]  
      ,[RowStatus]
		          ) 
     VALUES 
          ( 

 @InvoiceType 
      , @InvoiceNo     
	  ,@InvoiceDate
      , @DueDateOption
      , @DueDatevalue
      , @DueDate
      , @LPCRateOption 
      , @LPCRatevalue
      , @LPCRate
      , @AgreementPeriodStartDate
      , @AgreementPeriodEndDate
      , @BillingCycleType
      , @BillingCycleValue 
      , @AccountNo
      , @EnterpriseAccountNo 
      , @SendMode
      , @CreatedBy 
	  , @ModifiedBy
      , @RowStatus 
	  )


	  else

	  Update InvoiceSetting
	  set 
	 InvoiceType=@InvoiceType 
      ,InvoiceNo=@InvoiceNo   
	  ,InvoiceDate=@InvoiceDate
      , DueDateOption=@DueDateOption
      , DueDatevalue=@DueDatevalue
      , DueDate=@DueDate
      , LPCRateOption=@LPCRateOption 
      , LPCRatevalue=@LPCRatevalue
      , LPCRate=@LPCRate
      , AgreementPeriodStartDate=@AgreementPeriodStartDate
      , AgreementPeriodEndDate=@AgreementPeriodEndDate
      , BillingCycleType=@BillingCycleType
      , BillingCycleValue=@BillingCycleValue 
      , AccountNo=@AccountNo
      , @EnterpriseAccountNo=@EnterpriseAccountNo 
      , SendMode=@SendMode    
	  , ModifiedBy=@ModifiedBy
	    , ModifiedDate=getDate()
      ,RowStatus = @RowStatus 
	  where ID =@ID

	END
