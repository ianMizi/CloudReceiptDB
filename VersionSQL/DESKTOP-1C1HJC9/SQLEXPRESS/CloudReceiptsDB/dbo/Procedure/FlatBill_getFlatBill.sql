/****** Object:  Procedure [dbo].[FlatBill_getFlatBill]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FlatBill_getFlatBill]

@CustomerIC varchar (50),
@Status varchar (50), 
@Month int,
@Year int,
@CloudreceiptAccNo varchar(50),
@PremiseNo varchar(50)

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
if (@PremiseNo ='Status')


--Select f.ID , f.FlatBillDate,f.FlatBillUpdateDate, f.FlatBillWorkshop,f.FlatBillIssuedBy,f.FlatBillID,f.FlatBillFinalAmount,f.FlatBillImgLogo64,f.FlatBillCompanyNumber from FlatBill f
--where f.FlatBillNumberIC=@CustomerIC and f.FlatBillStatus=@Status  and   MONTH(f.FlatBillDate) = @Month AND YEAR(f.FlatBillDate) = @Year  and f.CloudreceiptAccNo =@CloudreceiptAccNo
--order by f.FlatBillDate desc

Select top 10 f.ID , f.FlatBillDate,f.FlatBillUpdateDate, f.FlatBillWorkshop,f.FlatBillIssuedBy,f.FlatBillID,f.FlatBillTotalAmount,E.EnterpriseLogo64 as FlatBillImgLogo64,f.FlatBillCompanyNumber,f.FlatBillShotDesc,f.FlatBillAccountNo,f.FlatBillTax,f.FlatBillFinalAmount,f.FlatBillCurrentPaid,f.CloudreceiptAccNo,E.ReceiptTemplateCode , f.FlatBillShotDesc,f.flatBillCategory   from FlatBill f inner join [Enterprise] E on 
f.CloudreceiptAccNo=e.EnterpriseAccNo
--where f.FlatBillNumberIC=@CustomerIC and f.FlatBillStatus=@Status  and   MONTH(f.FlatBillDate) = @Month AND YEAR(f.FlatBillDate) = @Year 
where f.FlatBillNumberIC=@CloudreceiptAccNo and f.FlatBillStatus='3' 
order by f.FlatBillDate desc

if (@PremiseNo ='Category')

Select top 10 f.ID , f.FlatBillDate,f.FlatBillUpdateDate,f.FlatBillWorkshop,f.FlatBillIssuedBy,f.FlatBillID,f.FlatBillTotalAmount,E.EnterpriseLogo64 as FlatBillImgLogo64,f.FlatBillCompanyNumber,f.FlatBillShotDesc ,f.FlatBillAccountNo,f.FlatBillTax,f.FlatBillFinalAmount,f.FlatBillCurrentPaid,f.CloudreceiptAccNo  ,E.ReceiptTemplateCode, f.FlatBillShotDesc,f.flatBillCategory   from FlatBill f inner join [Enterprise] E on 
f.CloudreceiptAccNo=e.EnterpriseAccNo
where f.FlatBillNumberIC=@CustomerIC and f.FlatBillCategory=@Status  and   MONTH(f.FlatBillDate) =@Month AND YEAR(f.FlatBillDate) = @Year 
order by f.FlatBillDate desc

END


--select * from FlatBill where FlatBillStatus='3'
