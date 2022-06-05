/****** Object:  Procedure [dbo].[CR_MobileUser_EditUserFromCRSUITE]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_MobileUser_EditUserFromCRSUITE]  
	@ID int,
	@EnterpriseAccNo varchar (250)= null,
	@CR_AccountNo varchar (150)= null,	
	@UserOperator varchar (150)= null,	
	@CR_Name varchar (150)= null,	
	@CR_PhoneNumber varchar (50)= null,
	@CR_Email varchar (250)= null,
	@CR_CompanyName varchar (550)= null,
	@CR_CompanyAdress varchar (550)= null
	



AS 
BEGIN 
     SET NOCOUNT ON 


		   UPDATE CloudReceipts_MobileUser
		  SET 
		  CR_AccountName=@CR_Name,
		  CR_PhoneNumber=@CR_PhoneNumber,
   CR_Email=@CR_Email,
   CR_ModifiedDate=GETDATE(),
   CR_ModifiedBy=@UserOperator,
   CR_PhoneImeiNo=@CR_CompanyName,
   CR_IsRememberPwd=@CR_CompanyAdress	   	 
		  where  CR_AccountNo=@CR_AccountNo and ID=@ID
	END



	  


	 --select * from EnterpriseSubscriber
	 --select * from CloudReceipts_MobileUser


	 --delete from CloudReceipts_MobileUser
	 --where ID=45

	 --delete from EnterpriseSubscriber
	 --where ID in(37)
		
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
   
	

    
