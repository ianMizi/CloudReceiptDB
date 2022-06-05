/****** Object:  Procedure [dbo].[NotificationsMasterCReDentalRecentlyUsed_LoadByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[NotificationsMasterCReDentalRecentlyUsed_LoadByEnterpriseAccNo]  
	

	@EnterpriseAccNo varchar (150),
	@Month int,
	@Year int,
	@Typed varchar (50)

	

AS 
BEGIN 
     SET NOCOUNT ON 
	 


	--   select top 10 ROW_NUMBER() OVER(ORDER BY NM.PublishedDate DESC) AS No,NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved,N.Audience,N.Notification,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol from NotificationsMaster NM inner join Notifications N on NM.EnterpriseAccNo=N.EnterpriseAccNo where NM.EnterpriseAccNo=@EnterpriseAccNo and N.NotificationType ='NN' order by NM.PublishedDate desc
	 
	
	   select top 10 ROW_NUMBER() OVER(ORDER BY NM.PublishedDate DESC) AS No,NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved,NM.Audience,[dbo].[NotificationMaster_getNotificationsText] (NM.NotificationCode) as Notification,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol from NotificationsMaster NM where  NM.EnterpriseAccNo=@EnterpriseAccNo order by NM.PublishedDate desc
	 
	  
	  	 --select  ROW_NUMBER() OVER(ORDER BY ID DESC) AS No,NotificationCode,NotificationTitle,PublishBy,PublishedDate,isApproved,Audience,EnterpriseAccNo,ApprovedDate,ApprovedBy,Notes,ReceipientsCount from NotificationsMaster where EnterpriseAccNo='CRian-315297' and MONTH(PublishedDate) = 1 AND YEAR(PublishedDate) = 2018 
	END

	--select * from Notifications


	
	   --select top 10 ROW_NUMBER() OVER(ORDER BY NM.PublishedDate DESC) AS No,NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved,NM.Audience,[dbo].[NotificationMaster_getNotificationsText] (NM.NotificationCode) as Notification,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol from NotificationsMaster NM where  NM.EnterpriseAccNo='CRKli-95115' order by NM.PublishedDate desc
	 
	
	  
	  --select * from NotificationsMaster
	  --select top 10  * from Notifications order by NotificationDate desc



	  -- select top 10 ROW_NUMBER() OVER(ORDER BY NM.PublishedDate DESC) AS No,NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved, N.Notification as Audience,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol from NotificationsMaster NM inner join Notifications N on NM.EnterpriseAccNo=N.EnterpriseAccNo where NM.EnterpriseAccNo='CRKli-95115' and N.NotificationType <>'R' order by NM.PublishedDate desc
	 

	--  select  ROW_NUMBER() OVER(ORDER BY NM.PublishedDate DESC) AS No,NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved,NM.Audience,Nm.Audience as Notifcation,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol,E.EnterpriseName from NotificationsMaster NM inner join Enterprise E on NM.EnterpriseAccNo=E.EnterpriseAccNo where NM.EnterpriseAccNo='CRKli-95115' and MONTH(NM.PublishedDate) = 5 AND YEAR(NM.PublishedDate) = 2018 order by NM.PublishedDate desc
	  
	--select * from Notifications order by NotificationDate desc
