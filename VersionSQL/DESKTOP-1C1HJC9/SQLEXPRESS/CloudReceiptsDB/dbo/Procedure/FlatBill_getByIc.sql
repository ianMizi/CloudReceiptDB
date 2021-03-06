/****** Object:  Procedure [dbo].[FlatBill_getByIc]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[FlatBill_getByIc]
@CustomerIC varchar (50)
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


Select f.ID , f.FlatBillDesc, f.FlatBillDate,f.FlatBillPlatNo,f.FlatBillWorkshop,f.FlatBillWorkshopID,f.FlatBillIssuedBy,f.FlatBillID,f.FlatBillTotalAmount,f.FlatBillNumberIC,f.FlatBillVehicleModel,f.FlatBillImgLogo from FlatBill f
where f.FlatBillNumberIC=@CustomerIC
order by f.FlatBillDate desc


END
