/****** Object:  Procedure [dbo].[Notifications_CloudReceipts_Dasboard]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Notifications_CloudReceipts_Dasboard]


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
Select top 1 dbo.NotificationCloudReceipt_CountSendThisMonth (EnterpriseAccNo) as TotalSendThisMonth, [dbo].NotificationCloudReceipt_CountTotalSend(EnterpriseAccNo) as TotalSend,[dbo].[NotificationCloudReceipt_CountTotalSubscriberCloudReceipt] (EnterpriseAccNo) as TotalSubscriber,[dbo].[NotificationCloudReceipt_CountTotalOpen] (EnterpriseAccNo) as TotalOpen,[dbo].[NotificationCloudReceipt_CountTotalIsRead](EnterpriseAccNo) as TotalRead,
[dbo].[NotificationCloudReceipt_CountTotalUnRead](EnterpriseAccNo) as TotalUnRead,[dbo].[NotificationMaster_CountTotalApproved] (EnterpriseAccNo) as TotalApproved from Notifications where EnterpriseAccNo=@EnterpriseAccNo and NotificationType='R'

END


--select * from Notifications
