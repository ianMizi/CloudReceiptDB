/****** Object:  Procedure [dbo].[BlastingMsgSpecificClient_Load]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[BlastingMsgSpecificClient_Load]  


@NotificationCode varchar (350)=null
      , @EnterpriseAccountNo varchar (150) 
    
    
    
   
	 
AS 
BEGIN 
     SET NOCOUNT ON 

	  Select  ROW_NUMBER() OVER(ORDER BY ID DESC) AS No,[ID]
      ,[NotificationCode]
      ,[SubscriberName]
      ,[SubscriberPhoneNo]
      ,[SubscriberEmail]
      ,[SubscriberAccNo]
      ,[RowStatus]
      ,[EnterpriseAccountNo]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[ModifiedDate]
      ,[ModifiedBy]
      ,[BlastingType] from  BlastingMsgSpecificClient
	
	  where NotificationCode=@NotificationCode  and EnterpriseAccountNo=@EnterpriseAccountNo

	END
