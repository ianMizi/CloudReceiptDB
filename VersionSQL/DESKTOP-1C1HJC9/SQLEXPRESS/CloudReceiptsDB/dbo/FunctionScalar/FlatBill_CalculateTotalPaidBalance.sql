/****** Object:  Function [dbo].[FlatBill_CalculateTotalPaidBalance]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[FlatBill_CalculateTotalPaidBalance](@ReceiptNo varchar(100))
RETURNS decimal (18,2)
AS
BEGIN
    DECLARE @PaidAmount as decimal (18,2)
    DECLARE @RefundAmount as decimal (18,2)
	    DECLARE @TotalPaidBalance as decimal (18,2)
		   --DECLARE @Result as varchar
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @PaidAmount = (select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo and RowStatus ='Active')
     SET @RefundAmount = (select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo and RowStatus ='Refund')
	 SET @TotalPaidBalance=(@PaidAmount-@RefundAmount)
	-- SET @Result=(select convert(varchar,convert(decimal(8,2),@TotalPaidBalance)))

    RETURN @TotalPaidBalance
END

 --select * from FlatBill where FlatBillReceiptNo='CRWAL-606992-70-1'

 -- select SUM(FlatBillCurrentPaidDecimal) from FlatBill where FlatBillReceiptNo='CRWAL-606992-70-1' and RowStatus ='Active'
 --select top  10 * from FlatBill order by ID desc


--SELECT  ROW_NUMBER() OVER(ORDER BY t.ID DESC) AS No, t.ID,[dbo].[FlatBill_getTopIDByReceiptNo](t.FlatBillReceiptNo) as TopID,t.FlatBillShotDesc as Notification,t.FlatBillDate as NotificationDate,t.FlatBillPaymentType as PaymentType,t.FlatBillID as FlatbilliD,t.FlatBillCurrentPaid as TotalPaid,CM.CR_AccountNo as AccountNo,t.CloudreceiptAccNo as EnterpriseAccNo,CM.CR_AccountName,t.FlatBillNumberIC as MyKadID,t.FlatBillPushNotificationSendStatus as IsRead,t.FlatBillPushNotificationSendStatus as IsOpen,t.FlatBillDate as NotificationReadDate,t.SearchCol,t.FlatBillTaxInvoice as BillPaymentStatus,t.FlatBillFinalAmount,t.FlatBillTax,t.FlatBillBalance,t.FlatBillDeposit,t.FlatBillShotDesc,t.FlatBillReceiptNo,t.FlatBillOutStandingBalance,t.FlatBillCurrentPaid,E.ReceiptTemplateCode,t.FlatBillReceiptNo , t.FlatBillBillNo,CM.CR_PlayerID,t.FlatBillAccountNo,t.FlatbillIssuedBy,t.FlatBillImgLogo64 ,t.FlatBillTotalAmount,t.FlatBillGSTNo,t.FlatBillPlatNo,t.FlatBillVehicleModel,t.FlatBillMilage,t.FlatBillPremiseEmail,t.FlatBillPremiseWebsite,t.FlatBillInvoiceNo,t.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PlayerID,CM.CR_PhoneNumber,t.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](t.FlatBillReceiptNo) as TotalPaidAmount, [dbo].[FlatBill_CheckIsFullPaid](t.FlatBillReceiptNo) as isFullPaid,[dbo].[FlatBill_getRefundStatus](t.FlatBillReceiptNo) as RefundStatus,[dbo].[FlatBill_CheckIsCancelled](t.FlatBillReceiptNo) as isCancelReceipt,[dbo].[FlatBill_CalculateTotalPaidBalance](t.FlatBillReceiptNo) as TotalPaidBalance
--from Flatbill t 
--inner join (
--    select t.FlatBillReceiptNo, max(t.ID) as MaxDate
--    from Flatbill t
--    group by t.FlatBillReceiptNo
--) tm on t.FlatBillReceiptNo = tm.FlatBillReceiptNo and t.ID = tm.MaxDate
--inner join CloudReceipts_MobileUser CM on t.FlatBillNumberIC = CM.CR_AccountNo inner join  Enterprise E on t.CloudreceiptAccNo=E.EnterpriseAccNo
--where t.FlatBillReceiptNo in(select distinct (F.FlatBillReceiptNo) from  Flatbill F where  F.CloudreceiptAccNo='CRWAL-606992'  and  MONTH(F.FlatBillDate) =8 AND YEAR(F.FlatBillDate) =2018)
 
