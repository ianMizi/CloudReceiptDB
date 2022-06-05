/****** Object:  Procedure [dbo].[ReceiptsAttachments_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[ReceiptsAttachments_Insert]  
	

	@FlatBillID int,
@Contents varchar (MAX),
@FilesName varchar (550),
@CloudReceiptAccNo varchar (550),
@FlatBillReceiptNo varchar (550),
@FlatReceiptsID varchar (550)
AS 
BEGIN 
     SET NOCOUNT ON 
     
	  IF Not EXISTS (SELECT FlatBillID  FROM ReceiptsAttachments WHERE FlatBillID=@FlatBillID  and 1=1)
  

	   INSERT INTO dbo.ReceiptsAttachments
          ( 
        
FlatBillID,
Contents,
FilesName,
CloudReceiptAccNo,
FlatBillReceiptNo,
FlatReceiptsID


		          ) 
     VALUES 
          ( 
@FlatBillID,
@Contents,
@FilesName,
@CloudReceiptAccNo,
@FlatBillReceiptNo,
@FlatReceiptsID
	 )


	 else

	 Update ReceiptsAttachments

	 set FlatBillID=@FlatBillID,
	 Contents=@Contents,
FilesName=@FilesName,
CloudReceiptAccNo=@CloudReceiptAccNo,
FlatBillReceiptNo=@FlatBillReceiptNo,
FlatReceiptsID =@FlatReceiptsID
WHERE FlatBillID=@FlatBillID  and 1=1



	-- 
	     --Exec dbo.Notifications_InsertNotifications @NotificationCode,@NotificationTitle,@PublishBy,@Audience,@EnterpriseAccNo,@Notification,@AdvertisementImage
	END
