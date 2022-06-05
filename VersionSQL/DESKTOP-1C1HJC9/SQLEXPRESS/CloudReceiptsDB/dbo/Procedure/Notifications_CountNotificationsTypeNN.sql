/****** Object:  Procedure [dbo].[Notifications_CountNotificationsTypeNN]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Notifications_CountNotificationsTypeNN]  

	@CR_MykadNo varchar (50)= null,
	@CR_AccountNo varchar (50)= null
	
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 

	

Select   N.ID from Notifications N 	
	  where  N.AccountNo=@CR_AccountNo and N.IsRead='N' and N.RowStatus='Active' and N.NotificationType='NN'
	 order by N.NotificationDate desc

    
     
	
	  

	  
	END


	--select * from ReceiptTemplate
	--select *  from Notifications

	--select * from Notifications
	  
	--  	 Select top 5 N.ID,N.NotificationDate,N.SentFrom,N.Logo64,N.NotificationType,N.NotificationTitle,N.FlatbilliD from Notifications N  where N.MyKadID='830219085057' and N.AccountNo='830219085057-346273' and N.IsRead='N' and N.RowStatus='Active'





		--update Notifications
		--set EnterpriseAccNo='CRPRO-24141'
		--where SentFrom='PROTON SERVICE JALAN SRI KEMBANGAN'
