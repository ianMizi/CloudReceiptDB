/****** Object:  Procedure [dbo].[Notifications_UpdateReadNotifications_ExternalApp]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Notifications_UpdateReadNotifications_ExternalApp]  

@UserName varchar (150)= null,
	@NotificationCode varchar (250)= null

	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


	 

	 Update Notifications
	 set IsRead='Y',NotificationReadDate=GETDATE()

	 where PlayerID=@UserName and NotificationCode=@NotificationCode
    

	  
	END





	  




	 --select * from Notifications order by id desc


		
