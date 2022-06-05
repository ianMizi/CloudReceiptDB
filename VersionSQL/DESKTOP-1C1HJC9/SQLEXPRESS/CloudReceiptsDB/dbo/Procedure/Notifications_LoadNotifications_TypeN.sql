/****** Object:  Procedure [dbo].[Notifications_LoadNotifications_TypeN]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Notifications_LoadNotifications_TypeN]  

	@CR_MykadNo varchar (50)= null,
	@CR_ID int
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


		 Select N.ID, N.Notification,N.NotificationDate,N.NotificationReadDate,N.SentFrom,E.EnterpriseLogo64 as Logo64,N.NotificationTitle,N.AdvertisementImage,N.NotificationCode,e.EnterpriseAddress,E.EnterpriseEmail,E.EnterprisePhoneNo,E.EnterpriseWebsite from Notifications N inner join [Enterprise] E on 
N.EnterpriseAccNo=E.EnterpriseAccNo where N.RowStatus='Active' and N.NotificationType='NN' and N.ID=@CR_ID
	 order by N.NotificationDate desc
     


    

	  
	END





	  






		
