/****** Object:  Procedure [dbo].[Enterprises_LoadByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Enterprises_LoadByEnterpriseAccNo]


@EnterpriseAccNo as varchar(250)

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
--Select * from Enterprises where EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active'

Select E.* , [dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](E.BusinessTypeGroupCode) as BusinessTypeIconPath ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](E.BusinessTypeGroupCode) as BusinessTypeGroup from Enterprises E where  E.EnterpriseAccNo=@EnterpriseAccNo and E.RowStatus='Active'

END
