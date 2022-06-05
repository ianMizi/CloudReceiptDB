/****** Object:  Procedure [dbo].[CR_MobileUser_InsertUser]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_MobileUser_InsertUser]  
	
	@CR_MykadNo varchar (50)= null,	
	@CR_UseName varchar (50)= null,
	@CR_Password varchar (MAX)= null,	
	@CR_Email varchar (50)= null,
	@CR_PhoneNumber varchar (50)= null,



	@CR_LoginIP varchar (50)= null,	
	@CR_PhoneModel varchar (50)= null,
	@CR_PhoneUniqueID varchar (MAX)= null,	
	@CR_PhonePlatform varchar (50)= null,
	@CR_PhoneVersion varchar (50)= null,


	@CR_PhoneManufacturer varchar (50)= null,	
	@CR_PhoneIsVirtual varchar (50)= null,
	@CR_PhoneSerial varchar (MAX)= null,	
	@CR_RawPhoneInfo varchar (50)= null,
	@CR_PlayerID varchar (50)= null

AS 
BEGIN 
     SET NOCOUNT ON 
     
  

	   INSERT INTO dbo.CloudReceipts_MobileUser
          ( 
           CR_MykadNo,	
	   	 CR_UseName ,
	 CR_Password ,	
	 CR_Email ,
	 CR_PhoneNumber,
	 CR_LoginIP,
		CR_PhoneModel,
		CR_PhoneUniqueID,
		CR_PhonePlatform,
		CR_PhoneVersion, 
		CR_PhoneManufacturer,
		CR_PhoneIsVirtual, 
		CR_PhoneSerial,
		CR_RawPhoneInfo,
		CR_PlayerID,
		CR_InitalRegisterPhoneInfo,
		CR_OriginalPlayerID,
		CR_AccountName
		          ) 
     VALUES 
          ( 
  @CR_MykadNo,	
	   	 @CR_UseName ,
	 @CR_Password ,
	
	 @CR_Email ,
	 @CR_PhoneNumber,

	 @CR_LoginIP,
	 @CR_PhoneModel,
	 @CR_PhoneUniqueID,
	 @CR_PhonePlatform,
	 @CR_PhoneVersion,

	 @CR_PhoneManufacturer,
	 @CR_PhoneIsVirtual,
	 @CR_PhoneSerial,
	 @CR_RawPhoneInfo,
	 @CR_PlayerID,
	  @CR_MykadNo+'//'+@CR_UseName+'//'+@CR_Password+'//'+@CR_Email+'//'+@CR_PhoneNumber+'//'+@CR_LoginIP+'//'+@CR_PhoneModel+'//'+@CR_PhoneUniqueID+'//'+@CR_PhonePlatform+'//'+ @CR_PhoneVersion+'//'+@CR_PhoneManufacturer+'//'+@CR_PhoneIsVirtual+'//'+ @CR_PhoneSerial+'//'+	 @CR_RawPhoneInfo+'//'+@CR_PlayerID,
          @CR_PlayerID ,
		   @CR_UseName 
		  ) 


  
    

	  
	END



	  







		
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
   
	

    
