/****** Object:  Procedure [dbo].[API_InsertFlatBill]    Committed by VersionSQL https://www.versionsql.com ******/

--ALTER PROCEDURE [dbo].[API_InsertFlatBill]  
--	@FlatBillDesc varchar (MAX)=null,
--	@FlatBillDate datetime,
--@FlatBillPlatNo varchar (150)=null,
--@FlatBillWorkshop varchar (150)=null,
--@FlatBillWorkshopID int,
--@FlatBillIssuedBy varchar (150)=null,
--@FlatBillID int=null,
--@FlatBillTotalAmount varchar (150)=null,
--@FlatBillNumberIC varchar (150)=null,
--@FlatBillVehicleModel varchar (150)=null,
--@FlatBillImgLogo64 varchar (MAX)=null,
----@FlatBillStatus varchar (150)=null,
----@FlatBillUpdateDate datetime,
----@FlatBillUpdateBy  varchar (150)=null,
--@CloudreceiptAccNo varchar (150)=null,
--@FlatBillFinalAmount varchar (150)=null,
--@FlatBillTax varchar (150)=null,
--@FlatBillBalance varchar (150)=null,
--@FlatBillDeposit varchar (150)=null,
--@FlatBillMilage varchar (150)=null,
--@FlatBillGSTNo varchar (150)=null,
--@FlatBillTaxInvoice varchar (150)=null,
--@FlatBillBillNo varchar (150)=null,
--@FlatBillCustomerName varchar (150)=null,
--@FlatBillWorkShopAddress varchar (150)=null,
--@FlatBillWorkshopPhoneNo varchar (150)=null,
--@FlatBillCompanyNumber varchar (150)=null,
--@FlatBillPaymentType varchar (150)=null,
----@FlatBillPushNotificationSendStatus varchar (150)='0',
--@FlatBillUniqueID varchar (MAX)=null,
--@FlatBillAccountNo varchar (150)=null,
--@FlatBillShotDesc varchar (150)=null,
--@FlatBillInvoiceNo varchar (150)=null,
--@FlatBillReceiptNo varchar (150)=null,
--@FlatBillFaxNo  varchar (150)=null,
--@FlatBillPremiseEmail  varchar (150)=null,
--@FlatBillPremiseWebsite  varchar (150)=null,
--@FlatBillOutStandingBalance  varchar (50)=null,
--@FlatBillCurrentPaid  varchar (50)=null
--AS 
--BEGIN 
--     SET NOCOUNT ON 
     
  

--	   INSERT INTO dbo.FlatBill
--          ( 
--                [FlatBillDesc]
--      ,[FlatBillDate]
--      ,[FlatBillPlatNo]
--      ,[FlatBillWorkshop]
--      ,[FlatBillWorkshopID]
--      ,[FlatBillIssuedBy]
--      ,[FlatBillID]
--      ,[FlatBillTotalAmount]
--      ,[FlatBillNumberIC]
--      ,[FlatBillVehicleModel]
--      ,[FlatBillImgLogo64]
--      --,[FlatBillStatus]
--      --,[FlatBillUpdateDate]
--      --,[FlatBillUpdateBy]
--      ,[CloudreceiptAccNo]
--      ,[FlatBillFinalAmount]
--      ,[FlatBillTax]
--      ,[FlatBillBalance]
--      ,[FlatBillDeposit]
--      ,[FlatBillMilage]
--      ,[FlatBillGSTNo]
--      ,[FlatBillTaxInvoice]
--      ,[FlatBillBillNo]
--      ,[FlatBillCustomerName]
--      ,[FlatBillWorkShopAddress]
--      ,[FlatBillWorkshopPhoneNo]
--      ,[FlatBillCompanyNumber]
--      ,[FlatBillPaymentType]

--      ,[FlatBillUniqueID]
--      ,[FlatBillAccountNo]
--      ,[FlatBillShotDesc]
--      ,[FlatBillInvoiceNo]
--      ,[FlatBillReceiptNo]
--	  ,FlatBillFaxNo
--	  ,FlatBillPremiseEmail
--	  ,FlatBillPremiseWebsite
--	  ,FlatBillOutStandingBalance
--	  ,FlatBillCurrentPaid
--		          ) 
--     VALUES 
--          ( 



--		  @FlatBillDesc,
--@FlatBillDate,
--@FlatBillPlatNo,
--@FlatBillWorkshop,
--@FlatBillWorkshopID,
--@FlatBillIssuedBy,
--@FlatBillID,
--@FlatBillTotalAmount,
--@FlatBillNumberIC,
--@FlatBillVehicleModel,
--@FlatBillImgLogo64,
----@FlatBillUpdateDate,
----@FlatBillUpdateBy,
--@CloudreceiptAccNo,
--@FlatBillFinalAmount,
--@FlatBillTax,
--@FlatBillBalance,
--@FlatBillDeposit,
--@FlatBillMilage,
--@FlatBillGSTNo,
--@FlatBillTaxInvoice,
--@FlatBillBillNo,
--@FlatBillCustomerName,
--@FlatBillWorkShopAddress,
--@FlatBillWorkshopPhoneNo,
--@FlatBillCompanyNumber,
--@FlatBillPaymentType,

--@FlatBillUniqueID,
--@FlatBillAccountNo,
--@FlatBillShotDesc,
--@FlatBillInvoiceNo,
--@FlatBillReceiptNo,
--@FlatBillFaxNo,
--@FlatBillPremiseEmail,
--@FlatBillPremiseWebsite,
--@FlatBillOutStandingBalance,
--@FlatBillCurrentPaid


-- )






