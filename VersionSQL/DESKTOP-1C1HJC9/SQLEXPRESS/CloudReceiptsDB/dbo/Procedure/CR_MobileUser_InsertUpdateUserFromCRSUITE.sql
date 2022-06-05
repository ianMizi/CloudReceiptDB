/****** Object:  Procedure [dbo].[CR_MobileUser_InsertUpdateUserFromCRSUITE]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_MobileUser_InsertUpdateUserFromCRSUITE]  
	@ID int,
	@EnterpriseAccNo varchar (250)= null,
	@CR_AccountNo varchar (150)= null,	
	@UserOperator varchar (150)= null,	

	@CR_Name varchar (150)= null,	
	@CR_PhoneNumber varchar (150)= null,
	@CR_Email varchar (150)= null,
	@CR_CompanyName varchar (550)= null,
	--@CR_CompanyAdress varchar (550)= null
	@CR_CompanyAddress varchar (550)= null
	  



AS 



	--Begin


	-- --DECLARE @SubcriberAccNo as Varchar(200)

	--	--  Set @SubcriberAccNo=(select top 1 SubcriberAccNo from EnterpriseSubscriber where SearchCol Like '%'+@CR_PhoneNumber+'|'+@CR_Email+'%')
	--	   IF Not EXISTS (SELECT CR_AccountNo FROM CloudReceipts_MobileUser WHERE CR_AccountNo=@CR_AccountNo ) 
	--	   Exec dbo.EnterpriseSubscriber_InsertFromCRSUITE @CR_AccountNo,@EnterpriseAccNo,@CR_Name,@UserOperator,@CR_PhoneNumber,@CR_Email

	--End
	  


BEGIN 
     SET NOCOUNT ON 
	-- Declare @exisPhoneNo as varchar(50)='TIADA'
	-- Declare @exisEmail as varchar(50)='TIADA'
	 Declare @IDToUpdate as int
	  set @IDToUpdate=(select ID from CloudReceipts_MobileUser where CR_PhoneNumber=@CR_PhoneNumber or CR_Email=@CR_Email)
	-- Declare @LengtEmail as int

	-- set @exisPhoneNo =(select top 1 CR_PhoneNumber from CloudReceipts_MobileUser where CR_PhoneNumber=@CR_PhoneNumber)
	-- set @LengtPhoneNo=(select LEN(@exisPhoneNo))
	 

	--  set @exisEmail =(select top 1 CR_Email from CloudReceipts_MobileUser where CR_Email=@CR_Email)
	-- set @LengtEmail=(select LEN(@exisEmail))

	-- if @LengtPhoneNo > 1
	--   UPDATE CloudReceipts_MobileUser
	--	  SET 
 --  CR_PhoneNumber=@CR_PhoneNumber	   	 
	--	  where CR_PhoneNumber=@CR_PhoneNumber

	--  if @LengtEmail > 1
 --UPDATE CloudReceipts_MobileUser
	--	  SET 
 --  CR_Email=@CR_Email	   	 
	--	  where  CR_Email=@CR_Email	
	
	-- else

	
	 IF Not EXISTS (SELECT CR_AccountNo FROM CloudReceipts_MobileUser WHERE CR_AccountNo=@CR_AccountNo ) 
		   Exec dbo.EnterpriseSubscriber_InsertFromCRSUITE @CR_AccountNo,@EnterpriseAccNo,@CR_Name,@UserOperator,@CR_PhoneNumber,@CR_Email






	  -- IF Not EXISTS (SELECT CR_PhoneNumber FROM CloudReceipts_MobileUser WHERE CR_PhoneNumber=@CR_PhoneNumber and 1=1) 
	  --  IF Not EXISTS  (SELECT CR_Email FROM CloudReceipts_MobileUser WHERE CR_Email=@CR_Email and 1=1) 
	  --Exec dbo.EnterpriseSubscriber_InsertFromCRSUITE @CR_AccountNo,@EnterpriseAccNo,@CR_Name,@UserOperator,@CR_PhoneNumber,@CR_Email
	 

      IF Not EXISTS (SELECT CR_PhoneNumber FROM CloudReceipts_MobileUser WHERE CR_PhoneNumber=@CR_PhoneNumber and 1=1) 
	    IF Not EXISTS  (SELECT CR_Email FROM CloudReceipts_MobileUser WHERE CR_Email=@CR_Email and 1=1) 
            	
	--  Exec dbo.EnterpriseSubscriber_InsertFromCRSUITE @CR_AccountNo,@EnterpriseAccNo,@CR_Name,@UserOperator,@CR_PhoneNumber,@CR_Email
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
		CR_PhoneImeiNo,
		CR_PhonePlatform,
		CR_PhoneVersion, 
		CR_PhoneManufacturer,
		CR_PhoneIsVirtual, 
		CR_PhoneSerial,
		CR_RawPhoneInfo,
		CR_PlayerID,
		CR_InitalRegisterPhoneInfo,
		CR_OriginalPlayerID,
		CR_AccountName,
		CR_AccountNo,
		CR_IsRememberPwd
		          ) 
     VALUES 
          ( 
 @CR_PhoneNumber,	
	   	 @CR_Email ,
	 'abc@123' ,
	
	 @CR_Email ,
	 @CR_PhoneNumber,

	 'InsertFromCRSuite',
	'InsertFromCRSuite',
	'InsertFromCRSuite',
	 @CR_CompanyName,
	 'InsertFromCRSuite',
	'InsertFromCRSuite',

	'InsertFromCRSuite',
	'InsertFromCRSuite',
	'InsertFromCRSuite',
	'InsertFromCRSuite',
	'InsertFromCRSuite',
	  @CR_Name+'//'+@CR_PhoneNumber+'//'+@CR_Email,
        'InsertFromCRSuite',
		  @CR_Name,
		  @CR_AccountNo,
@CR_CompanyAddress
		  ) 
		 

		   
		  ELSE
		 -- UPDATE CloudReceipts_MobileUser
		 -- SET 
   --CR_MykadNo=@CR_PhoneNumber,	
	  -- 	  @CR_Email=@CR_Email
		 -- where ID=@ID




   UPDATE CloudReceipts_MobileUser
		  SET 
   CR_PhoneNumber=@CR_PhoneNumber, CR_Email=@CR_Email	 	   	 
		  where ID=@IDToUpdate
		 
		 
		  ELSE

		   UPDATE CloudReceipts_MobileUser
		  SET 
   CR_Email=@CR_Email,CR_PhoneNumber=@CR_PhoneNumber	   	 
		  where ID=@IDToUpdate
	  



	  
	END



	Begin


	
 --DECLARE @MobilePhone varchar(100);
 -- DECLARE @Email varchar(100);
 -- DECLARE @PlayerID varchar(200);
 -- DECLARE @SubscriberAccNo varchar(200); 
 -- DECLARE @Name varchar(200);
 --  DECLARE @EnterpriseName varchar(250);

 -- --set @SubscriberAccNo=(select SubcriberAccNo from EnterpriseSubscriber where ID=@id) 
	--set @EnterpriseName=(select EnterpriseName from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
	--   --set @EnterpriseAccNo=(select EnterpriseAccNo from EnterpriseSubscriber where ID=@id)
	--     set @MobilePhone=(select CR_PhoneNumber from CloudReceipts_MobileUser where CR_AccountNo=@SubscriberAccNo)
 --  set @Email=(select CR_Email from CloudReceipts_MobileUser where CR_AccountNo=@SubscriberAccNo)
 --  set @PlayerID=(select CR_PlayerID from CloudReceipts_MobileUser where CR_AccountNo=@SubscriberAccNo) 
	--set @Name=(select CR_AccountName from CloudReceipts_MobileUser where CR_AccountNo=@SubscriberAccNo) 



 	 IF  EXISTS (SELECT PlayerID,Email,MobilePhone  FROM Import_ExternalClients WHERE ClientAccountNo=@CR_AccountNo  and ProjectAccountNo=@EnterpriseAccNo and PlayerID='InsertFromCRSuite' and Email=@CR_Email and MobilePhone=@CR_PhoneNumber)

  Update dbo.Import_ExternalClients          
    Set
	PlayerID='InsertFromCRSuite',Email=@CR_Email,MobilePhone=@CR_PhoneNumber,CreatedDate=getDate(),Name=@CR_Name,SearchCol=@CR_PhoneNumber+'|'+@CR_Email+'|'+@CR_Name
	WHERE ClientAccountNo=@CR_AccountNo  and ProjectAccountNo=@EnterpriseAccNo



 ELSE
 
     INSERT INTO dbo.Import_ExternalClients
          ( 
         
	[ProjectName]
      ,[ProjectAccountNo]
      ,[AccountOwner]
      ,[ClientAccountNo]
      ,[Name]
      ,[MobilePhone]
      ,[Email]
      ,[PlayerID]
      ,[PN_Status]
      ,[SMS_Status]
      ,[Email_Status]
      ,[RowStatus]
	  ,[SearchCol]                
          ) 
     VALUES 
          ( 
   'CRSUITE',
      @EnterpriseAccNo,
      @CR_CompanyName,
     @CR_AccountNo,
      @CR_Name,
      @CR_PhoneNumber,
      @CR_Email,
      'InsertFromCRSuite',
      'N',
      'Y',
     'Y',
      'Active',
	  @CR_PhoneNumber+'|'+@CR_Email+'|'+@CR_Name    
	  )




	end

	 --select * from EnterpriseSubscriber
	 --select * from CloudReceipts_MobileUser


	 --EnterpriseSubscriberNewsAndPromotion_getByEnterpriseAccNo
	 --EnterpriseSubscriberNewsAndPromotion_getByEnterpriseAccNo
	 ----delete from EnterpriseSubscriber
	 --where ID=47

	 --delete from CloudReceipts_MobileUser
	 --where ID=45

	 --delete from EnterpriseSubscriber
	 --where ID in(50,52,54,55)
		
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
   
	

    
