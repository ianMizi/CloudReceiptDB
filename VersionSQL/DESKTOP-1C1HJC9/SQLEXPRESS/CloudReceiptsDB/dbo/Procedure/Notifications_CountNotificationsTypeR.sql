/****** Object:  Procedure [dbo].[Notifications_CountNotificationsTypeR]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Notifications_CountNotificationsTypeR]  

	@CR_MykadNo varchar (50)= null,
	@CR_AccountNo varchar (50)= null
	
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 

	

Select Top 10  N.ID from Notifications N 	
	  where  N.AccountNo=@CR_AccountNo and N.IsRead='N' and N.RowStatus='Active' and N.NotificationType='R' order by N.NotificationDate desc
	--and N.NotificationDate =MONTH(getDate()) and N.NotificationDate = YEAR(getdate())

    
     
	
	  

	  
	END


	--select * from ReceiptTemplate
	--select *  from Notifications N where N.AccountNo='830219085057-346273' and  N.IsRead='N' and N.RowStatus='Active' and N.NotificationType='R'

	--select * from Notifications
	  
	--  	 Select top 5 N.ID,N.NotificationDate,N.SentFrom,N.Logo64,N.NotificationType,N.NotificationTitle,N.FlatbilliD from Notifications N  where N.MyKadID='830219085057' and N.AccountNo='830219085057-346273' and N.IsRead='N' and N.RowStatus='Active'





		--update Notifications
		--set EnterpriseAccNo='CRPRO-24141'
		--where SentFrom='PROTON SERVICE JALAN SRI KEMBANGAN'