CREATE PROCEDURE [dbo].[API_InsertFlatBill]  
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
@FlatBillGSTNo varchar (150)='0.00',
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
@FlatBillInvoiceNo varchar (350)='NA',
@FlatBillReceiptNo varchar (150)=null,
@FlatBillFaxNo  varchar (150)=null,
@FlatBillPremiseEmail  varchar (150)=null,
@FlatBillPremiseWebsite  varchar (150)=null,
@FlatBillOutStandingBalance  varchar (50)=null,
@FlatBillCurrentPaid  varchar (50)=null,
@FlatBillCategory varchar (150)=null,
@isReceiptCancel varchar (50)=null


AS 
BEGIN 
     SET NOCOUNT ON 
     
  Declare @value as varchar (1000)
   Declare @CurrentPaidDecimal decimal(18,2)
     set  @CurrentPaidDecimal=(Select cast (@FlatBillCurrentPaid  as decimal(18,2)))
  set @value=(@FlatBillReceiptNo +'|'+@FlatBillCustomerName+'|'+@FlatBillCategory+'|'+@FlatBillPaymentType+'|'+@FlatBillInvoiceNo)


	   INSERT INTO dbo.FlatBill
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
	  ,SearchCol
	  ,FlatBillCurrentPaidDecimal
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
@FlatBillCategory,
@value,
@CurrentPaidDecimal

 )







 update FlatReceiptsDetails
 set IsSent='Yes'
 where FlatReceiptsID=@FlatBillBillNo

 declare @Noti varchar (100)
  declare @MobilePhone varchar (100)
  declare @Name varchar (100)
 set @Noti=(@FlatBillWorkshop +'- Paid:'+ @FlatBillCurrentPaid)
  set @MobilePhone =(select CR_PhoneNumber from CloudReceipts_MobileUser where CR_MykadNo=@FlatBillNumberIC)
   set @Name =(select CR_AccountName from CloudReceipts_MobileUser where CR_MykadNo=@FlatBillNumberIC)
    	  Exec dbo.NotificationsFromFlatBill_InsertNotifications @Noti,@FlatBillID,@FlatBillPaymentType,@FlatBillNumberIC,@FlatBillCurrentPaid,@FlatBillIssuedBy,@CloudreceiptAccNo,@FlatBillWorkshop,@MobilePhone,@Name




		  	if(@FlatBillCategory='Refund')
	update FlatBill  
set FlatBillUpdateDate=GETDATE(),FlatBillUpdateBy=@FlatBillIssuedBy,
RowStatus='Refund'
where FlatBillReceiptNo=@FlatBillReceiptNo
	 and FlatBillUniqueID=@FlatBillUniqueID
	END



	begin
		--	declare @CurrPaid decimal(18,2)
		declare @CurrBal decimal(18,2)
		 DECLARE @Total as Decimal (18,2)
	--set @CurrPaid=(SELECT CAST(@FlatBillOutStandingBalance AS decimal(18,2)))-(SELECT CAST(@FlatBillCurrentPaid AS decimal(18,2)))


	--set @Total=([dbo].[FlatBill_getToTalAmoutPaid](@FlatBillReceiptNo))
	--	set @CurrBal=(@Total)-(SELECT CAST(@FlatBillCurrentPaid AS decimal(18,2)))		
	 	if(@FlatBillCategory='Refund')

		
	update FlatBill  
set FlatBillCurrentPaid='Refunds<br>'+@FlatBillCurrentPaid
where FlatBillBillNo=@FlatBillBillNo
else

		declare @CurrBali decimal(18,2)  
	end



	begin

	 	if(@FlatBillCategory='Refund<br>(Resend)')
	update FlatBill  
set FlatBillUpdateDate=GETDATE(),FlatBillUpdateBy=@FlatBillIssuedBy,
FlatBillCategory='Refund',RowStatus='Resend'
where FlatBillUniqueID=@FlatBillUniqueID
	if(@FlatBillCategory='Partially Paid<br>(Resend)')
	update FlatBill  
