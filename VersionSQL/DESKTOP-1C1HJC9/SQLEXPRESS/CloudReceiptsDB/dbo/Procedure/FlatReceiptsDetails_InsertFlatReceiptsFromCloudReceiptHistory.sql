/****** Object:  Procedure [dbo].[FlatReceiptsDetails_InsertFlatReceiptsFromCloudReceiptHistory]    Committed by VersionSQL https://www.versionsql.com ******/

create PROCEDURE [dbo].[FlatReceiptsDetails_InsertFlatReceiptsFromCloudReceiptHistory]  
	
	@ID int,
	@Typed varchar(200),
	@FlatReceiptsID varchar (250),
	@NewFlatReceiptsID varchar (250),
    @FlatReceiptsGroupID varchar(550)
AS 
BEGIN 
     SET NOCOUNT ON 
     	  delete  from FlatReceiptsDetails  where FlatReceiptsID=@NewFlatReceiptsID
	
	
   insert into FlatReceiptsDetails (Descriptions,Quantity,Price,Amount,FlatReceiptsID,FlatReceiptsGroupID,FlatReceiptsBSCloudreceiptAccountNo,FlatReceiptsCreatedBy,FlatReceiptsNo)
  select    Descriptions,Quantity,Price,Amount,@NewFlatReceiptsID,@FlatReceiptsGroupID,FlatReceiptsBSCloudreceiptAccountNo,FlatReceiptsCreatedBy,FlatReceiptsNo from FlatReceiptsDetails
  where FlatReceiptsID=@FlatReceiptsID


 

	-- 
	     --Exec dbo.Notifications_InsertNotifications @NotificationCode,@NotificationTitle,@PublishBy,@Audience,@EnterpriseAccNo,@Notification,@AdvertisementImage
	END


--delete from FlatReceiptsDetails

--	40158641008
--select  top 10 * from FlatReceiptsDetails	where flatReceiptsID='40158681024'

--delete from Flatbill where FlatBillBillNo='40158641008'


--delete from FlatReceiptsDetails where FlatReceiptsNo='CRKli-401586-61' and FlatReceiptsID <>'40158641008'
	     
		 
		 
	--	  select  top 10 * from FlatReceiptsDetails  order by ID desc
	--	  select top 10 * from Flatbill order by ID desc


	--   select  ROW_NUMBER() OVER(ORDER BY N.ID DESC) AS No,N.Notification,N.NotificationDate,N.PaymentType,N.FlatbilliD,N.TotalPaid,N.AccountNo,N.EnterpriseAccNo,CM.CR_AccountName,N.MyKadID,N.IsRead,N.IsOpen,N.NotificationReadDate,F.SearchCol,F.FlatBillTaxInvoice as BillPaymentStatus,F.FlatBillFinalAmount,F.FlatBillTax,F.FlatBillBalance,F.FlatBillDeposit,F.FlatBillShotDesc,F.FlatBillReceiptNo,F.FlatBillOutStandingBalance,F.FlatBillCurrentPaid,E.ReceiptTemplateCode,F.FlatBillReceiptNo , F.FlatBillBillNo,CM.CR_PlayerID,F.FlatBillAccountNo,F.FlatbillIssuedBy,F.FlatBillImgLogo64 ,F.FlatBillTotalAmount,F.FlatBillGSTNo from Notifications N inner join CloudReceipts_MobileUser CM
	--on N.MyKadID = CM.CR_MykadNo inner join Flatbill F on N.FlatbilliD =f.FlatBillID inner join Enterprise E on N.EnterpriseAccNo=E.EnterpriseAccNo
	--where NotificationType='R' and E.EnterpriseAccNo='CRKli-401586' and  MONTH(N.NotificationDate) = 5 AND YEAR(N.NotificationDate) = 2018
