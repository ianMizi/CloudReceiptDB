/****** Object:  Procedure [dbo].[BlastingMsgSpecificClient_Delete]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[BlastingMsgSpecificClient_Delete]  


@SubscriberPhoneNo varchar (max)=null
      , @NotificationCode varchar (150) 
    
    
    
   
	 
AS 
BEGIN 
     SET NOCOUNT ON 
	 Declare  @PARAM VARCHAR(MAX)
Set @PARAM=@SubscriberPhoneNo


	  delete from  BlastingMsgSpecificClient
	
	  where NotificationCode=@NotificationCode  and SubscriberPhoneNo  in (SELECT Item FROM [dbo].[DelimitedSplit8K_T1](@PARAM, ','))


	END
