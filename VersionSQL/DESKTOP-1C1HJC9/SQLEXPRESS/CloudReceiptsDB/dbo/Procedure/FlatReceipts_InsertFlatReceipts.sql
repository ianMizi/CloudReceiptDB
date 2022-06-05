/****** Object:  Procedure [dbo].[FlatReceipts_InsertFlatReceipts]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[FlatReceipts_InsertFlatReceipts]  
	

	@ID int,
@FlatReceiptsID varchar (550),
@FlatReceiptsGroupID varchar (550),
@FlatReceiptsPlayerID varchar (550),
@FlatBillCRMobileUserAccountNo varchar (550),
@FlatReceiptsBSCloudreceiptAccountNo varchar (550),
@FlatReceiptsReceivedPaymentFrom varchar (MAX),
@FlatReceiptsDate datetime,
@FlatReceiptsSumOf decimal,
@FlatReceiptsIsHasAttachement varchar (550),
@FlatReceiptsIssuedBy varchar (550),
@FlatReceiptsNo varchar (550),
@FlatReceiptsPaymentType varchar (550),
@FlatReceiptsGSTNo varchar (550),
@FlatReceiptsAccountNo varchar (550),
@FlatReceiptsInvoiceNo varchar (550),
@FlatReceiptsOtherTaxNo varchar (550),
@FlatReceiptsSubTotal decimal,
@FlatReceiptsGSTTAXValue decimal,
@FlatReceiptsOTHERTAXValue decimal,
@FlatReceiptsDiscount decimal,
@FlatReceiptsTotal decimal,
@FlatReceiptsDeposit decimal,
@FlatReceiptsBalance decimal,
@FlatReceiptsCreatedBy varchar (550)

AS 
BEGIN 
     SET NOCOUNT ON 
     
	  IF Not EXISTS (SELECT ID  FROM FlatReceipts WHERE ID=@ID  and 1=1)
  

	   INSERT INTO dbo.FlatReceipts
          ( 
        
FlatReceiptsID,
FlatReceiptsGroupID,
FlatReceiptsPlayerID,
FlatBillCRMobileUserAccountNo,
FlatReceiptsBSCloudreceiptAccountNo,
FlatReceiptsReceivedPaymentFrom,
FlatReceiptsDate,
FlatReceiptsSumOf,
FlatReceiptsIsHasAttachement,
FlatReceiptsIssuedBy,
FlatReceiptsNo,
FlatReceiptsPaymentType,
FlatReceiptsGSTNo,
FlatReceiptsAccountNo,
FlatReceiptsInvoiceNo,
FlatReceiptsOtherTaxNo,
FlatReceiptsSubTotal,
FlatReceiptsGSTTAXValue,
FlatReceiptsOTHERTAXValue,
FlatReceiptsDiscount,
FlatReceiptsTotal,
FlatReceiptsDeposit,
FlatReceiptsBalance,
FlatReceiptsCreatedBy


		          ) 
     VALUES 
          ( 
 @FlatReceiptsID,
 @FlatReceiptsGroupID,
 @FlatReceiptsPlayerID,
 @FlatBillCRMobileUserAccountNo,
 @FlatReceiptsBSCloudreceiptAccountNo,
 @FlatReceiptsReceivedPaymentFrom,
 @FlatReceiptsDate,
 @FlatReceiptsSumOf,
 @FlatReceiptsIsHasAttachement,
 @FlatReceiptsIssuedBy,
 @FlatReceiptsNo,
 @FlatReceiptsPaymentType,
 @FlatReceiptsGSTNo,
 @FlatReceiptsAccountNo,
 @FlatReceiptsInvoiceNo,
 @FlatReceiptsOtherTaxNo,
 @FlatReceiptsSubTotal,
 @FlatReceiptsGSTTAXValue,
 @FlatReceiptsOTHERTAXValue,
 @FlatReceiptsDiscount,
 @FlatReceiptsTotal,
 @FlatReceiptsDeposit,
 @FlatReceiptsBalance,
 @FlatReceiptsCreatedBy
	 )




	-- 
	     --Exec dbo.Notifications_InsertNotifications @NotificationCode,@NotificationTitle,@PublishBy,@Audience,@EnterpriseAccNo,@Notification,@AdvertisementImage
	END
