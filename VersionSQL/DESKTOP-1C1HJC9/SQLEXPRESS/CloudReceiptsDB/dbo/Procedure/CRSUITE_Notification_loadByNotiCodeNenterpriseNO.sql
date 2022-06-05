/****** Object:  Procedure [dbo].[CRSUITE_Notification_loadByNotiCodeNenterpriseNO]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CRSUITE_Notification_loadByNotiCodeNenterpriseNO]  
	

	@EnterpriseAccNo varchar (150),
	@NotificationCode int
	


	

AS 
BEGIN 
     SET NOCOUNT ON 


	 Declare @NotificationCodes as varchar (150)
	 set @NotificationCodes=(select NotificationCode from NotificationsMaster where ID=@NotificationCode)

	 Select  top 1 N.NotificationDate,N.Notification,N.NotificationTitle,N.AdvertisementImage,E.EnterpriseName,E.EnterpriseAddress,E.EnterpriseEmail,E.EnterprisePhoneNo,E.EnterpriseFaxNo,E.EnterpriseWebsite,E.EnterpriseRegistrationNo,E.EnterpriseLogo64   from  Notifications N  inner join Enterprise E on N.EnterpriseAccNo=E.EnterpriseAccNo where N.EnterpriseAccNo=@EnterpriseAccNo and N.NotificationCode=@NotificationCodes
	  

	-- Select  top 1 * from Notifications where EnterpriseAccNo=@EnterpriseAccNo and NotificationCode=@NotificationCode
   --  select  ROW_NUMBER() OVER(ORDER BY ID DESC) AS No,NotificationCode,NotificationTitle,PublishBy,PublishedDate,isApproved,Audience,EnterpriseAccNo,ApprovedDate,ApprovedBy,Notes,ReceipientsCount,SearchCol from NotificationsMaster where EnterpriseAccNo=@EnterpriseAccNo and MONTH(PublishedDate) = @Month AND YEAR(PublishedDate) = @Year order by PublishedDate desc
	  	 --select  ROW_NUMBER() OVER(ORDER BY ID DESC) AS No,NotificationCode,NotificationTitle,PublishBy,PublishedDate,isApproved,Audience,EnterpriseAccNo,ApprovedDate,ApprovedBy,Notes,ReceipientsCount from NotificationsMaster where EnterpriseAccNo='CRian-315297' and MONTH(PublishedDate) = 1 AND YEAR(PublishedDate) = 2018 
	END


	--select * from Notifications

	
	-- Select  top 1 N.NotificationDate,N.Notification,N.NotificationTitle,N.AdvertisementImage,E.EnterpriseName,E.EnterpriseAddress,E.EnterpriseEmail,E.EnterprisePhoneNo,E.EnterpriseFaxNo,E.EnterpriseWebsite,E.EnterpriseRegistrationNo,E.EnterpriseLogo64   from  Notifications N  inner join Enterprise E on N.EnterpriseAccNo=E.EnterpriseAccNo where N.EnterpriseAccNo='CRKli-401586' and N.NotificationCode='8891-CRKli-401586' 
	  


	  	-- Select  top 1 N.NotificationDate,N.Notification,N.NotificationTitle,N.AdvertisementImage,E.EnterpriseName,E.EnterpriseAddress,E.EnterpriseEmail,E.EnterprisePhoneNo,E.EnterpriseFaxNo,E.EnterpriseWebsite,E.EnterpriseRegistrationNo,E.EnterpriseLogo64   from  Notifications N  inner join Enterprise E on N.EnterpriseAccNo=E.EnterpriseAccNo where  N.ID=113



		 --select * from Notifications
