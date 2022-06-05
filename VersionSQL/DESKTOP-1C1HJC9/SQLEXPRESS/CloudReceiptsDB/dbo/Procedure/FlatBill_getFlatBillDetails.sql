/****** Object:  Procedure [dbo].[FlatBill_getFlatBillDetails]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FlatBill_getFlatBillDetails]

@FlatBillID int

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
--select * from FlatBill f where f.FlatBillID =@FlatBillID


select f.ID,f.FlatBillDesc,f.FlatBillDate,f.FlatBillPlatNo,f.FlatBillWorkshop,f.FlatBillWorkshopID, f.[FlatBillIssuedBy],f.[FlatBillID],f.[FlatBillTotalAmount] 
, f.[FlatBillNumberIC],f.[FlatBillVehicleModel] , E.[EnterpriseLogo64] as [FlatBillImgLogo64]  , f.[FlatBillStatus] , f.[FlatBillUpdateDate], f.[FlatBillUpdateBy] , f.[CloudreceiptAccNo]
, f.[FlatBillFinalAmount] , f.[FlatBillTax] ,f.[FlatBillBalance], f.[FlatBillDeposit] ,f.[FlatBillMilage] , f.[FlatBillGSTNo] , f.[FlatBillTaxInvoice] , f.[FlatBillBillNo]
,  f.[FlatBillCustomerName],  f.[FlatBillWorkShopAddress], f.[FlatBillWorkshopPhoneNo] , E.EnterpriseRegistrationNo as [FlatBillCompanyNumber] , f.[FlatBillPaymentType], f.[FlatBillPushNotificationSendStatus]
, f.[FlatBillUniqueID] , f.[FlatBillAccountNo], f.[FlatBillShotDesc], f.[FlatBillInvoiceNo], f.[FlatBillReceiptNo],E.EnterpriseFaxNo as [FlatBillFaxNo],E.EnterpriseEmail as [FlatBillPremiseEmail],
  E.EnterpriseWebsite as [FlatBillPremiseWebsite],f.FlatBillPaymentType,f.FlatBillOutStandingBalance,f.FlatBillCurrentPaid,f.FlatBillCategory from FlatBill f inner join [Enterprise] E on f.CloudreceiptAccNo = E.[EnterpriseAccNo]
  where f.FlatBillID =@FlatBillID

END







--select f.ID,f.FlatBillDesc,f.FlatBillDate,f.FlatBillPlatNo,f.FlatBillWorkshop,f.FlatBillWorkshopID, f.[FlatBillIssuedBy],f.[FlatBillID],f.[FlatBillTotalAmount] 
--, f.[FlatBillNumberIC],f.[FlatBillVehicleModel] , E.[EnterpriseLogo64] as [FlatBillImgLogo64]  , f.[FlatBillStatus] , f.[FlatBillUpdateDate], f.[FlatBillUpdateBy] , f.[CloudreceiptAccNo]
--, f.[FlatBillFinalAmount] , f.[FlatBillTax] ,f.[FlatBillBalance], f.[FlatBillDeposit] ,f.[FlatBillMilage] , f.[FlatBillGSTNo] , f.[FlatBillTaxInvoice] , f.[FlatBillBillNo]
--,  f.[FlatBillCustomerName],  f.[FlatBillWorkShopAddress], f.[FlatBillWorkshopPhoneNo] , f.[FlatBillCompanyNumber] , f.[FlatBillPaymentType], f.[FlatBillPushNotificationSendStatus]
--, f.[FlatBillUniqueID] , f.[FlatBillAccountNo], f.[FlatBillShotDesc], f.[FlatBillInvoiceNo], f.[FlatBillReceiptNo], f.[FlatBillFaxNo], f.[FlatBillPremiseEmail],
--  E.EnterpriseWebsite,f.FlatBillPaymentType,f.FlatBillOutStandingBalance,f.FlatBillCurrentPaid,f.FlatBillCategory from FlatBill f inner join [Enterprise] E on f.CloudreceiptAccNo = E.[EnterpriseAccNo]
--  where f.FlatBillID =69175057
