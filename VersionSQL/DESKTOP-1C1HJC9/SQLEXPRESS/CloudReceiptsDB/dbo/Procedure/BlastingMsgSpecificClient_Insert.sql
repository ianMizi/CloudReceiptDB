/****** Object:  Procedure [dbo].[BlastingMsgSpecificClient_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[BlastingMsgSpecificClient_Insert]  


@ID int
 ,@NotificationCode varchar (350)=null
      , @SubscriberName varchar(350)
      , @SubscriberPhoneNo varchar(350)
      , @SubscriberEmail varchar (350)=null
      , @SubscriberAccNo varchar (350)=null
      , @EnterpriseAccountNo varchar (150) 
      , @CreatedBy varchar(50)
    ,@BlastingType varchar(50)
    
   
	 
AS 
BEGIN 
     SET NOCOUNT ON 


     
   IF Not EXISTS (SELECT NotificationCode,SubscriberPhoneNo  FROM BlastingMsgSpecificClient WHERE NotificationCode=@NotificationCode  and SubscriberPhoneNo=@SubscriberPhoneNo)
   --Delete from dbo.BlastingMsgSpecificClient where NotificationCode=@NotificationCode
 
	   INSERT INTO dbo.BlastingMsgSpecificClient
          ( 
               [NotificationCode]
      ,[SubscriberName]
      ,[SubscriberPhoneNo]
      ,[SubscriberEmail]
      ,[SubscriberAccNo]
      ,[EnterpriseAccountNo]
      ,[CreatedBy]
	    ,[BlastingType]
		          ) 
     VALUES 
          ( 

@NotificationCode
      ,@SubscriberName
      ,@SubscriberPhoneNo
      ,@SubscriberEmail
      ,@SubscriberAccNo
      ,@EnterpriseAccountNo
      ,@CreatedBy
	  ,@BlastingType
	  )

	  else
	  

	  Update BlastingMsgSpecificClient
	  set 
	 NotificationCode=@NotificationCode 
      ,SubscriberName=@SubscriberName   
	  ,SubscriberPhoneNo=@SubscriberPhoneNo
      ,SubscriberEmail=@SubscriberEmail
      ,SubscriberAccNo=@SubscriberAccNo
      ,EnterpriseAccountNo=@EnterpriseAccountNo
      , ModifiedBy=@CreatedBy     
	    , ModifiedDate=getDate()
		,BlastingType=@BlastingType
	  where NotificationCode=@NotificationCode  and SubscriberPhoneNo=@SubscriberPhoneNo

	END

	--select * from BlastingMsgSpecificClient order by Id desc
