/****** Object:  Procedure [dbo].[NotificationsMaster_RecentlyUsed]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[NotificationsMaster_RecentlyUsed]  
	

	@EnterpriseAccNo varchar (150),
	@Typed varchar (250)

	

AS 
BEGIN 
     SET NOCOUNT ON 
	 

	 if ( @Typed ='RecentlyUsedSMS')
	   select top 10 ROW_NUMBER() OVER(ORDER BY PublishedDate DESC) AS No,ID,NotificationCode,NotificationTitle,PublishBy,PublishedDate,isApproved,[dbo].[NotificationMaster_getNotificationsText] (NotificationCode) as Audience,EnterpriseAccNo,ApprovedDate,ApprovedBy,Notes,ReceipientsCount,SearchCol from NotificationsMaster where EnterpriseAccNo=@EnterpriseAccNo  And RowStatus='Active' And BlastingMessageType like '%SMS%' order by PublishedDate desc
	else
	 if ( @Typed ='RecentlyUsedPN')
	   select top 10 ROW_NUMBER() OVER(ORDER BY PublishedDate DESC) AS No,ID,NotificationCode,NotificationTitle,PublishBy,PublishedDate,isApproved,[dbo].[NotificationMaster_getNotificationsText] (NotificationCode) as Audience,EnterpriseAccNo,ApprovedDate,ApprovedBy,Notes,ReceipientsCount,SearchCol from NotificationsMaster where EnterpriseAccNo=@EnterpriseAccNo  And RowStatus='Active' And BlastingMessageType = 'PN' order by PublishedDate desc
	
		--else
	
	
	  --if ( @Typed ='NotifcationMaster')
   --  select  ROW_NUMBER() OVER(ORDER BY NM.PublishedDate DESC) AS No,NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved,NM.Audience,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol,E.EnterpriseName,NM.BlastingMessageType from NotificationsMaster NM inner join Enterprise E on NM.EnterpriseAccNo=E.EnterpriseAccNo where NM.EnterpriseAccNo=@EnterpriseAccNo and MONTH(NM.PublishedDate) = @Month AND YEAR(NM.PublishedDate) = @Year    And NM.BlastingMessageType='PN'  And NM.RowStatus='Active'  order by NM.PublishedDate desc
	  
	  --	else

	  -- if ( @Typed ='SMSMaster')
   --  select  ROW_NUMBER() OVER(ORDER BY NM.PublishedDate DESC) AS No,NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved,NM.Audience,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol,E.EnterpriseName,NM.BlastingMessageType from NotificationsMaster NM inner join Enterprise E on NM.EnterpriseAccNo=E.EnterpriseAccNo where NM.EnterpriseAccNo=@EnterpriseAccNo and MONTH(NM.PublishedDate) = @Month AND YEAR(NM.PublishedDate) = @Year    And NM.BlastingMessageType like '%SMS%'   And NM.RowStatus='Active'  order by NM.PublishedDate desc
	  
	  -- select ID AS No,ID,NotificationCode,NotificationTitle,PublishBy,PublishedDate,isApproved,Audience,EnterpriseAccNo,ApprovedDate,ApprovedBy,Notes,ReceipientsCount,SearchCol from NotificationsMaster where EnterpriseAccNo=@EnterpriseAccNo and MONTH(PublishedDate) = @Month AND YEAR(PublishedDate) = @Year order by PublishedDate desc
	 
	  
	  	 --select  ROW_NUMBER() OVER(ORDER BY ID DESC) AS No,NotificationCode,NotificationTitle,PublishBy,PublishedDate,isApproved,Audience,EnterpriseAccNo,ApprovedDate,ApprovedBy,Notes,ReceipientsCount from NotificationsMaster where EnterpriseAccNo='CRian-315297' and MONTH(PublishedDate) = 1 AND YEAR(PublishedDate) = 2018 
	END

	--select * from Notifications


	

	   --select top 10 ROW_NUMBER() OVER(ORDER BY PublishedDate DESC) AS No,ID,NotificationCode,NotificationTitle,PublishBy,PublishedDate,isApproved,[dbo].[NotificationMaster_getNotificationsText] (NotificationCode) as Audience,EnterpriseAccNo,ApprovedDate,ApprovedBy,Notes,ReceipientsCount,SearchCol from NotificationsMaster where EnterpriseAccNo='CRKli-401586'  And RowStatus='Active' And BlastingMessageType = 'PN' order by PublishedDate desc
	
	  --select * from NotificationsMaster where BlastingMessageType='PN' and EnterpriseAccNo='CRKli-401586' order by ID desc
	  --select top 10 ROW_NUMBER() OVER(ORDER BY PublishedDate DESC) AS No,ID,NotificationCode,NotificationTitle,PublishBy,PublishedDate,isApproved,[dbo].[NotificationMaster_getNotificationsText] (NotificationCode) as Audience,EnterpriseAccNo,ApprovedDate,ApprovedBy,Notes,ReceipientsCount,SearchCol from NotificationsMaster where EnterpriseAccNo='CRKli-401586'  And RowStatus='Active' And BlastingMessageType = 'PN' order by PublishedDate desc
	

	  --select top 10  * from Notifications order by NotificationDate desc



	  -- select top 10 ROW_NUMBER() OVER(ORDER BY NM.PublishedDate DESC) AS No,NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved, N.Notification as Audience,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol from NotificationsMaster NM inner join Notifications N on NM.EnterpriseAccNo=N.EnterpriseAccNo where NM.EnterpriseAccNo='CRKli-95115' and N.NotificationType <>'R' order by NM.PublishedDate desc
	 

	--  select  ROW_NUMBER() OVER(ORDER BY NM.PublishedDate DESC) AS No,NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved,NM.Audience,Nm.Audience as Notifcation,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol,E.EnterpriseName from NotificationsMaster NM inner join Enterprise E on NM.EnterpriseAccNo=E.EnterpriseAccNo where NM.EnterpriseAccNo='CRKli-95115' and MONTH(NM.PublishedDate) = 5 AND YEAR(NM.PublishedDate) = 2018 order by NM.PublishedDate desc
	  
	   --select  ROW_NUMBER() OVER(ORDER BY NM.PublishedDate DESC) AS No,NM.ID,NM.NotificationCode,NM.NotificationTitle,NM.PublishBy,NM.PublishedDate,NM.isApproved,NM.Audience,NM.EnterpriseAccNo,NM.ApprovedDate,NM.ApprovedBy,NM.Notes,NM.ReceipientsCount,NM.SearchCol,E.EnterpriseName,NM.BlastingMessageType from NotificationsMaster NM inner join Enterprise E on NM.EnterpriseAccNo=E.EnterpriseAccNo where NM.EnterpriseAccNo=@EnterpriseAccNo and MONTH(NM.PublishedDate) = @Month AND YEAR(NM.PublishedDate) = @Year    And NM.BlastingMessageType like '%SMS%'   order by NM.PublishedDate desc
	 
