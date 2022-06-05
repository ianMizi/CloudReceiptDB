/****** Object:  Procedure [dbo].[ScheduledDeliverySetting_Delete]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[ScheduledDeliverySetting_Delete]  


 @NotificationCode varchar (350) 
      , @EnterpriseAccountNo varchar (150) 
    ,@ModifiedBy varchar (150) 	
    
    
   
	 
AS 
BEGIN 
     SET NOCOUNT ON 

	 Update ScheduledDeliverySetting
	 set RowStatus='InActive',ModifiedDate=getDate(),ModifiedBy=@ModifiedBy	
	  where NotificationCode=@NotificationCode  and EnterpriseAccountNo=@EnterpriseAccountNo 




	   Update NotificationsMaster
	 set RowStatus='InActive',ModifiedDate=getDate(),ModifiedBy=@ModifiedBy	
	  where NotificationCode=@NotificationCode  and EnterpriseAccNo=@EnterpriseAccountNo 


	     Update Notifications
	 set RowStatus='InActive',CreatedBy=@ModifiedBy	
	  where NotificationCode=@NotificationCode  and EnterpriseAccNo=@EnterpriseAccountNo 

	END



	--select * from Notifications
