/****** Object:  Procedure [dbo].[FlatReceiptsDetails_InsertFlatReceiptsDetails]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FlatReceiptsDetails_InsertFlatReceiptsDetails]  
	
	@ID int,
	@Descriptions varchar (MAX),

@Quantity int,
@Price decimal (18,2) ,
@Amount decimal (18,2) ,
@FlatReceiptsID varchar(550),
@FlatReceiptsGroupID varchar(550),
	@FlatReceiptsBSCloudreceiptAccountNo varchar(50),
@FlatReceiptsCreatedBy varchar(50),
@FlatReceiptsNo varchar(50)
AS 
BEGIN 
     SET NOCOUNT ON 
     
	  IF Not EXISTS (SELECT ID  FROM FlatReceiptsDetails WHERE ID=@ID  and 1=1)
  

	   INSERT INTO dbo.FlatReceiptsDetails
          ( 
         Descriptions,
Quantity,
Price,
Amount,
FlatReceiptsID,
FlatReceiptsGroupID,
FlatReceiptsBSCloudreceiptAccountNo,
FlatReceiptsCreatedBy,
FlatReceiptsNo


		          ) 
     VALUES 
          ( 
 @Descriptions,
@Quantity,
@Price,
@Amount,
@FlatReceiptsID,
@FlatReceiptsGroupID,
@FlatReceiptsBSCloudreceiptAccountNo,
@FlatReceiptsCreatedBy,
@FlatReceiptsNo
	  	
	 )


    else


	Update FlatReceiptsDetails
	set   Descriptions=@Descriptions,
Quantity=@Quantity,
Price=@Price,
Amount=@Amount,
--FlatReceiptsUniqueID=@FlatReceiptsUniqueID,
FlatReceiptsBSCloudreceiptAccountNo=@FlatReceiptsBSCloudreceiptAccountNo,
FlatReceiptsCreatedBy=@FlatReceiptsCreatedBy,
FlatReceiptsModifiedDate=GETDATE(),
FlatReceiptsNo=@FlatReceiptsNo
	 where ID=@ID


	-- 
	     --Exec dbo.Notifications_InsertNotifications @NotificationCode,@NotificationTitle,@PublishBy,@Audience,@EnterpriseAccNo,@Notification,@AdvertisementImage
	END
