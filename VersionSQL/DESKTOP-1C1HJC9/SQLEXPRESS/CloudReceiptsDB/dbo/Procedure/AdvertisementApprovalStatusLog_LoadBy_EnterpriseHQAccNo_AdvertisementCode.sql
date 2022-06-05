/****** Object:  Procedure [dbo].[AdvertisementApprovalStatusLog_LoadBy_EnterpriseHQAccNo_AdvertisementCode]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AdvertisementApprovalStatusLog_LoadBy_EnterpriseHQAccNo_AdvertisementCode]

 @EnterpriseHQAccNo as varchar(250) = Null,
 @AdvertisementCode as varchar(250) = Null

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
Select * from AdvertisementApprovalStatusLog where EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode order by createdDate Desc

END
