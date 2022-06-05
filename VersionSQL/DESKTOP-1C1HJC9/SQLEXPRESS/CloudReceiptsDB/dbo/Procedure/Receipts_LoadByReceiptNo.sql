/****** Object:  Procedure [dbo].[Receipts_LoadByReceiptNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Receipts_LoadByReceiptNo]  
	

	
	@ReceiptNo varchar (150)


	

AS 
BEGIN 
     SET NOCOUNT ON 
 --   select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.Notification,NotificationDate,PaymentType,FlatbilliD,TotalPaid,AccountNo,EnterpriseAccNo,CM.CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,SearchCol from Notifications N inner join CloudReceipts_MobileUser CM
	--on N.MyKadID = CM.CR_MykadNo

	--original
	---- select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,F.ID,[dbo].[FlatBill_getTopIDByReceiptNo](F.FlatBillReceiptNo) as TopID,N.Notification,N.NotificationDate,N.PaymentType,N.FlatbilliD,N.TotalPaid,N.AccountNo,N.EnterpriseAccNo,CM.CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,F.SearchCol,F.FlatBillTaxInvoice as BillPaymentStatus,F.FlatBillFinalAmount,F.FlatBillTax,F.FlatBillBalance,F.FlatBillDeposit,F.FlatBillShotDesc,F.FlatBillReceiptNo,F.FlatBillOutStandingBalance,F.FlatBillCurrentPaid,E.ReceiptTemplateCode,F.FlatBillReceiptNo , F.FlatBillBillNo,CM.CR_PlayerID,F.FlatBillAccountNo,F.FlatbillIssuedBy,F.FlatBillImgLogo64 ,F.FlatBillTotalAmount,F.FlatBillGSTNo,F.FlatBillPlatNo,F.FlatBillVehicleModel,F.FlatBillMilage,F.FlatBillPremiseEmail,F.FlatBillPremiseWebsite,F.FlatBillInvoiceNo,F.FlatBillFaxNo as SendMode,CM.CR_Email,CM.CR_PhoneNumber from Notifications N inner join CloudReceipts_MobileUser CM
	----on N.MyKadID = CM.CR_MykadNo inner join Flatbill F on N.FlatbilliD =f.FlatBillID inner join Enterprise E on N.EnterpriseAccNo=E.EnterpriseAccNo
	----where NotificationType='R' and E.EnterpriseAccNo=@EnterpriseAccNo and  MONTH(N.NotificationDate) = @Month AND YEAR(N.NotificationDate) = @Year And F.RowStatus='Active'


   --  select ROW_NUMBER() OVER(ORDER BY F.ID ASC) AS No,F.* from FlatBill F where F. FlatBillReceiptNo=@ReceiptNo  order by F.ID desc
	select ROW_NUMBER() over (order by ID ASC) AS 
No
,FlatBillCurrentPaidDecimal
,[dbo].[FlatBill_getRefundBalance](@ReceiptNo,ID) as TotalRefundBalance
,RowStatus
,SearchCol
,FlatBillCategory
,FlatBillCurrentPaid
,FlatBillOutStandingBalance
,FlatBillPremiseWebsite
,FlatBillPremiseEmail
,FlatBillFaxNo
,FlatBillReceiptNo
,FlatBillInvoiceNo
,FlatBillShotDesc
,FlatBillAccountNo
,FlatBillUniqueID
,FlatBillPushNotificationSendStatus
,FlatBillPaymentType
,FlatBillCompanyNumber
,FlatBillWorkshopPhoneNo
,FlatBillWorkShopAddress
,FlatBillCustomerName
,FlatBillBillNo
,FlatBillTaxInvoice
,FlatBillGSTNo
,FlatBillMilage
,FlatBillDeposit
,FlatBillBalance
,FlatBillTax
,FlatBillFinalAmount
,CloudreceiptAccNo
,FlatBillUpdateBy
,FlatBillUpdateDate
,FlatBillStatus
,FlatBillImgLogo64
,FlatBillVehicleModel
,FlatBillNumberIC
,FlatBillTotalAmount
,FlatBillID
,FlatBillIssuedBy
,FlatBillWorkshopID
,FlatBillWorkshop
,FlatBillPlatNo
,FlatBillDate
,FlatBillDesc
,ID
from FlatBill  where FlatBillReceiptNo=@ReceiptNo  order by ID desc

	  
	END










	
--	select *
--from INFORMATION_SCHEMA.COLUMNS
--where TABLE_NAME='FlatBill'


 --select ROW_NUMBER() OVER(ORDER BY F.ID DESC) AS No,F.* from FlatBill F  order by F.ID desc


 --select distinct (RowStatus) from FlatBill
 -- select distinct (FlatBillCategory) from FlatBill
 --  select distinct (FlatBillTaxInvoice) from FlatBill

 --select top 1 * from FlatBill order by ID desc
 --  select RowStatus from FlatBill where FlatBillReceiptNo='CRian-315297-99-1'

 --  select ROW_NUMBER() OVER(ORDER BY F.ID DESC) AS No,F.* from FlatBill F where F. FlatBillReceiptNo='CRian-315297-100-1'  order by F.ID desc
   
