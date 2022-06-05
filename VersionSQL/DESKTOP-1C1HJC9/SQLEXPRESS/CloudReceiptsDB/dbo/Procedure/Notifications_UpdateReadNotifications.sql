/****** Object:  Procedure [dbo].[Notifications_UpdateReadNotifications]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Notifications_UpdateReadNotifications]  

@ID int,
	@CR_AccountNo varchar (50)= null

	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


	 

	 Update Notifications
	 set IsRead='Y',NotificationReadDate=GETDATE()
	 where AccountNo=@CR_AccountNo and ID=@ID
    

	  
	END





	  




	 --select * from Notifications


		
