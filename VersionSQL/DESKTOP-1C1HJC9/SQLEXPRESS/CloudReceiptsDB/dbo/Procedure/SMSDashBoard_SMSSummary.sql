/****** Object:  Procedure [dbo].[SMSDashBoard_SMSSummary]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[SMSDashBoard_SMSSummary]
@EnterpriseAccNo varchar (350),
	@Month int,
	@Year int
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT 
	--COUNT(CASE WHEN Notifications.EnterpriseAccNo='CRWAL-606992' AND Notifications.SentStatus <> 'Scheduled'  THEN Notifications.NotificationDate END) AS 'Total',
	--    COUNT(CASE WHEN Notifications.EnterpriseAccNo='CRWAL-606992'  and YEAR (Notifications.NotificationDate) = YEAR(getDate()) THEN Notifications.NotificationDate END) AS 'Year',
	--	 COUNT(CASE WHEN Notifications.EnterpriseAccNo='CRWAL-606992'  and MONTH (Notifications.NotificationDate) = MONTH(getDate()) AND Notifications.SentStatus <> 'Scheduled'  THEN Notifications.NotificationDate END) AS 'Month',
	--	  COUNT(CASE WHEN Notifications.EnterpriseAccNo='CRWAL-606992'  and MONTH (Notifications.NotificationDate) = MONTH(getDate()) AND Notifications.SentStatus = 'Scheduled' THEN Notifications.NotificationDate END) AS 'Schedule',
 --   COUNT(CASE WHEN Notifications.SentStatus = '01'  THEN Notifications.SentStatus END) AS 'Succes',
	-- COUNT(CASE WHEN Notifications.SentStatus <> '01' AND Notifications.SentStatus <> 'Scheduled'  THEN Notifications.SentStatus END) AS 'Failed' 

	--FROM Notifications where Notifications.EnterpriseAccNo='CRWAL-606992' AND Notifications.RowStatus = 'Active'

	
	COUNT(CASE WHEN  Notifications.SentStatus <> 'Scheduled'  THEN Notifications.NotificationDate END) AS 'TotalSend',
	    COUNT(CASE WHEN  YEAR(Notifications.NotificationDate) = @Year THEN Notifications.NotificationDate END) AS 'SendByYear',
		 COUNT(CASE WHEN MONTH(Notifications.NotificationDate) = @Month AND Notifications.SentStatus <> 'Scheduled'  THEN Notifications.NotificationDate END) AS 'SendByMonth',
		  COUNT(CASE WHEN MONTH(Notifications.NotificationDate) = @Month AND YEAR(Notifications.NotificationDate) = @Year AND Notifications.SentStatus = 'Scheduled' THEN Notifications.NotificationDate END) AS 'Scheduled',
    COUNT(CASE WHEN Notifications.SentStatus = '01' AND MONTH(Notifications.NotificationDate) = @Month AND YEAR(Notifications.NotificationDate) = @Year  THEN Notifications.SentStatus END) AS 'Succes',
	 COUNT(CASE WHEN Notifications.SentStatus <> '01' AND Notifications.SentStatus <> 'Scheduled' AND MONTH(Notifications.NotificationDate) = @Month AND YEAR(Notifications.NotificationDate) = @Year THEN Notifications.SentStatus END) AS 'Failed' 

	FROM Notifications where Notifications.EnterpriseAccNo=@EnterpriseAccNo AND Notifications.RowStatus = 'Active'
	--and MONTH (Notifications.NotificationDate) = MONTH(getDate())
	--and YEAR (Notifications.NotificationDate) = YEAR(getDate())



    
END

--and MONTH(Notifications.NotificationDate) = @Month AND YEAR(Notifications.NotificationDate) = @Year 
--select * from Notifications   where Notifications.EnterpriseAccNo='CRWAL-606992' AND Notifications.SentStatus <> 'Scheduled'

--select distinct(SentStatus) from Notifications   where Notifications.EnterpriseAccNo='CRWAL-606992' AND Notifications.SentStatus <> 'Scheduled'


--update Notifications
--set SentStatus='01'
--where SentStatus is null

--select * from Notifications where SentStatus<>'01'


--and YEAR (Notifications.NotificationDate) = YEAR(getDate())