set FlatBillUpdateDate=GETDATE(),FlatBillUpdateBy=@FlatBillIssuedBy,
FlatBillCategory='Partially Paid',RowStatus='Resend'
where FlatBillUniqueID=@FlatBillUniqueID
	if(@FlatBillCategory='Full Paid<br>(Resend)')
	update FlatBill  
set FlatBillUpdateDate=GETDATE(),FlatBillUpdateBy=@FlatBillIssuedBy,
FlatBillCategory='Full Paid',RowStatus='Resend'
where FlatBillUniqueID=@FlatBillUniqueID




	end



	begin

	if(@isReceiptCancel ='Y')
	update FlatBill  
set FlatBillUpdateDate=GETDATE(),FlatBillUpdateBy=@FlatBillIssuedBy,
RowStatus='InActive'
where FlatBillUniqueID=@FlatBillUniqueID

	end





--   begin

--   	Declare @PaymentStatus varchar (250)
--    Declare @ReceiptNo varchar (250)
  
--   set @PaymentStatus =(select FlatBillTaxInvoice from FlatBill  where FlatBillUniqueID=@FlatBillUniqueID)
--   set @ReceiptNo =(select FlatBillReceiptNo from FlatBill  where FlatBillUniqueID=@FlatBillUniqueID)
--   if(@PaymentStatus='Refund')

--     DECLARE @FlatBillTotalPaid as decimal (18,2)
--    DECLARE @TotalRefundAmount as decimal (18,2)=0.00
--	 DECLARE @TotalOutStandingBalanceForRefund as decimal (18,2)

--SET	@FlatBillTotalPaid =(select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo  and RowStatus ='Active')
--SET @TotalRefundAmount=(select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo  and FlatBillTaxInvoice ='Refund')
--SET @TotalOutStandingBalanceForRefund=(SELECT @FlatBillTotalPaid-@TotalRefundAmount)

--   update FlatBill
--	set FlatBillOutStandingBalance=@TotalOutStandingBalanceForRefund
--	where FlatBillUniqueID=@FlatBillUniqueID
--	end


	--enable TRIGGER [InsertTotalAmountCollected] ON FlatBill 
  --select  top 10 * from FlatBill order by ID desc
  --select * from FlatBill where FlatBillReceiptNo='CRian-315297-46-1' order by 
  --select  top 10 * from FlatReceiptsDetails order by ID desc

  --delete from FlatBill
  --where ID=1658
 -- 	 DECLARE @Total as Decimal (18,2)
 -- 	set @Total=([dbo].[FlatBill_getToTalAmoutPaid]('CRian-315297-48-1'))
	--print @Total

	--  select  top 5 * from FlatBill order by ID desc
	--  select  ROW_NUMBER() OVER(ORDER BY F.ID DESC) AS No,F.ID,[dbo].[FlatBill_getTopIDByReceiptNo](F.FlatBillReceiptNo) as TopID,F.FlatBillShotDesc as Notification,F.FlatBillDate as NotificationDate,F.FlatBillPaymentType as PaymentType,F.FlatBillID as FlatbilliD,F.FlatBillCurrentPaid as TotalPaid,CM.CR_AccountNo as AccountNo,F.CloudreceiptAccNo as EnterpriseAccNo,CM.CR_AccountName,f.FlatBillNumberIC as MyKadID,f.FlatBillPushNotificationSendStatus as IsRead,f.FlatBillPushNotificationSendStatus as IsOpen,f.FlatBillDate as NotificationReadDate,F.SearchCol,F.FlatBillTaxInvoice as BillPaymentStatus,F.FlatBillFinalAmount,F.FlatBillTax,F.FlatBillBalance,F.FlatBillDeposit,F.FlatBillShotDesc,F.FlatBillReceiptNo,F.FlatBillOutStandingBalance,F.FlatBillCurrentPaid,E.ReceiptTemplateCode,F.FlatBillReceiptNo , F.FlatBillBillNo,CM.CR_PlayerID,F.FlatBillAccountNo,F.FlatbillIssuedBy,F.FlatBillImgLogo64 ,F.FlatBillTotalAmount,F.FlatBillGSTNo,F.FlatBillPlatNo,F.FlatBillVehicleModel,F.FlatBillMilage,F.FlatBillPremiseEmail,F.FlatBillPremiseWebsite,F.FlatBillInvoiceNo,F.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PlayerID,CM.CR_PhoneNumber,F.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](F.FlatBillReceiptNo) as TotalPaidAmount, [dbo].[FlatBill_CheckIsFullPaid](F.FlatBillReceiptNo) as isFullPaid from  Flatbill F inner join CloudReceipts_MobileUser CM
	--on F.FlatBillNumberIC = CM.CR_AccountNo inner join  Enterprise E on F.CloudreceiptAccNo=E.EnterpriseAccNo
	--where  E.EnterpriseAccNo='CRian-315297' and  MONTH(F.FlatBillDate) =7 AND YEAR(F.FlatBillDate) =2018

	--delete from flatbill where ID=1695
