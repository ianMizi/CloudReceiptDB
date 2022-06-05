/****** Object:  Procedure [dbo].[FlatReceiptsDetails_ByReceiptNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[FlatReceiptsDetails_ByReceiptNo]  
	
	@ReceiptNo varchar (250)
AS 
BEGIN 


     SET NOCOUNT ON 
    SELECT TOP 1 ROW_NUMBER() OVER(ORDER BY t.ID DESC) AS No, t.ID,[dbo].[FlatBill_getTopIDByReceiptNo](t.FlatBillReceiptNo) as TopID,t.FlatBillShotDesc as Notification,t.FlatBillDate as NotificationDate,t.FlatBillPaymentType as PaymentType,t.FlatBillID as FlatbilliD,t.FlatBillCurrentPaid as TotalPaid,CM.CR_AccountNo as AccountNo,t.CloudreceiptAccNo as EnterpriseAccNo,CM.CR_AccountName,t.FlatBillNumberIC as MyKadID,t.FlatBillPushNotificationSendStatus as IsRead,t.FlatBillPushNotificationSendStatus as IsOpen,t.FlatBillDate as NotificationReadDate,t.SearchCol,t.FlatBillTaxInvoice as BillPaymentStatus,t.FlatBillFinalAmount,t.FlatBillTax,t.FlatBillBalance,t.FlatBillDeposit,t.FlatBillShotDesc,t.FlatBillReceiptNo,t.FlatBillOutStandingBalance,t.FlatBillCurrentPaid,E.ReceiptTemplateCode,t.FlatBillReceiptNo , t.FlatBillBillNo,CM.CR_PlayerID,t.FlatBillAccountNo,t.FlatbillIssuedBy,t.FlatBillImgLogo64 ,t.FlatBillTotalAmount,[dbo].[FlatBill_getTotalDiscount](t.FlatBillReceiptNo) as FlatBillGSTNo,t.FlatBillPlatNo,t.FlatBillVehicleModel,t.FlatBillMilage,t.FlatBillPremiseEmail,t.FlatBillPremiseWebsite,t.FlatBillInvoiceNo,t.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PlayerID,CM.CR_PhoneNumber,t.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](t.FlatBillReceiptNo) as TotalRefundBalance, [dbo].[FlatBill_CheckIsFullPaid](t.FlatBillReceiptNo) as isFullPaid,[dbo].[FlatBill_getRefundStatus](t.FlatBillReceiptNo) as RefundStatus,[dbo].[FlatBill_CheckIsCancelled](t.FlatBillReceiptNo) as isCancelReceipt,[dbo].[FlatBill_CalculateBalanceFromRefund](t.FlatBillReceiptNo) as TotalPaidAmount 
from Flatbill t 

inner join CloudReceipts_MobileUser CM on t.FlatBillNumberIC = CM.CR_AccountNo inner join  Enterprise E on t.CloudreceiptAccNo=E.EnterpriseAccNo
where t.flatBillReceiptNo=@ReceiptNo
 

 
  -- select   * from FlatInvoiceItemsDetails
  --    select   * from FlatReceiptsDetails
  --where FlatReceiptsID=@FlatReceiptsID
	-- 
	     --Exec dbo.Notifications_InsertNotifications @NotificationCode,@NotificationTitle,@PublishBy,@Audience,@EnterpriseAccNo,@Notification,@AdvertisementImage
	END
	--begin
	--delete  from FlatReceiptsDetails  where FlatReceiptsID=@FlatReceiptsGroupID
	--end
	 
   ----select   * from FlatInvoiceItemsDetails
      --select   * from FlatReceiptsDetails order by ID desc
--delete from FlatReceiptsDetails

--	40158641008
--select  top 10 * from FlatReceiptsDetails	where flatReceiptsID='40158681024'

--delete from Flatbill where FlatBillBillNo='40158641008'


--delete from FlatReceiptsDetails where FlatReceiptsNo='CRKli-401586-61' and FlatReceiptsID <>'40158641008'
	     
		 
		 
	--	  select  top 10 * from FlatReceiptsDetails  order by ID desc
	--	  select top 10 * from Flatbill order by ID desc


	--   select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.Notification,N.NotificationDate,N.PaymentType,N.FlatbilliD,N.TotalPaid,N.AccountNo,N.EnterpriseAccNo,CM.CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,F.SearchCol,F.FlatBillTaxInvoice as BillPaymentStatus,F.FlatBillFinalAmount,F.FlatBillTax,F.FlatBillBalance,F.FlatBillDeposit,F.FlatBillShotDesc,F.FlatBillReceiptNo,F.FlatBillOutStandingBalance,F.FlatBillCurrentPaid,E.ReceiptTemplateCode,F.FlatBillReceiptNo , F.FlatBillBillNo,CM.CR_PlayerID,F.FlatBillAccountNo,F.FlatbillIssuedBy,F.FlatBillImgLogo64 ,F.FlatBillTotalAmount,F.FlatBillGSTNo from Notifications N inner join CloudReceipts_MobileUser CM
	--on N.MyKadID = CM.CR_MykadNo inner join Flatbill F on N.Flatb6illiD =f.FlatBillID inner join Enterprise E on N.EnterpriseAccNo=E.EnterpriseAccNo
	--where NotificationType='R' and E.EnterpriseAccNo='CRKli-401586' and  MONTH(N.NotificationDate) = 5 AND YEAR(N.NotificationDate) = 2018
