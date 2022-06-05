/****** Object:  Procedure [dbo].[Notifications_New_N_Promotion_Dasboard]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Notifications_New_N_Promotion_Dasboard]


@EnterpriseAccNo as varchar(250),
	@Month as int,
	@Year as int

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
--Select top 1 dbo.Notification_CountSendThisMonth (EnterpriseAccNo) as TotalSendThisMonth, [dbo].[Notification_CountTotalSend](EnterpriseAccNo) as TotalSend,[dbo].[Notification_CountTotalSubscriberNews_N_Promotion] (EnterpriseAccNo) as TotalSubscriber,[dbo].[Notification_CountTotalOpen] (EnterpriseAccNo) as TotalOpen,[dbo].[Notification_CountTotalIsRead](EnterpriseAccNo) as TotalRead,
--[dbo].[Notification_CountTotalUnRead](EnterpriseAccNo) as TotalUnRead,[dbo].[NotificationMaster_CountTotalApproved] (EnterpriseAccNo) as TotalApproved from Notifications where EnterpriseAccNo=@EnterpriseAccNo and NotificationType='NN'




select COUNT(CASE WHEN MONTH(Notifications.NotificationDate) = @Month  AND YEAR(Notifications.NotificationDate) = @Year THEN Notifications.NotificationDate END) AS 'TotalSendThisMonth',
	    COUNT(CASE WHEN  YEAR(Notifications.NotificationDate) = @Year THEN Notifications.NotificationDate END) AS 'TotalSend',
		COUNT(CASE WHEN  Notifications.PlayerID is not null THEN Notifications.NotificationDate END) AS 'TotalSubscriber', 
					 COUNT(CASE WHEN MONTH(Notifications.NotificationDate) = @Month  AND YEAR(Notifications.NotificationDate) = @Year AND Notifications.IsOpen = 'Y' THEN Notifications.NotificationDate END) AS 'TotalOpen', 
		  COUNT(CASE WHEN MONTH(Notifications.NotificationDate) = @Month AND YEAR(Notifications.NotificationDate) = @Year AND Notifications.IsRead = 'Y' THEN Notifications.NotificationDate END) AS 'TotalRead',
		   COUNT(CASE WHEN MONTH(Notifications.NotificationDate) = @Month AND YEAR(Notifications.NotificationDate) = @Year AND Notifications.IsRead = 'N' THEN Notifications.NotificationDate END) AS 'TotalUnRead',
		    COUNT(CASE WHEN MONTH(Notifications.NotificationDate) = @Month AND YEAR(Notifications.NotificationDate) = @Year AND Notifications.RowStatus = 'InActive' THEN Notifications.NotificationDate END) AS 'TotalApproved'
	       FROM Notifications where Notifications.EnterpriseAccNo=@EnterpriseAccNo AND Notifications.BlastingMessageType = 'PN'

END


--select * from Notifications where NotificationType='NN'
