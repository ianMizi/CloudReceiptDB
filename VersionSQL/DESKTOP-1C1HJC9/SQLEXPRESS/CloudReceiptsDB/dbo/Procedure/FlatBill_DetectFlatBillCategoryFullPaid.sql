/****** Object:  Procedure [dbo].[FlatBill_DetectFlatBillCategoryFullPaid]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[FlatBill_DetectFlatBillCategoryFullPaid]  
	

	
	@FlatBillReceiptNo varchar (150)


	

AS 
BEGIN 
     SET NOCOUNT ON 
 --   select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.Notification,NotificationDate,PaymentType,FlatbilliD,TotalPaid,AccountNo,EnterpriseAccNo,CM.CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,SearchCol from Notifications N inner join CloudReceipts_MobileUser CM
	--on N.MyKadID = CM.CR_MykadNo

	 Select FlatBillCategory from FlatBill where FlatBillReceiptNo=@FlatBillReceiptNo and FlatBillCategory='Full Paid'
	
	END




	-- select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.Notification,N.NotificationDate,N.PaymentType,N.FlatbilliD,N.TotalPaid,N.AccountNo,N.EnterpriseAccNo,CM.CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,F.SearchCol,F.FlatBillTaxInvoice as BillPaymentStatus,F.FlatBillFinalAmount,F.FlatBillTax,F.FlatBillBalance,F.FlatBillDeposit,F.FlatBillShotDesc,F.FlatBillReceiptNo,F.FlatBillOutStandingBalance,F.FlatBillCurrentPaid,E.ReceiptTemplateCode,F.FlatBillReceiptNo,F.FlatBillBillNo,CM.CR_PlayerID,F.FlatBillAccountNo,F.FlatbillIssuedBy,F.FlatBillImgLogo64,F.FlatBillTotalAmount from Notifications N inner join CloudReceipts_MobileUser CM
	--on N.MyKadID = CM.CR_MykadNo inner join Flatbill F on N.FlatbilliD =f.FlatBillID inner join Enterprise E on N.EnterpriseAccNo=E.EnterpriseAccNo
	--where NotificationType='R' and E.EnterpriseAccNo='CRKli-401586' and  MONTH(N.NotificationDate) = 5 AND YEAR(N.NotificationDate) = 2018


	--select * from FlatBill
	-- select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.Notification,N.NotificationDate,N.PaymentType,N.FlatbilliD,N.TotalPaid,N.AccountNo,N.EnterpriseAccNo,CM.CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,N.SearchCol,F.FlatBillTaxInvoice,F.FlatBillFinalAmount,F.FlatBillTax,F.FlatBillBalance,F.FlatBillDeposit,F.FlatBillShotDesc,F.FlatBillReceiptNo,F.FlatBillOutStandingBalance,F.FlatBillCurrentPaid,E.ReceiptTemplateCode from Notifications N inner join CloudReceipts_MobileUser CM
	--on N.MyKadID = CM.CR_MykadNo inner join Flatbill F on N.FlatbilliD =f.FlatBillID inner join Enterprise E on N.EnterpriseAccNo=E.EnterpriseAccNo
	--where NotificationType='R' and E.EnterpriseAccNo='CRian-315297'


 ----select * from Enterprise where EnterpriseAccNo='CRKli-401586'
 
 
 
 ----select * from Notifications where flatbilliD='67326958'
 -- select * from flatbill where flatbilliD='67326958'


	 
