/****** Object:  Procedure [dbo].[Notifications_InsertNotifications_PN]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Notifications_InsertNotifications_PN]  
	
	@PhoneNumber varchar (250)= null,
	@NotificationCode varchar (250)= null,	
	@Notification varchar (MAX),	
	@PublishBy varchar (50)= null,
	@Audience varchar (150)=null,
	@EnterpriseAccNo varchar (150),
	@AudienceType  varchar (150),
	@BlastingMessageType  varchar (150),
	@SentStatus  varchar (350)
	
AS 
BEGIN 
     SET NOCOUNT ON 
       declare @EnterpriseName as varchar(500)
	    declare @AccountNo as varchar(500)
		 declare @AccountName as varchar(500)
		  declare @MobilePhone as varchar(500)

   set @EnterpriseName=(select EnterpriseName  from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
   	  set @MobilePhone=(select CR_PhoneNumber  from CloudReceipts_MobileUser where CR_PlayerID=@PhoneNumber)
   set @AccountNo=(select CR_AccountNo  from CloudReceipts_MobileUser where CR_PhoneNumber=@MobilePhone)
    set @AccountName=(select CR_AccountName  from CloudReceipts_MobileUser where CR_PhoneNumber=@MobilePhone)


	insert into Notifications (MyKadID,Notification,SentFrom,IsRead,NotificationDate,AccountNo,TotalPaid,
	NotificationType,NotificationTitle,EnterpriseAccNo,CreatedBy,NotificationCode,Audience,AdvertisementImage,SearchCol,BlastingMessageType,SentStatus)  
	values (
	 @MobilePhone,@Notification , @EnterpriseName ,
	 'NA',getDate() ,@AccountNo,'0.00',
	 'NN', @Notification , @EnterpriseAccNo ,
	  @PublishBy, @NotificationCode, @Audience ,'NA' ,@PhoneNumber +'|'+@AccountName,@BlastingMessageType,@SentStatus) 
	 
	  
	END

	--SELECT *
  --FROM [CloudReceiptsDB].[dbo].[Notifications]
  --where  Notification='selamat petang'  order by ID Desc

  --SELECT *
  --FROM [CloudReceiptsDB].[dbo].[NotificationsMaster]
  --where  NotificationCode='SMS-7675-CRian-315297'  order by ID Desc
	--select * from Notifications


	  
	 --   select   ES.SubscribedNewsAndPromotion ,CM.CR_MykadNo, '@Notification' ,'@EnterpriseName' ,getDate(),'NA','NA0000', CM.CR_AccountNo,'0.00','NN','@NotificationTitle','@EnterpriseAccNo','@PublishBy','@NotificationCode','@Audience','@AdvertisementImage',CM.CR_MykadNo+'|'+CM.CR_PhoneNumber+'|'+ [dbo].[getCRAccountNameByCR_MobileUserAccountNo](CM.CR_AccountNo) from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo='CRKli-401586' and ES.SubscribedNewsAndPromotion=1
  

  --SELECT * FROM EnterpriseSubscriber

	  --select * from Notifications
	  ----update Notifications
	  --set SearchCol=[dbo].[getCRMyKadNoCR_MobileUserAccountNo]('970810086027-855328')+'|'+[dbo].[getCRPhoneNumberCR_MobileUserAccountNo]('970810086027-855328')+'|'+[dbo].[getCRAccountNameByCR_MobileUserAccountNo]('970810086027-855328')
	  --where AccountNo='970810086027-855328'

	  --select * from NotificationsMaster
	


	 --select    CM.CR_MykadNo,'NA', 'NA' ,'NA' ,getDate(),'NA','NA0000', CM.CR_AccountNo,'0.00','NN','NA','NA','NA','NA','NA','NA',CM.CR_MykadNo+'|'+CM.CR_PhoneNumber+'|'+ [dbo].[getCRAccountNameByCR_MobileUserAccountNo](CM.CR_AccountNo) from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo='CRKli-95115' 

		
--		@ID int= null,
		
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
   
	

    
