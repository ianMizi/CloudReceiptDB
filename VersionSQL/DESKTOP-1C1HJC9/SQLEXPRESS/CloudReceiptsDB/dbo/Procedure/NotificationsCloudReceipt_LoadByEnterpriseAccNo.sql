/****** Object:  Procedure [dbo].[NotificationsCloudReceipt_LoadByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[NotificationsCloudReceipt_LoadByEnterpriseAccNo]  
	

	
	@EnterpriseAccNo varchar (150),
	@Month  as varchar (50),
	@Year  as varchar (50)


	

AS 
BEGIN 
     SET NOCOUNT ON 
 --   select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.Notification,NotificationDate,PaymentType,FlatbilliD,TotalPaid,AccountNo,EnterpriseAccNo,CM.CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,SearchCol from Notifications N inner join CloudReceipts_MobileUser CM
	--on N.MyKadID = CM.CR_MykadNo

	--original
	---- select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,F.ID,[dbo].[FlatBill_getTopIDByReceiptNo](F.FlatBillReceiptNo) as TopID,N.Notification,N.NotificationDate,N.PaymentType,N.FlatbilliD,N.TotalPaid,N.AccountNo,N.EnterpriseAccNo,CM.CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,F.SearchCol,F.FlatBillTaxInvoice as BillPaymentStatus,F.FlatBillFinalAmount,F.FlatBillTax,F.FlatBillBalance,F.FlatBillDeposit,F.FlatBillShotDesc,F.FlatBillReceiptNo,F.FlatBillOutStandingBalance,F.FlatBillCurrentPaid,E.ReceiptTemplateCode,F.FlatBillReceiptNo , F.FlatBillBillNo,CM.CR_PlayerID,F.FlatBillAccountNo,F.FlatbillIssuedBy,F.FlatBillImgLogo64 ,F.FlatBillTotalAmount,F.FlatBillGSTNo,F.FlatBillPlatNo,F.FlatBillVehicleModel,F.FlatBillMilage,F.FlatBillPremiseEmail,F.FlatBillPremiseWebsite,F.FlatBillInvoiceNo,F.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PhoneNumber from Notifications N inner join CloudReceipts_MobileUser CM
	----on N.MyKadID = CM.CR_MykadNo inner join Flatbill F on N.FlatbilliD =f.FlatBillID inner join Enterprise E on N.EnterpriseAccNo=E.EnterpriseAccNo
	----where NotificationType='R' and E.EnterpriseAccNo=@EnterpriseAccNo and  MONTH(N.NotificationDate) = @Month AND YEAR(N.NotificationDate) = @Year And F.RowStatus='Active'


	------		  select  ROW_NUMBER() OVER(ORDER BY F.ID DESC) AS No,F.ID,[dbo].[FlatBill_getTopIDByReceiptNo](F.FlatBillReceiptNo) as TopID,F.FlatBillShotDesc as Notification,F.FlatBillDate as NotificationDate,F.FlatBillPaymentType as PaymentType,F.FlatBillID as FlatbilliD,F.FlatBillCurrentPaid as TotalPaid,CM.CR_AccountNo as AccountNo,F.CloudreceiptAccNo as EnterpriseAccNo,CM.CR_AccountName,f.FlatBillNumberIC as MyKadID,f.FlatBillPushNotificationSendStatus as IsRead,f.FlatBillPushNotificationSendStatus as IsOpen,f.FlatBillDate as NotificationReadDate,F.SearchCol,F.FlatBillTaxInvoice as BillPaymentStatus,F.FlatBillFinalAmount,F.FlatBillTax,F.FlatBillBalance,F.FlatBillDeposit,F.FlatBillShotDesc,F.FlatBillReceiptNo,F.FlatBillOutStandingBalance,F.FlatBillCurrentPaid,E.ReceiptTemplateCode,F.FlatBillReceiptNo , F.FlatBillBillNo,CM.CR_PlayerID,F.FlatBillAccountNo,F.FlatbillIssuedBy,F.FlatBillImgLogo64 ,F.FlatBillTotalAmount,F.FlatBillGSTNo,F.FlatBillPlatNo,F.FlatBillVehicleModel,F.FlatBillMilage,F.FlatBillPremiseEmail,F.FlatBillPremiseWebsite,F.FlatBillInvoiceNo,F.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PlayerID,CM.CR_PhoneNumber,F.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](F.FlatBillReceiptNo) as TotalPaidAmount, [dbo].[FlatBill_CheckIsFullPaid](F.FlatBillReceiptNo) as isFullPaid,[dbo].[FlatBill_getRefundStatus](F.FlatBillReceiptNo) as RefundStatus from  Flatbill F inner join CloudReceipts_MobileUser CM
	------on F.FlatBillNumberIC = CM.CR_AccountNo inner join  Enterprise E on F.CloudreceiptAccNo=E.EnterpriseAccNo
	------where  E.EnterpriseAccNo=@EnterpriseAccNo and  MONTH(F.FlatBillDate) =@Month AND YEAR(F.FlatBillDate) =@Year








--		Declare @count as varchar (50)
--	set @count=(select COUNT (distinct F.FlatBillReceiptNo) from  Flatbill F where  F.CloudreceiptAccNo=@EnterpriseAccNo and  MONTH(F.FlatBillDate) =@Month AND YEAR(F.FlatBillDate) =@Year)


--Declare @SQL varchar(MAX)
--set @SQL = 'SELECT TOP ('+@count+') ROW_NUMBER() OVER(ORDER BY t.ID DESC) AS No, t.ID,[dbo].[FlatBill_getTopIDByReceiptNo](t.FlatBillReceiptNo) as TopID,t.FlatBillShotDesc as Notification,t.FlatBillDate as NotificationDate,t.FlatBillPaymentType as PaymentType,t.FlatBillID as FlatbilliD,t.FlatBillCurrentPaid as TotalPaid,CM.CR_AccountNo as AccountNo,t.CloudreceiptAccNo as EnterpriseAccNo,CM.CR_AccountName,t.FlatBillNumberIC as MyKadID,t.FlatBillPushNotificationSendStatus as IsRead,t.FlatBillPushNotificationSendStatus as IsOpen,t.FlatBillDate as NotificationReadDate,t.SearchCol,t.FlatBillTaxInvoice as BillPaymentStatus,t.FlatBillFinalAmount,t.FlatBillTax,t.FlatBillBalance,t.FlatBillDeposit,t.FlatBillShotDesc,t.FlatBillReceiptNo,t.FlatBillOutStandingBalance,t.FlatBillCurrentPaid,E.ReceiptTemplateCode,t.FlatBillReceiptNo , t.FlatBillBillNo,CM.CR_PlayerID,t.FlatBillAccountNo,t.FlatbillIssuedBy,t.FlatBillImgLogo64 ,t.FlatBillTotalAmount,[dbo].[FlatBill_getTotalDiscount](t.FlatBillReceiptNo) as FlatBillGSTNo,t.FlatBillPlatNo,t.FlatBillVehicleModel,t.FlatBillMilage,t.FlatBillPremiseEmail,t.FlatBillPremiseWebsite,t.FlatBillInvoiceNo,t.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PlayerID,CM.CR_PhoneNumber,t.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](t.FlatBillReceiptNo) as TotalRefundBalance, [dbo].[FlatBill_CheckIsFullPaid](t.FlatBillReceiptNo) as isFullPaid,[dbo].[FlatBill_getRefundStatus](t.FlatBillReceiptNo) as RefundStatus,[dbo].[FlatBill_CheckIsCancelled](t.FlatBillReceiptNo) as isCancelReceipt,[dbo].[FlatBill_CalculateBalanceFromRefund](t.FlatBillReceiptNo) as TotalPaidAmount 
--from Flatbill t 
--inner join (
--    select t.FlatBillReceiptNo, max(t.ID) as MaxDate
--    from Flatbill t
--    group by t.FlatBillReceiptNo
--) tm on t.FlatBillReceiptNo = tm.FlatBillReceiptNo and t.ID = tm.MaxDate
--inner join CloudReceipts_MobileUser CM on t.FlatBillNumberIC = CM.CR_AccountNo inner join  Enterprise E on t.CloudreceiptAccNo=E.EnterpriseAccNo
--where t.FlatBillReceiptNo in(select distinct (F.FlatBillReceiptNo) from  Flatbill F where  F.CloudreceiptAccNo='''+@EnterpriseAccNo+'''  and  MONTH(F.FlatBillDate) ='''+@Month+''' AND YEAR(F.FlatBillDate) ='''+@Year+''')'
 
--EXEC (@SQL)

	

		Declare @count as varchar (50)
	set @count=(select COUNT (distinct F.FlatBillReceiptNo) from  Flatbill F where  F.CloudreceiptAccNo=@EnterpriseAccNo and  MONTH(F.FlatBillDate) =@Month AND YEAR(F.FlatBillDate) =@Year)


Declare @SQL varchar(MAX)
--SELECT TOP ('+@count+') ROW_NUMBER() OVER(ORDER BY t.ID DESC) AS No,t.FlatBillShotDesc as Notification,t.FlatBillDate as NotificationDate,t.FlatBillPaymentType as PaymentType,t.FlatBillID as FlatbilliD,t.FlatBillCurrentPaid as TotalPaid,t.CloudreceiptAccNo as EnterpriseAccNo,t.FlatBillNumberIC as MyKadID,t.FlatBillPushNotificationSendStatus as IsRead,t.FlatBillPushNotificationSendStatus as IsOpen,t.FlatBillDate as NotificationReadDate,t.SearchCol,t.FlatBillTaxInvoice as BillPaymentStatus,t.FlatBillFinalAmount,t.FlatBillTax,t.FlatBillBalance,t.FlatBillDeposit,t.FlatBillShotDesc,t.FlatBillReceiptNo,t.FlatBillOutStandingBalance,t.FlatBillCurrentPaid,t.FlatBillReceiptNo , t.FlatBillBillNo,t.FlatBillAccountNo,t.FlatbillIssuedBy,t.FlatBillImgLogo64 ,t.FlatBillTotalAmount,[dbo].[FlatBill_getTotalDiscount](t.FlatBillReceiptNo) as FlatBillGSTNo,t.FlatBillPlatNo,t.FlatBillVehicleModel,t.FlatBillMilage,t.FlatBillPremiseEmail,t.FlatBillPremiseWebsite,t.FlatBillInvoiceNo,t.FlatBillFaxNo as SendMode,t.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](t.FlatBillReceiptNo) as TotalRefundBalance, [dbo].[FlatBill_CheckIsFullPaid](t.FlatBillReceiptNo) as isFullPaid,[dbo].[FlatBill_getRefundStatus](t.FlatBillReceiptNo) as RefundStatus,[dbo].[FlatBill_CheckIsCancelled](t.FlatBillReceiptNo) as isCancelReceipt,[dbo].[FlatBill_CalculateBalanceFromRefund](t.FlatBillReceiptNo) as TotalPaidAmount 
--set @SQL = SELECT TOP ('+@count+') ROW_NUMBER() OVER(ORDER BY t.ID DESC) AS No, t.ID,[dbo].[FlatBill_getTopIDByReceiptNo](t.FlatBillReceiptNo) as TopID,t.FlatBillShotDesc as Notification,t.FlatBillDate as NotificationDate,t.FlatBillPaymentType as PaymentType,t.FlatBillID as FlatbilliD,t.FlatBillCurrentPaid as TotalPaid,CM.CR_AccountNo as AccountNo,t.CloudreceiptAccNo as EnterpriseAccNo,CM.CR_AccountName,t.FlatBillNumberIC as MyKadID,t.FlatBillPushNotificationSendStatus as IsRead,t.FlatBillPushNotificationSendStatus as IsOpen,t.FlatBillDate as NotificationReadDate,t.SearchCol,t.FlatBillTaxInvoice as BillPaymentStatus,t.FlatBillFinalAmount,t.FlatBillTax,t.FlatBillBalance,t.FlatBillDeposit,t.FlatBillShotDesc,t.FlatBillReceiptNo,t.FlatBillOutStandingBalance,t.FlatBillCurrentPaid,E.ReceiptTemplateCode,t.FlatBillReceiptNo , t.FlatBillBillNo,CM.CR_PlayerID,t.FlatBillAccountNo,t.FlatbillIssuedBy,t.FlatBillImgLogo64 ,t.FlatBillTotalAmount,[dbo].[FlatBill_getTotalDiscount](t.FlatBillReceiptNo) as FlatBillGSTNo,t.FlatBillPlatNo,t.FlatBillVehicleModel,t.FlatBillMilage,t.FlatBillPremiseEmail,t.FlatBillPremiseWebsite,t.FlatBillInvoiceNo,t.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PlayerID,CM.CR_PhoneNumber,t.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](t.FlatBillReceiptNo) as TotalRefundBalance, [dbo].[FlatBill_CheckIsFullPaid](t.FlatBillReceiptNo) as isFullPaid,[dbo].[FlatBill_getRefundStatus](t.FlatBillReceiptNo) as RefundStatus,[dbo].[FlatBill_CheckIsCancelled](t.FlatBillReceiptNo) as isCancelReceipt,[dbo].[FlatBill_CalculateBalanceFromRefund](t.FlatBillReceiptNo) as TotalPaidAmount 
set @SQL = 'SELECT TOP ('+@count+') ROW_NUMBER() OVER(ORDER BY t.ID DESC) AS No, t.ID,[dbo].[FlatBill_getTopIDByReceiptNo](t.FlatBillReceiptNo) as TopID,t.FlatBillShotDesc as Notification,t.FlatBillDate as NotificationDate,t.FlatBillPaymentType as PaymentType,t.FlatBillID as FlatbilliD,t.FlatBillCurrentPaid as TotalPaid,CM.CR_AccountNo as AccountNo,t.CloudreceiptAccNo as EnterpriseAccNo,t.FlatBillCustomerName as CR_AccountName,t.FlatBillNumberIC as MyKadID,t.FlatBillPushNotificationSendStatus as IsRead,t.FlatBillPushNotificationSendStatus as IsOpen,t.FlatBillDate as NotificationReadDate,t.SearchCol,t.FlatBillTaxInvoice as BillPaymentStatus,t.FlatBillFinalAmount,t.FlatBillTax,t.FlatBillBalance,t.FlatBillDeposit,t.FlatBillShotDesc,t.FlatBillReceiptNo,t.FlatBillOutStandingBalance,t.FlatBillCurrentPaid,E.ReceiptTemplateCode,t.FlatBillReceiptNo , t.FlatBillBillNo,CM.CR_PlayerID,t.FlatBillAccountNo,t.FlatbillIssuedBy,t.FlatBillImgLogo64 ,t.FlatBillTotalAmount,[dbo].[FlatBill_getTotalDiscount](t.FlatBillReceiptNo) as FlatBillGSTNo,t.FlatBillPlatNo,t.FlatBillVehicleModel,t.FlatBillMilage,t.FlatBillPremiseEmail,t.FlatBillPremiseWebsite,t.FlatBillInvoiceNo,t.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PlayerID,CM.CR_PhoneNumber,t.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](t.FlatBillReceiptNo) as TotalRefundBalance, [dbo].[FlatBill_CheckIsFullPaid](t.FlatBillReceiptNo) as isFullPaid,[dbo].[FlatBill_getRefundStatus](t.FlatBillReceiptNo) as RefundStatus,[dbo].[FlatBill_CheckIsCancelled](t.FlatBillReceiptNo) as isCancelReceipt,[dbo].[FlatBill_CalculateBalanceFromRefund](t.FlatBillReceiptNo) as TotalPaidAmount 
from Flatbill t 
inner join (
    select t.FlatBillReceiptNo, max(t.ID) as MaxDate
    from Flatbill t
    group by t.FlatBillReceiptNo
) tm on t.FlatBillReceiptNo = tm.FlatBillReceiptNo and t.ID = tm.MaxDate
inner join CloudReceipts_MobileUser CM on t.FlatBillNumberIC = CM.CR_AccountNo inner join  Enterprise E on t.CloudreceiptAccNo=E.EnterpriseAccNo
where t.CloudreceiptAccNo='''+@EnterpriseAccNo+'''  and  MONTH(t.FlatBillDate) ='''+@Month+''' AND YEAR(t.FlatBillDate) ='''+@Year+''''
 
EXEC (@SQL)
	  
	END

	





--		Declare @count as varchar (50)
--	set @count=(select COUNT (distinct F.FlatBillReceiptNo) from  Flatbill F where  F.CloudreceiptAccNo='CRKli-401586'and  MONTH(F.FlatBillDate) =11 AND YEAR(F.FlatBillDate) =2018)


--Declare @SQL varchar(MAX)
----SELECT TOP ('+@count+') ROW_NUMBER() OVER(ORDER BY t.ID DESC) AS No,t.FlatBillShotDesc as Notification,t.FlatBillDate as NotificationDate,t.FlatBillPaymentType as PaymentType,t.FlatBillID as FlatbilliD,t.FlatBillCurrentPaid as TotalPaid,t.CloudreceiptAccNo as EnterpriseAccNo,t.FlatBillNumberIC as MyKadID,t.FlatBillPushNotificationSendStatus as IsRead,t.FlatBillPushNotificationSendStatus as IsOpen,t.FlatBillDate as NotificationReadDate,t.SearchCol,t.FlatBillTaxInvoice as BillPaymentStatus,t.FlatBillFinalAmount,t.FlatBillTax,t.FlatBillBalance,t.FlatBillDeposit,t.FlatBillShotDesc,t.FlatBillReceiptNo,t.FlatBillOutStandingBalance,t.FlatBillCurrentPaid,t.FlatBillReceiptNo , t.FlatBillBillNo,t.FlatBillAccountNo,t.FlatbillIssuedBy,t.FlatBillImgLogo64 ,t.FlatBillTotalAmount,[dbo].[FlatBill_getTotalDiscount](t.FlatBillReceiptNo) as FlatBillGSTNo,t.FlatBillPlatNo,t.FlatBillVehicleModel,t.FlatBillMilage,t.FlatBillPremiseEmail,t.FlatBillPremiseWebsite,t.FlatBillInvoiceNo,t.FlatBillFaxNo as SendMode,t.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](t.FlatBillReceiptNo) as TotalRefundBalance, [dbo].[FlatBill_CheckIsFullPaid](t.FlatBillReceiptNo) as isFullPaid,[dbo].[FlatBill_getRefundStatus](t.FlatBillReceiptNo) as RefundStatus,[dbo].[FlatBill_CheckIsCancelled](t.FlatBillReceiptNo) as isCancelReceipt,[dbo].[FlatBill_CalculateBalanceFromRefund](t.FlatBillReceiptNo) as TotalPaidAmount 
----set @SQL = SELECT TOP ('+@count+') ROW_NUMBER() OVER(ORDER BY t.ID DESC) AS No, t.ID,[dbo].[FlatBill_getTopIDByReceiptNo](t.FlatBillReceiptNo) as TopID,t.FlatBillShotDesc as Notification,t.FlatBillDate as NotificationDate,t.FlatBillPaymentType as PaymentType,t.FlatBillID as FlatbilliD,t.FlatBillCurrentPaid as TotalPaid,CM.CR_AccountNo as AccountNo,t.CloudreceiptAccNo as EnterpriseAccNo,CM.CR_AccountName,t.FlatBillNumberIC as MyKadID,t.FlatBillPushNotificationSendStatus as IsRead,t.FlatBillPushNotificationSendStatus as IsOpen,t.FlatBillDate as NotificationReadDate,t.SearchCol,t.FlatBillTaxInvoice as BillPaymentStatus,t.FlatBillFinalAmount,t.FlatBillTax,t.FlatBillBalance,t.FlatBillDeposit,t.FlatBillShotDesc,t.FlatBillReceiptNo,t.FlatBillOutStandingBalance,t.FlatBillCurrentPaid,E.ReceiptTemplateCode,t.FlatBillReceiptNo , t.FlatBillBillNo,CM.CR_PlayerID,t.FlatBillAccountNo,t.FlatbillIssuedBy,t.FlatBillImgLogo64 ,t.FlatBillTotalAmount,[dbo].[FlatBill_getTotalDiscount](t.FlatBillReceiptNo) as FlatBillGSTNo,t.FlatBillPlatNo,t.FlatBillVehicleModel,t.FlatBillMilage,t.FlatBillPremiseEmail,t.FlatBillPremiseWebsite,t.FlatBillInvoiceNo,t.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PlayerID,CM.CR_PhoneNumber,t.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](t.FlatBillReceiptNo) as TotalRefundBalance, [dbo].[FlatBill_CheckIsFullPaid](t.FlatBillReceiptNo) as isFullPaid,[dbo].[FlatBill_getRefundStatus](t.FlatBillReceiptNo) as RefundStatus,[dbo].[FlatBill_CheckIsCancelled](t.FlatBillReceiptNo) as isCancelReceipt,[dbo].[FlatBill_CalculateBalanceFromRefund](t.FlatBillReceiptNo) as TotalPaidAmount 
--set @SQL = 'SELECT TOP ('+@count+') ROW_NUMBER() OVER(ORDER BY t.ID DESC) AS No, t.ID,[dbo].[FlatBill_getTopIDByReceiptNo](t.FlatBillReceiptNo) as TopID,t.FlatBillShotDesc as Notification,t.FlatBillDate as NotificationDate,t.FlatBillPaymentType as PaymentType,t.FlatBillID as FlatbilliD,t.FlatBillCurrentPaid as TotalPaid,CM.CR_AccountNo as AccountNo,t.CloudreceiptAccNo as EnterpriseAccNo,CM.CR_AccountName,t.FlatBillNumberIC as MyKadID,t.FlatBillPushNotificationSendStatus as IsRead,t.FlatBillPushNotificationSendStatus as IsOpen,t.FlatBillDate as NotificationReadDate,t.SearchCol,t.FlatBillTaxInvoice as BillPaymentStatus,t.FlatBillFinalAmount,t.FlatBillTax,t.FlatBillBalance,t.FlatBillDeposit,t.FlatBillShotDesc,t.FlatBillReceiptNo,t.FlatBillOutStandingBalance,t.FlatBillCurrentPaid,E.ReceiptTemplateCode,t.FlatBillReceiptNo , t.FlatBillBillNo,CM.CR_PlayerID,t.FlatBillAccountNo,t.FlatbillIssuedBy,t.FlatBillImgLogo64 ,t.FlatBillTotalAmount,[dbo].[FlatBill_getTotalDiscount](t.FlatBillReceiptNo) as FlatBillGSTNo,t.FlatBillPlatNo,t.FlatBillVehicleModel,t.FlatBillMilage,t.FlatBillPremiseEmail,t.FlatBillPremiseWebsite,t.FlatBillInvoiceNo,t.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PlayerID,CM.CR_PhoneNumber,t.RowStatus,[dbo].[FlatBill_getToTalAmoutPaid](t.FlatBillReceiptNo) as TotalRefundBalance, [dbo].[FlatBill_CheckIsFullPaid](t.FlatBillReceiptNo) as isFullPaid,[dbo].[FlatBill_getRefundStatus](t.FlatBillReceiptNo) as RefundStatus,[dbo].[FlatBill_CheckIsCancelled](t.FlatBillReceiptNo) as isCancelReceipt,[dbo].[FlatBill_CalculateBalanceFromRefund](t.FlatBillReceiptNo) as TotalPaidAmount 
--from Flatbill t 
--inner join (
--    select t.FlatBillReceiptNo, max(t.ID) as MaxDate
--    from Flatbill t
--    group by t.FlatBillReceiptNo
--) tm on t.FlatBillReceiptNo = tm.FlatBillReceiptNo and t.ID = tm.MaxDate
--inner join CloudReceipts_MobileUser CM on t.FlatBillNumberIC = CM.CR_AccountNo inner join  Enterprise E on t.CloudreceiptAccNo=E.EnterpriseAccNo
--where t.CloudreceiptAccNo=''CRKli-401586''  and  MONTH(t.FlatBillDate) =''11'' AND YEAR(t.FlatBillDate) =''2018'''
 
--EXEC (@SQL)
