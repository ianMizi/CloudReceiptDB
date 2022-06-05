/****** Object:  Procedure [dbo].[Notifications_LoadByNotificationCode_N_EnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Notifications_LoadByNotificationCode_N_EnterpriseAccNo]  
	

	--@NotificationCode varchar (150),
		@NotificationCode int,
	@EnterpriseAccNo varchar (150)


	

AS 
BEGIN 
     SET NOCOUNT ON 

	  Declare @NotificationCodes as varchar (150)
	 set @NotificationCodes=(select NotificationCode from NotificationsMaster where ID=@NotificationCode)

 --   select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.NotificationTitle,N.Notification,CM.CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,N.SearchCol,N.BlastingMessageType,N.SentStatus,N.NotificationDate from Notifications N inner join CloudReceipts_MobileUser CM
	--on N.MyKadID = CM.CR_PhoneNumber
	--where NotificationCode=@NotificationCodes and EnterpriseAccNo=@EnterpriseAccNo
	  


	--  select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.NotificationTitle,N.Notification,IE.Name as CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,N.SearchCol,N.BlastingMessageType,N.SentStatus,N.NotificationDate from Notifications N inner join [Import_ExternalClients] IE
	--on N.MyKadID = IE.MobilePhone
	--where N.NotificationCode=@NotificationCodes and N.EnterpriseAccNo=@EnterpriseAccNo


	
	  select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.NotificationTitle,N.Notification,[dbo].[Import_ExternalClients_getName](N.MyKadID) as CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,N.SearchCol,N.BlastingMessageType,N.SentStatus,N.NotificationDate from Notifications N 
	
	where N.NotificationCode=@NotificationCodes and N.EnterpriseAccNo=@EnterpriseAccNo
	  
	END


	

	--select top 5 * from [Import_ExternalClients] 

	--select top 5 * from Notifications order by ID desc

	--update Notifications
	--set MyKadID='01369097we'
	--where ID=1551

	
	--update Notifications
	--set MyKadID='01113218926'
	--where ID=1550

	--update Notifications
	--set MyKadID='0122604435'
	--where ID=1549


	  








	  --select * from [dbo].[Import_ExternalClients]
	  --select top 5 * from NotificationsMaster order by Id desc
