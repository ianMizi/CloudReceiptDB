/****** Object:  Procedure [dbo].[Notifications_InsertNotifications]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Notifications_InsertNotifications]  
	
	@NotificationCode varchar (250)= null,	
	@NotificationTitle varchar (350)= null,		
	@PublishBy varchar (50)= null,
	@Audience varchar (150)=null,
	@EnterpriseAccNo varchar (150),
	@Notification varchar (MAX),
	@AdvertisementImage varchar (MAX),
	@SubscriberAccountNo  varchar (MAX),
	@AudienceType  varchar (150),
	@BlastingMessageType  varchar (150),
	@SubscriberPlayerID  varchar (MAX)
	

AS 
BEGIN 
     SET NOCOUNT ON 
      
	  Declare  @SQL         VARCHAR(MAX)
Declare  @PARAM VARCHAR(MAX)
--Set @PARAM=@SubscriberAccountNo
 Set @PARAM =@SubscriberPlayerID
--SET @WhereClause=REPLACE(@WhereClause,',',''',''')


	


	  --IF Not EXISTS (SELECT NotificationCode  FROM Notifications WHERE NotificationCode=@NotificationCode  and 1=1)


       declare @EnterpriseName as varchar(500)
	  --  declare @SubscriberName as varchar(500)
		 --declare @PhoneNumber as varchar(500)

   set @EnterpriseName=(select EnterpriseName  from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
   --set @SubscriberName=(select CR_AccountName  from CloudReceipts_MobileUser where CR_AccountNo=@SubscriberAccountNo)
   --set @PhoneNumber=(select CR_PhoneNumber  from CloudReceipts_MobileUser where CR_AccountNo=@SubscriberAccountNo)



  
    if  (@AudienceType='SpecificSubcriber')
	
	--insert into Notifications (MyKadID,BlastingMessageType,Notification,SentFrom,NotificationDate,PaymentType,FlatbilliD,AccountNo,TotalPaid,NotificationType,NotificationTitle,EnterpriseAccNo,CreatedBy,NotificationCode,Audience,AdvertisementImage,SearchCol)
	--select  distinct   CM.CR_MykadNo,@BlastingMessageType,@Notification , @EnterpriseName , getDate() ,'NA','NA0000', CM.CR_AccountNo,'0.00','NN', @NotificationTitle , @EnterpriseAccNo , @PublishBy, @NotificationCode, @Audience , @AdvertisementImage ,CM.CR_MykadNo+'|'+CM.CR_PhoneNumber+'|'+ [dbo].[getCRAccountNameByCR_MobileUserAccountNo](CM.CR_AccountNo)  from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM  on ES.SubcriberAccNo=CM.CR_AccountNo where ES.SubcriberAccNo  in (SELECT Item FROM [dbo].[DelimitedSplit8K_T1](@PARAM, ','))

	 insert into Notifications (MyKadID,BlastingMessageType,Notification,SentFrom,NotificationDate,PaymentType,FlatbilliD,AccountNo,TotalPaid,NotificationType,NotificationTitle,EnterpriseAccNo,CreatedBy,NotificationCode,Audience,AdvertisementImage,SearchCol,PlayerID)

  	  select IE.MobilePhone,@BlastingMessageType, @Notification ,@EnterpriseName ,getDate(),'NA','NA0000', IE.ClientAccountNo,'0.00','NN',@NotificationTitle,@EnterpriseAccNo,@PublishBy,@NotificationCode,@Audience,@AdvertisementImage,IE.MobilePhone+'|'+IE.Email+'|'+ IE.Name,IE.UserLoginID from [Import_ExternalClients] IE 
    where  IE.PlayerID  in (SELECT Item FROM [dbo].[DelimitedSplit8K_T1](@PARAM, ',')) and  IE.ProjectAccountNo=@EnterpriseAccNo and IE.PN_Status='Y'


   

  

  if (@AudienceType='AllSubscriber')


   insert into Notifications (MyKadID,BlastingMessageType,Notification,SentFrom,NotificationDate,PaymentType,FlatbilliD,AccountNo,TotalPaid,NotificationType,NotificationTitle,EnterpriseAccNo,CreatedBy,NotificationCode,Audience,AdvertisementImage,SearchCol,PlayerID)

  --select    CM.CR_MykadNo,@BlastingMessageType, @Notification ,@EnterpriseName ,getDate(),'NA','NA0000', CM.CR_AccountNo,'0.00','NN',@NotificationTitle,@EnterpriseAccNo,@PublishBy,@NotificationCode,@Audience,@AdvertisementImage,CM.CR_MykadNo+'|'+CM.CR_PhoneNumber+'|'+ [dbo].[getCRAccountNameByCR_MobileUserAccountNo](CM.CR_AccountNo) from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo=@EnterpriseAccNo

  	  select    IE.MobilePhone,@BlastingMessageType, @Notification ,@EnterpriseName ,getDate(),'NA','NA0000', IE.ClientAccountNo,'0.00','NN',@NotificationTitle,@EnterpriseAccNo,@PublishBy,@NotificationCode,@Audience,@AdvertisementImage,IE.MobilePhone+'|'+IE.Email+'|'+ IE.Name,IE.UserLoginID from [Import_ExternalClients] IE 
   where IE.ProjectAccountNo=@EnterpriseAccNo and IE.PN_Status='Y'







   
 --   IF  EXISTS (SELECT NotificationCode  FROM Notifications WHERE NotificationCode=@NotificationCode  and 1=1)


	--Update Notifications
	--set   NotificationCode=@NotificationCode,	
	--   	 NotificationTitle=@NotificationTitle ,
	--	 NotificationDate=GETDATE(),
	-- CreatedBy=@PublishBy,
	-- Audience=@Audience,
	-- EnterpriseAccNo =@EnterpriseAccNo,
	-- AdvertisementImage=@AdvertisementImage
	-- where NotificationCode=@NotificationCode




	  
	END

	--select * from [Import_ExternalClients]order by id desc
	--select * from Notifications order by id desc

	-- select    CM.CR_MykadNo,'NA0000', 'NA0000' ,'NA0000' ,getDate(),'NA','NA0000', CM.CR_AccountNo,'0.00','NN','NA0000','NA0000','NA0000','NA0000','NA0000','NA0000',CM.CR_MykadNo+'|'+CM.CR_PhoneNumber+'|'+ [dbo].[getCRAccountNameByCR_MobileUserAccountNo](CM.CR_AccountNo) from [Import_ExternalClients] ES inner join CloudReceipts_MobileUser CM
 ---- on ES.ProjectAccountNo=CM.CR_AccountNo where ES.EnterpriseAccNo='CRInt-51958'

	--select top 5 * from Notifications order by ID desc
	--select * from [Import_ExternalClients] where ProjectAccountNo='CRKLI-36416'



	--  select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.NotificationTitle,N.Notification,[dbo].[Import_ExternalClients_getName](N.MyKadID) as CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,N.SearchCol,N.BlastingMessageType,N.SentStatus,N.NotificationDate from Notifications N 
	
	--where N.NotificationCode='2374-CRKLI-36416' and N.EnterpriseAccNo='CRKLI-36416'



	--select  top 5 * from NotificationsMaster order by ID desc

	--select * from EnterpriseSubscriber where EnterpriseAccNo='CRInt-51958'
	--select * from [Import_ExternalClients] where ProjectAccountNo='CRKLI-36416'
	--	select top 5 * from CloudReceipts_MobileUser order by ID desc
	
	--  select    IE.MobilePhone,@BlastingMessageType, @Notification ,@EnterpriseName ,getDate(),'NA','NA0000', IE.ClientAccountNo,'0.00','NN',@NotificationTitle,@EnterpriseAccNo,@PublishBy,@NotificationCode,@Audience,@AdvertisementImage,IE.MobilePhone+'|'+IE.Email+'|'+ IE.Name from [Import_ExternalClients] IE 
 --  where IE.ProjectAccountNo=@EnterpriseAccNo
	  
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
   
	

    
