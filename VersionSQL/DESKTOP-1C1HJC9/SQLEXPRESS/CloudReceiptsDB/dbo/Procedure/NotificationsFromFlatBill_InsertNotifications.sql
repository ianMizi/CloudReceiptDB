/****** Object:  Procedure [dbo].[NotificationsFromFlatBill_InsertNotifications]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[NotificationsFromFlatBill_InsertNotifications]  
	
	
	@Notification varchar (350)= null,
	
	@FlatbilliD varchar (150),
	@PaymentType varchar (150),
@FlatBillNumberIC varchar (150),
 @TotalPaid varchar (150),


 @CreatedBy varchar (150),
	@CloudreceiptAccNo varchar (150),
	@FlatBillWorkshop varchar (150),
	@MobilePhone varchar (150),
	@Name  varchar (150)

AS 
BEGIN 
     SET NOCOUNT ON 
      
	  Declare @AccountNo  varchar (50)
	  set @AccountNo =(select CR_AccountNo from CloudReceipts_MobileUser where CR_MykadNo=@FlatBillNumberIC)

 IF Not EXISTS (SELECT FlatbilliD FROM Notifications WHERE  FlatbilliD=@FlatbilliD )
	   insert into dbo.Notifications
 (
 MyKadID,
 Notification,
 SentFrom,
 NotificationDate,

 IsRead,
 FlatbilliD,
 PaymentType,
 AccountNo,
 TotalPaid,
 NotificationType,
 NotificationTitle,
 EnterpriseAccNo,
 CreatedBy,
 SearchCol
 )
 values
 (
 @FlatBillNumberIC,
 @Notification,
@FlatBillWorkshop,
 GETDATE(),
 'N',
@FlatbilliD,
@PaymentType,
@AccountNo,
  @TotalPaid,
  'R',
  'New Receipts Recieved!',
  @CloudReceiptAccNo,
 @CreatedBy,
 @FlatBillNumberIC +'|'+@MobilePhone +'|'+@Name
 )

 



 


 else
 
 
 
  update  dbo.Notifications  
  set MyKadID=@FlatBillNumberIC,
  Notification=@Notification,
  SentFrom=@FlatBillWorkshop,
  NotificationDate=GETDATE(),
  
  IsRead='N',
   FlatbilliD=@FlatbilliD,
   PaymentType=@PaymentType,
   AccountNo=@AccountNo,
   TotalPaid=@TotalPaid,
   NotificationType='R',
   NotificationTitle='New Receipts Recieved!-Updated',
   SearchCol= @FlatBillNumberIC +'|'+@MobilePhone +'|'+@Name
  where FlatbilliD  =@FlatbilliD
   

	





	  
	END



	  


	  --select * from Notifications
	  ----update Notifications
	  --set SearchCol=[dbo].[getCRMyKadNoCR_MobileUserAccountNo]('970810086027-855328')+'|'+[dbo].[getCRPhoneNumberCR_MobileUserAccountNo]('970810086027-855328')+'|'+[dbo].[getCRAccountNameByCR_MobileUserAccountNo]('970810086027-855328')
	  --where AccountNo='970810086027-855328'

	  --select * from NotificationsMaster
	




		
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
   
	

    
