/****** Object:  Procedure [dbo].[API_InsertFlatBillPreview]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[API_InsertFlatBillPreview]  
	@FlatBillDesc varchar (MAX)=null,
	@FlatBillDate datetime,
@FlatBillPlatNo varchar (150)=null,
@FlatBillWorkshop varchar (150)=null,
@FlatBillWorkshopID int,
@FlatBillIssuedBy varchar (150)=null,
@FlatBillID int=null,
@FlatBillTotalAmount varchar (150)=null,
@FlatBillNumberIC varchar (150)=null,
@FlatBillVehicleModel varchar (150)=null,
@FlatBillImgLogo64 varchar (MAX)=null,
--@FlatBillStatus varchar (150)=null,
--@FlatBillUpdateDate datetime,
--@FlatBillUpdateBy  varchar (150)=null,
@CloudreceiptAccNo varchar (150)=null,
@FlatBillFinalAmount varchar (150)=null,
@FlatBillTax varchar (150)=null,
@FlatBillBalance varchar (150)=null,
@FlatBillDeposit varchar (150)=null,
@FlatBillMilage varchar (150)=null,
@FlatBillGSTNo varchar (150)=null,
@FlatBillTaxInvoice varchar (150)=null,
@FlatBillBillNo varchar (150)=null,
@FlatBillCustomerName varchar (150)=null,
@FlatBillWorkShopAddress varchar (150)=null,
@FlatBillWorkshopPhoneNo varchar (150)=null,
@FlatBillCompanyNumber varchar (150)=null,
@FlatBillPaymentType varchar (150)=null,
--@FlatBillPushNotificationSendStatus varchar (150)='0',
@FlatBillUniqueID varchar (MAX)=null,
@FlatBillAccountNo varchar (150)=null,
@FlatBillShotDesc varchar (150)=null,
@FlatBillInvoiceNo varchar (150)=null,
@FlatBillReceiptNo varchar (150)=null,
@FlatBillFaxNo  varchar (150)=null,
@FlatBillPremiseEmail  varchar (150)=null,
@FlatBillPremiseWebsite  varchar (150)=null,
@FlatBillOutStandingBalance  varchar (50)=null,
@FlatBillCurrentPaid  varchar (50)=null,
@FlatBillCategory varchar (150)=null


AS 
BEGIN 
     SET NOCOUNT ON 
     
  

	   INSERT INTO dbo.FlatBillPreview
          ( 
                [FlatBillDesc]
      ,[FlatBillDate]
      ,[FlatBillPlatNo]
      ,[FlatBillWorkshop]
      ,[FlatBillWorkshopID]
      ,[FlatBillIssuedBy]
      ,[FlatBillID]
      ,[FlatBillTotalAmount]
      ,[FlatBillNumberIC]
      ,[FlatBillVehicleModel]
      ,[FlatBillImgLogo64]
      --,[FlatBillStatus]
      --,[FlatBillUpdateDate]
      --,[FlatBillUpdateBy]
      ,[CloudreceiptAccNo]
      ,[FlatBillFinalAmount]
      ,[FlatBillTax]
      ,[FlatBillBalance]
      ,[FlatBillDeposit]
      ,[FlatBillMilage]
      ,[FlatBillGSTNo]
      ,[FlatBillTaxInvoice]
      ,[FlatBillBillNo]
      ,[FlatBillCustomerName]
      ,[FlatBillWorkShopAddress]
      ,[FlatBillWorkshopPhoneNo]
      ,[FlatBillCompanyNumber]
      ,[FlatBillPaymentType]

      ,[FlatBillUniqueID]
      ,[FlatBillAccountNo]
      ,[FlatBillShotDesc]
      ,[FlatBillInvoiceNo]
      ,[FlatBillReceiptNo]
	  ,FlatBillFaxNo
	  ,FlatBillPremiseEmail
	  ,FlatBillPremiseWebsite
	  ,FlatBillOutStandingBalance
	  ,FlatBillCurrentPaid
	  ,FlatBillCategory
		          ) 
     VALUES 
          ( 



		  @FlatBillDesc,
@FlatBillDate,
@FlatBillPlatNo,
@FlatBillWorkshop,
@FlatBillWorkshopID,
@FlatBillIssuedBy,
@FlatBillID,
@FlatBillTotalAmount,
@FlatBillNumberIC,
@FlatBillVehicleModel,
@FlatBillImgLogo64,
--@FlatBillUpdateDate,
--@FlatBillUpdateBy,
@CloudreceiptAccNo,
@FlatBillFinalAmount,
@FlatBillTax,
@FlatBillBalance,
@FlatBillDeposit,
@FlatBillMilage,
@FlatBillGSTNo,
@FlatBillTaxInvoice,
@FlatBillBillNo,
@FlatBillCustomerName,
@FlatBillWorkShopAddress,
@FlatBillWorkshopPhoneNo,
@FlatBillCompanyNumber,
@FlatBillPaymentType,

@FlatBillUniqueID,
@FlatBillAccountNo,
@FlatBillShotDesc,
@FlatBillInvoiceNo,
@FlatBillReceiptNo,
@FlatBillFaxNo,
@FlatBillPremiseEmail,
@FlatBillPremiseWebsite,
@FlatBillOutStandingBalance,
@FlatBillCurrentPaid,
@FlatBillCategory

 )

	END
