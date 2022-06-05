/****** Object:  Procedure [dbo].[NotificationsMaster_InsertNotificationsMaster]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[NotificationsMaster_InsertNotificationsMaster]  
	
	@NotificationCode varchar (250)= null,	
	@NotificationTitle varchar (350)= null,		
	@PublishBy varchar (50)= null,
	@Audience varchar (150)=null,
	@EnterpriseAccNo varchar (150),
	@Notification varchar (MAX),
	@AdvertisementImage varchar (MAX),
	@SubscriberAccountNo varchar (MAX),
	@AudienceType varchar(150),
		@BlastingMessageType varchar(150),
		@SubscriberPlayerID varchar (MAX)
	


	

AS 
BEGIN 
     SET NOCOUNT ON 
     
	  IF Not EXISTS (SELECT NotificationCode  FROM NotificationsMaster WHERE NotificationCode=@NotificationCode  and 1=1)
  
 
	   INSERT INTO dbo.NotificationsMaster
          ( 
           NotificationCode,	
	   	 NotificationTitle ,
	 PublishBy,
	 Audience,
	 EnterpriseAccNo,
	 SearchCol,
	 BlastingMessageType	
	
		          ) 
     VALUES 
          ( 
   @NotificationCode,	
	   	 @NotificationTitle ,
	 @PublishBy,
	  @Audience,
	 @EnterpriseAccNo ,
	 @NotificationCode+'|'+	@NotificationTitle+'|'+@PublishBy+'|'+@Audience+'|'+@EnterpriseAccNo,
	 @BlastingMessageType
	  	
	 )
	  

    else


	Update NotificationsMaster
	set   NotificationCode=@NotificationCode,	
	   	 NotificationTitle=@NotificationTitle ,
	 PublishBy=@PublishBy,
	 Audience=@Audience,
	 EnterpriseAccNo =@EnterpriseAccNo,
	 BlastingMessageType=@BlastingMessageType
	 where NotificationCode=@NotificationCode


	-- 

	--if  (@BlastingMessageType !='SMS-Scheduled' OR @BlastingMessageType !='SMS-Immediate')
	--	   Delete  from Notifications where NotificationCode=@NotificationCode
 --               Exec dbo.Notifications_InsertNotifications @NotificationCode,@NotificationTitle,@PublishBy,@Audience,@EnterpriseAccNo,@Notification,@AdvertisementImage,@SubscriberAccountNo,@AudienceType,@BlastingMessageType

	
	END



	BEGIN
	if  (@BlastingMessageType='PN')
		   Delete  from Notifications where NotificationCode=@NotificationCode
                Exec dbo.Notifications_InsertNotifications @NotificationCode,@NotificationTitle,@PublishBy,@Audience,@EnterpriseAccNo,@Notification,@AdvertisementImage,@SubscriberAccountNo,@AudienceType,@BlastingMessageType,@SubscriberPlayerID

	

	END

	--begin
	----if(@BlastingMessageType != 'SMS-Immediate')		  
	         
	--          --  Exec dbo.Notifications_InsertNotifications @NotificationCode,@NotificationTitle,@PublishBy,@Audience,@EnterpriseAccNo,@Notification,@AdvertisementImage,@SubscriberAccountNo,@AudienceType,@BlastingMessageType


	--end

--	  SELECT *
--  FROM [CloudReceiptsDB].[dbo].[Notifications] where NotificationCode='SMS-4621-CRKli-95115'
--order by ID Desc

--  SELECT *
--  FROM [CloudReceiptsDB].[dbo].[NotificationsMaster] where NotificationCode='SMS-4621-CRKli-95115'
-- order by ID Desc
	----  select * from NotificationsMaster order by ID desc



	--  select * from NotificationsMaster where NotificationCode ='8988-CRKli-401586'

	--select * from Notifications  where NotificationCode ='8988-CRKli-401586'
----		@ID int= null,
		
--	@TrackItem varchar (550)= null,	
--	   	@TrackID varchar (550)= null,
--	@AccountNo varchar (150)= null,
	
--	@FencePath varchar (MAX)= null,
--	@ShapeType varchar (150)= null,

--	@FenceAreaName varchar (250)= null,
--	@TimeFrom varchar (150)= null,

--	@TimeTo varchar (150)= null,
--	@DaySetting varchar (150)= null,
--	@Status varchar (150)= null,
--	@FenceLength varchar (150)= null
--AS 
--BEGIN 
--     SET NOCOUNT ON 
     
--     DECLARE @TrackingName varchar(350)
--    SET @TrackingName = (select TrackItem from TrackingItems where TrackID = @TrackID)
     
--      IF Not EXISTS (SELECT ID FROM AutoFenceTimer WHERE  ID=@ID)

--	   INSERT INTO dbo.AutoFenceTimer
--          ( 
--           TrackItem,	
--	   	 TrackID ,
--	 AccountNo ,
	
--	 FencePath ,
--	 ShapeType ,

--	 FenceAreaName ,
--	 TimeFrom ,

--	 TimeTo  ,
--	 DaySetting ,
--	 Status ,
--	FenceLength
		  
--          ) 
--     VALUES 
--          ( 
--  @TrackingName,	
--	   	@TrackID ,
--	@AccountNo ,	
--	@FencePath ,
--	@ShapeType ,
--	@FenceAreaName ,
--	@TimeFrom ,
--	@TimeTo  ,
--	@DaySetting ,
--	@Status ,
--	@FenceLength
	
--          ) 


--  ELSE


  

--      Update dbo.AutoFenceTimer
--     set
--	 TrackItem=@TrackingName,
--	   	 TrackID =@TrackID,
--	 AccountNo =@AccountNo,
	
--	 FencePath=@FencePath ,
--	 ShapeType =@ShapeType,

--	 FenceAreaName =@FenceAreaName,
--	 TimeFrom=@TimeFrom ,

--	 TimeTo =@TimeTo ,
--	 DaySetting=@DaySetting  ,
--      Status  =  @Status ,
--	  FenceLength=@FenceLength 
         
	
--	where 
--	 ID=@ID

	
	  






	  
--    IF(@Status = 'InActive')
--    BEGIN
		
		
--		Delete from Geofences where TrackID=@TrackID and AccountNo =@AccountNo
	    
	  
							
--	END
   
	

    
