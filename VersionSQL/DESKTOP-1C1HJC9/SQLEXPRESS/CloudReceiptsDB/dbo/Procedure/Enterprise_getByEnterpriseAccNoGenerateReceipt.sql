/****** Object:  Procedure [dbo].[Enterprise_getByEnterpriseAccNoGenerateReceipt]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Enterprise_getByEnterpriseAccNoGenerateReceipt]


@EnterpriseAccNo as varchar(250),
@FlatReceiptID as varchar(250)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
--select  b.PlateNumber,b.VehicleModel ,b.CustomerName,b.CustomerIdentity,b.Mileage,b.TotalAmount,b.UTCBillDate,bd.BillId,bd.Quantity,bd.Description,bd.Price,bd.Amount,ud.ReferralPerson,c.CompanyName from Bills b inner join BillDetails bd
--  on b.BillId = bd.BillId
--  inner join UserDetails ud on b.UserDetailId = ud.UserDetailId
--inner join Companies c on c.CompanyId = ud.CompanyId
--  where b.CustomerIdentity='1111111'
--  order by b.UTCBillDate desc
--Select * from Enterprise where EnterpriseAccNo=@EnterpriseAccNo
--Select E.EnterpriseName,E.EnterpriseAddress,E.EnterpriseGSTNo,E.EnterpriseEmail,E.EnterpriseWebsite,E.EnterprisePhoneNo,E.EnterpriseFaxNo,E.EnterpriseLogo64,E.EnterpriseTaxNo,E.ReceiptTemplateCode,E.ReceiptAdvertisementImg,E.EnterpriseFacebook,E.EnterpriseTwiter,E.EnterpriseInstagram  from Enterprise E where e.EnterpriseAccNo=@EnterpriseAccNo
Select [dbo].[ReceiptsAttachments_getContents](@EnterpriseAccNo,@FlatReceiptID) as Contents,[dbo].[ReceiptsAttachments_getContentsFilesName](@EnterpriseAccNo,@FlatReceiptID) as FileNames,E.EnterpriseName,E.EnterpriseAddress,E.EnterpriseRegistrationNo,E.EnterpriseGSTNo,E.EnterpriseEmail,E.EnterpriseWebsite,E.EnterprisePhoneNo,E.EnterpriseFaxNo,E.EnterpriseLogo64,E.EnterpriseTaxNo,E.ReceiptTemplateCode,E.ReceiptAdvertisementImg,E.EnterpriseFacebook,E.EnterpriseTwiter,E.EnterpriseInstagram  from Enterprise E where e.EnterpriseAccNo=@EnterpriseAccNo

END

--select * from FlatBill where FlatBillAccountNo <> '1'
--select * from [dbo].[ReceiptsAttachments]


--Select [dbo].[ReceiptsAttachments_getContents]('CRKli-401586','0000') as Contents,[dbo].[ReceiptsAttachments_getContentsFilesName]('CRWAL-606992','60699277183') as FileNames,E.EnterpriseName,E.EnterpriseAddress,E.EnterpriseGSTNo,E.EnterpriseEmail,E.EnterpriseWebsite,E.EnterprisePhoneNo,E.EnterpriseFaxNo,E.EnterpriseLogo64,E.EnterpriseTaxNo,E.ReceiptTemplateCode,E.ReceiptAdvertisementImg,E.EnterpriseFacebook,E.EnterpriseTwiter,E.EnterpriseInstagram  from Enterprise E where e.EnterpriseAccNo='CRKli-401586'


--Select [dbo].[ReceiptsAttachments_getContentsFilesName]('CRWAL-606992','60699277183') as Contents,R.FilesName, E.EnterpriseName,E.EnterpriseAddress,E.EnterpriseGSTNo,E.EnterpriseEmail,E.EnterpriseWebsite,E.EnterprisePhoneNo,E.EnterpriseFaxNo,E.EnterpriseLogo64,E.EnterpriseTaxNo,E.ReceiptTemplateCode,E.ReceiptAdvertisementImg,
--E.EnterpriseFacebook,E.EnterpriseTwiter,E.EnterpriseInstagram  from Enterprise E right outer join [ReceiptsAttachments] R on E.EnterpriseAccNo=R.CloudReceiptAccNo where e.EnterpriseAccNo='CRKli-401586'
--And R.FlatReceiptsID='60699277183'
