/****** Object:  Procedure [dbo].[NotificationMaster_getByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[NotificationMaster_getByEnterpriseAccNo]


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


Select * from NotificationsMaster Where EnterpriseAccNo=@EnterpriseAccNo

END
--Select NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved,NM.Audience,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol,E.EnterpriseName
-- from NotificationsMaster NM inner join Enterprise E on NM.EnterpriseAccNo=E.EnterpriseAccNo where NM.EnterpriseAccNo='CRKli-401586'


--Select NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved,NM.Audience,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol,E.EnterpriseName
-- from NotificationsMaster NM inner join Enterprise E on NM.EnterpriseAccNo=E.EnterpriseAccNo where NM.EnterpriseAccNo=@EnterpriseAccNo
