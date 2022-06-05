/****** Object:  Procedure [dbo].[Notifications_LoadNotifications_TypeN_All]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Notifications_LoadNotifications_TypeN_All]  

	@CR_MykadNo varchar (50)= null,
		@Year varchar (50)= null,
			@Month varchar (50)= null
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


	 --Select N.ID, N.Notification,N.NotificationDate,N.NotificationReadDate,N.SentFrom,N.Logo64,N.NotificationTitle from Notifications N where N.MyKadID=@CR_MykadNo and  N.IsRead='Y' and N.RowStatus='Active' and N.NotificationType='N' 
	 -- and   MONTH(N.NotificationDate) =MONTH(getdate()) AND YEAR(N.NotificationDate) = YEAR(getdate())
	 --order by N.NotificationDate desc
     

	 Select top 10 N.ID, N.Notification,N.NotificationDate,N.NotificationReadDate,N.SentFrom,E.EnterpriseLogo64 as Logo64,N.NotificationTitle,N.AdvertisementImage,N.NotificationCode,E.EnterpriseAddress,E.EnterpriseEmail,E.EnterprisePhoneNo,E.EnterpriseWebsite,N.SearchCol from Notifications N inner join [Enterprise] E on 
N.EnterpriseAccNo=e.EnterpriseAccNo where N.MyKadID=@CR_MykadNo and  N.IsRead='Y' and N.RowStatus='Active' and N.NotificationType='NN' 
	 -- and   MONTH(N.NotificationDate) =MONTH(getdate()) AND YEAR(N.NotificationDate) = YEAR(getdate())
	  	 and   MONTH(N.NotificationDate) =@Month AND YEAR(N.NotificationDate) = @Year
	 order by N.NotificationDate desc
     

    

	  
	END




--	 Select top 5 N.ID, N.Notification,N.NotificationDate,N.NotificationReadDate,N.SentFrom,E.EnterpriseLogo64 as Logo64,N.NotificationTitle,N.AdvertisementImage,N.NotificationCode,E.EnterpriseAddress,E.EnterpriseEmail,E.EnterprisePhoneNo,E.EnterpriseWebsite from Notifications N inner join [Enterprise] E on 
--N.EnterpriseAccNo=e.EnterpriseAccNo where N.MyKadID='830219085057' and  N.IsRead='Y' and N.RowStatus='Active' and N.NotificationType='NN' 
--	  and   MONTH(N.NotificationDate) =MONTH(getdate()) AND YEAR(N.NotificationDate) = YEAR(getdate())
--	  	--  and   MONTH(N.NotificationDate) =10 AND YEAR(N.NotificationDate) = 2017
--	 order by N.NotificationDate desc

--	 delete from Notifications where ID=353
     
	  

	  
--	 Select top 10 N.ID, N.Notification,N.NotificationDate,N.NotificationReadDate,N.SentFrom,E.EnterpriseLogo64 as Logo64,N.NotificationTitle,N.AdvertisementImage,N.NotificationCode,E.EnterpriseAddress,E.EnterpriseEmail,E.EnterprisePhoneNo,E.EnterpriseWebsite ,N.SearchCol from Notifications N inner join [Enterprise] E on 
--N.EnterpriseAccNo=e.EnterpriseAccNo where N.MyKadID='830219085057' and  N.IsRead='Y' and N.RowStatus='Active' and N.NotificationType='NN' 
--	 -- and   MONTH(N.NotificationDate) =MONTH(getdate()) AND YEAR(N.NotificationDate) = YEAR(getdate())
--	  	  and   MONTH(N.NotificationDate) ='04' AND YEAR(N.NotificationDate) = '2018'
--	 order by N.NotificationDate desc




		--update Notifications
		--set SearchCol='830219085057|01333769|TarmiziRahimi'
		--where MyKadID='830219085057' And  MONTH(N.NotificationDate) ='04' AND YEAR(N.NotificationDate) = '2018'


		--	update Notifications
		--set SearchCol='830219085057|01333769|TarmiziRahimi|Dear user,<br><br>Bla bla|Klinik Pergigian Cyberjaya|Happy New Year'
		--where MyKadID='830219085057' And  ID=478

		--	update Notifications
		--set SearchCol='830219085057|01333769|TarmiziRahimi|testingfgfdgfdg|KLINIK PERGIGIAN AZIZAH|testingfd'
		--where MyKadID='830219085057' And  ID=471

		--	update Notifications
		--set SearchCol='830219085057|01333769|TarmiziRahimi|testing|Klinik Pergigian Cyberjaya|testing'
		--where MyKadID='830219085057' And  ID=469

		--select * from Notifications
		--where  MyKadID='830219085057'


	
