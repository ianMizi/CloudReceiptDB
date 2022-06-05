/****** Object:  Procedure [dbo].[ScheduledDeliverySetting_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[ScheduledDeliverySetting_Insert]  


@ID int
 ,@SchDeliverySettingType varchar (350)=null
      , @SchDeliverySettingTypeDateTime datetime
      , @SchDeliverySettingOnDay int
      , @SchDeliverySettingOnMonth varchar (350)=null
      , @SchDeliverySettingOnTime varchar (350)=null
      , @isRepeated varchar (150) 
      , @NotificationCode varchar(50)
    ,@NotificationType varchar(50)
      ,@EnterpriseAccountNo varchar(50)
	  ,@CreatedBy varchar (50)
     ,@SentTo varchar(MAX)
	  ,@MessageTxt varchar (550)
	 
AS 
BEGIN 
     SET NOCOUNT ON 


     
   IF Not EXISTS (SELECT ID FROM ScheduledDeliverySetting WHERE ID=@ID)
 
	   INSERT INTO dbo.ScheduledDeliverySetting
          ( 
               [SchDeliverySettingType]
      ,[SchDeliverySettingTypeDateTime]
      ,[SchDeliverySettingOnDay]
      ,[SchDeliverySettingOnMonth]
      ,[SchDeliverySettingOnTime]
      ,[isRepeated]
      ,[NotificationCode]
	    ,[NotificationType]
		 ,[EnterpriseAccountNo]
		 ,[CreatedBy]
		 ,[SentTo]
		 ,[MessageTxt]
		          ) 
     VALUES 
          ( 

 @SchDeliverySettingType
      ,@SchDeliverySettingTypeDateTime
      ,@SchDeliverySettingOnDay
      ,@SchDeliverySettingOnMonth
      ,@SchDeliverySettingOnTime
      ,@isRepeated
      ,@NotificationCode
      ,@NotificationType
      ,@EnterpriseAccountNo
	  ,@CreatedBy
	  ,@SentTo
	  ,@MessageTxt
	  )


	  else

	  Update ScheduledDeliverySetting
	  set 
	 SchDeliverySettingType=@SchDeliverySettingType 
      ,SchDeliverySettingTypeDateTime=@SchDeliverySettingTypeDateTime   
	  ,SchDeliverySettingOnDay=@SchDeliverySettingOnDay
      ,SchDeliverySettingOnMonth=@SchDeliverySettingOnMonth
      ,SchDeliverySettingOnTime=@SchDeliverySettingOnTime
      ,isRepeated=@isRepeated
      , NotificationCode=@NotificationCode     
	    , NotificationType=@NotificationType
		,EnterpriseAccountNo=@EnterpriseAccountNo
		,ModifiedDate=getDate()
		,ModifiedBy=@CreatedBy
		,SentTo=@SentTo
		,MessageTxt=@MessageTxt
	  where ID=@ID  and EnterpriseAccountNo=@EnterpriseAccountNo

	END
