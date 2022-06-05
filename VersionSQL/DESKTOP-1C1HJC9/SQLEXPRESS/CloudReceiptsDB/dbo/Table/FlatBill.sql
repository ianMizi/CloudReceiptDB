/****** Object:  Table [dbo].[FlatBill]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FlatBill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FlatBillDesc] [varchar](max) NULL,
	[FlatBillDate] [datetime] NULL,
	[FlatBillPlatNo] [varchar](50) NULL,
	[FlatBillWorkshop] [varchar](50) NULL,
	[FlatBillWorkshopID] [int] NULL,
	[FlatBillIssuedBy] [varchar](50) NULL,
	[FlatBillID] [int] NULL,
	[FlatBillTotalAmount] [varchar](50) NULL,
	[FlatBillNumberIC] [varchar](50) NULL,
	[FlatBillVehicleModel] [varchar](50) NULL,
	[FlatBillImgLogo64] [varchar](max) NULL,
	[FlatBillStatus] [varchar](50) NULL CONSTRAINT [DF_FlatBill_FlatBillStatus]  DEFAULT ('2'),
	[FlatBillUpdateDate] [datetime] NULL,
	[FlatBillUpdateBy] [varchar](50) NULL,
	[CloudreceiptAccNo] [varchar](50) NULL,
	[FlatBillFinalAmount] [varchar](50) NULL,
	[FlatBillTax] [varchar](50) NULL,
	[FlatBillBalance] [varchar](50) NULL,
	[FlatBillDeposit] [decimal](18, 2) NULL,
	[FlatBillMilage] [varchar](50) NULL,
	[FlatBillGSTNo] [decimal](18, 2) NULL,
	[FlatBillTaxInvoice] [varchar](50) NULL,
	[FlatBillBillNo] [varchar](50) NULL,
	[FlatBillCustomerName] [varchar](150) NULL,
	[FlatBillWorkShopAddress] [varchar](250) NULL,
	[FlatBillWorkshopPhoneNo] [varchar](50) NULL,
	[FlatBillCompanyNumber] [varchar](50) NULL,
	[FlatBillPaymentType] [varchar](50) NULL CONSTRAINT [DF_FlatBill_FlatBillPaymentType]  DEFAULT ('Cash'),
	[FlatBillPushNotificationSendStatus] [varchar](50) NULL CONSTRAINT [DF_FlatBill_FlatBillPushNotificationSendStatus]  DEFAULT ('0'),
	[FlatBillUniqueID] [varchar](max) NULL,
	[FlatBillAccountNo] [varchar](50) NULL CONSTRAINT [DF_FlatBill_FlatBillAccountNo]  DEFAULT ('NA'),
	[FlatBillShotDesc] [varchar](150) NULL,
	[FlatBillInvoiceNo] [varchar](50) NULL CONSTRAINT [DF_FlatBill_FlatBillInvoiceNo]  DEFAULT ('NA'),
	[FlatBillReceiptNo] [varchar](50) NULL,
	[FlatBillFaxNo] [varchar](50) NULL,
	[FlatBillPremiseEmail] [varchar](50) NULL CONSTRAINT [DF_FlatBill_FlatBillPremiseEmail]  DEFAULT ((0.00)),
	[FlatBillPremiseWebsite] [varchar](50) NULL,
	[FlatBillOutStandingBalance] [varchar](50) NULL,
	[FlatBillCurrentPaid] [varchar](50) NULL,
	[FlatBillCategory] [varchar](250) NULL CONSTRAINT [DF_FlatBill_FlatBillCategory]  DEFAULT ('Unknown'),
	[SearchCol] [varchar](max) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_FlatBill_RowStatus]  DEFAULT ('Active'),
	[FlatBillCurrentPaidDecimal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_FlatBill] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[FlatInvoiceUpdateStatus] ON [dbo].[FlatBill]
  AFTER INSERT
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 
  -- get the last id value of the record inserted or updated
 
  DECLARE @id INT
  SELECT @id = ID
  FROM INSERTED
 
  -- Insert statements for trigger here
  Declare @ReceiptStatus varchar (250)
    Declare @FlatInvoiceUniqueID varchar (500)
	 Declare @FlatInvoiceNo varchar (350)
	 	 Declare @FlatIBillBalanceInvoice decimal (18,2)
		 Declare @FlatBillBalanceReceipt varchar (350)

		  	 Declare @FlatIBillCurrentPaidInvoice decimal (18,2)
		 Declare @FlatBillCurrentPaidReceipt varchar (350)
		  Declare @FlatBillReceiptNoInvoice varchar (350)
		   Declare @FlatInvoiceAccountNo varchar (350)
		     Declare @FlatInvoiceUpdateBy varchar (350)
--SELECT Description,Quantity,Price,Amount
--FROM BillDetails
--WHERE BillId  =@id
 set @FlatInvoiceUpdateBy = (Select FlatBillIssuedBy from FlatBill where ID=@id)
 set @FlatBillReceiptNoInvoice = (Select FlatBillReceiptNo from FlatBill where ID=@id)
 set @FlatBillCurrentPaidReceipt = (Select FlatBillCurrentPaid from FlatBill where ID=@id)
 set @FlatIBillCurrentPaidInvoice=(SELECT CAST(@FlatBillCurrentPaidReceipt AS DECIMAL(18, 2)))

 set @FlatBillBalanceReceipt = (Select FlatBillOutStandingBalance from FlatBill where ID=@id)
 set @FlatIBillBalanceInvoice=(SELECT CAST(@FlatBillBalanceReceipt AS DECIMAL(18, 2)))
 set @FlatInvoiceNo = (Select FlatBillInvoiceNo from FlatBill where ID=@id)
  set @ReceiptStatus = (Select FlatBillTaxInvoice from FlatBill where ID=@id)
   set @FlatInvoiceUniqueID = (Select top 1 FlatInvoiceUniqueID from FlatInvoice where FlatInvoiceNo=@FlatInvoiceNo order by ID Desc)
    set @FlatInvoiceAccountNo = (Select FlatInvoiceAccountNo from FlatInvoice where FlatInvoiceUniqueID=@FlatInvoiceUniqueID)


   update FlatInvoice
  set FlatInvoiceStatus =@ReceiptStatus,
  FlatInvoiceReceiptNo=@FlatBillReceiptNoInvoice,
     FlatInvoicePreviousPayment=@FlatIBillCurrentPaidInvoice,
	  FlatInvoiceOutStandingBalance=@FlatIBillBalanceInvoice,
	  FlatInvoiceUpdateDate=getDate(),
	  FlatInvoiceUpdateby=@FlatInvoiceUpdateBy
   where FlatInvoiceUniqueID=@FlatInvoiceUniqueID




      update FlatInvoice
  set 
	  FlatInvoiceOutStandingBalance=(select sum(FlatInvoiceOutStandingBalance) from FlatInvoice where FlatInvoiceAccountNo =@FlatInvoiceAccountNo)
   where FlatInvoiceUniqueID=@FlatInvoiceUniqueID

END
 
 --select * from FlatInvoice where FlatInvoiceNo='INV/CRKli-95115/28' order by FlatInvoiceUpdateDate desc
 --select * from FlatBill where FlatBillInvoiceNo='INV/CRKli-95115/28'


-- --delete from FlatInvoice where ID=91

-- select top 10 * from FlatBill order by ID desc


-- SELECT ID,FlatBillCustomername
--FROM FlatBill  
--GROUP BY ID,FlatBillCustomername
--order by ID desc
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[InsertNotifications] ON [dbo].[FlatBill]
  AFTER INSERT
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 

 
  DECLARE @id INT
  SELECT @id = ID
  FROM INSERTED
 

  


    Declare @MyKadID varchar (50)
    Declare @Notification varchar (50)
	 Declare @CompanyName varchar (250)
  Declare @Logo64 varchar(MAX)
  Declare @TotalPaid varchar(50)
   Declare @ShortDesc varchar(150)
   Declare @ModifiedShortDesc varchar(150)
   Declare @CloudReceiptAccNo varchar(50)
    Declare @CreatedBy varchar(50)

 set @MyKadID =(select FlatBillNumberIC from FlatBill  where ID=@id)
 set @CompanyName =(select FlatBillWorkshop from FlatBill  where ID=@id)
  set @Logo64 =(select FlatBillImgLogo64 from FlatBill  where ID=@id)
    set @Notification =@CompanyName+' .Total Paid: RM'+ (select FlatBillFinalAmount from FlatBill  where ID=@id) +''+ (select FlatBillCurrentPaid from FlatBill  where ID=@id) 
	set @TotalPaid=(select FlatBillFinalAmount from FlatBill  where ID=@id)
	set @ShortDesc=(select FlatBillDesc from FlatBill  where ID=@id)

	set @ModifiedShortDesc=( SELECT LEFT(@ShortDesc, 5) AS ExtractString)
	set @CloudReceiptAccNo=(select CloudReceiptAccNo from FlatBill  where ID=@id)
	set @CreatedBy=(select FlatBillIssuedBy from FlatBill  where ID=@id)



	update FlatBill
	set FlatBillShotDesc=@ModifiedShortDesc+'..'
	where ID=@id


  IF Not EXISTS (SELECT FlatbilliD FROM Notifications WHERE  FlatbilliD=@id )
 
 
   insert into dbo.Notifications
 (
 MyKadID,
 Notification,
 SentFrom,
 NotificationDate,
 Logo64,
 IsRead,
 FlatbilliD,
 PaymentType,
 AccountNo,
 TotalPaid,
 NotificationType,
 NotificationTitle,
 EnterpriseAccNo,
 CreatedBy
 )
 values
 (
 @MyKadID,
 @Notification,
@CompanyName,
 GETDATE(),
 @Logo64,
 'N',
(select FlatBillID from FlatBill  where ID=@id),
 (select FlatBillPaymentType from FlatBill  where ID=@id),
  (select CloudreceiptAccNo from FlatBill  where ID=@id),
  @TotalPaid,
  'R',
  'New Receipts Recieved!',
  @CloudReceiptAccNo,
 @CreatedBy
 )

 



 


 else
 
 
 
  update  dbo.Notifications  
  set MyKadID=@MyKadID,
  Notification=@Notification,
  SentFrom=@CompanyName,
  NotificationDate=GETDATE(),
  Logo64=@Logo64,
  IsRead='N',
   FlatbilliD=(select FlatBillID from FlatBill  where ID=@id),
   PaymentType=(select FlatBillPaymentType from FlatBill  where ID=@id),
   AccountNo=(select CloudreceiptAccNo from FlatBill  where ID=@id),
   TotalPaid=@TotalPaid,
   NotificationType='R',
   NotificationTitle='New Receipts Recieved!-Updated'
  where FlatbilliD  =@id
   
 
 
 
 
 
END
 
 
 --select *  from FlatBill

--select *  from Notifications
--select * from FlatBill

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[InsertRefundBalance] ON [dbo].[FlatBill]
  AFTER INSERT
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 

 
  DECLARE @id INT
  SELECT @id = ID
  FROM INSERTED
 


  Declare @PaymentStatus varchar (250)
    Declare @ReceiptNo varchar (250)
  
   set @PaymentStatus =(select FlatBillTaxInvoice from FlatBill  where ID=@id)
   set @ReceiptNo =(select FlatBillReceiptNo from FlatBill  where ID=@id)
   if(@PaymentStatus='Refund')
   begin
     DECLARE @FlatBillTotalPaid as decimal (18,2)
    DECLARE @TotalRefundAmount as decimal (18,2)=0.00
	 DECLARE @TotalOutStandingBalanceForRefund as decimal (18,2)

SET	@FlatBillTotalPaid =(select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo  and RowStatus ='Active')
SET @TotalRefundAmount=(select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo  and FlatBillTaxInvoice ='Refund')
SET @TotalOutStandingBalanceForRefund=(SELECT @FlatBillTotalPaid-@TotalRefundAmount)

   update FlatBill
	set FlatBillOutStandingBalance=@TotalOutStandingBalanceForRefund
	where ID=@id
	end

 
 
END
 
 
 --select *  from FlatBill

--select *  from Notifications
--select * from FlatBill

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
Create TRIGGER [dbo].[InsertTotalAmountCollected] ON [dbo].[FlatBill]
  AFTER INSERT
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 

 
  DECLARE @id INT
  SELECT @id = ID
  FROM INSERTED
 


  Declare @PaymentStatus varchar (250)
    Declare @ReceiptNo varchar (250)
  
   set @PaymentStatus =(select FlatBillTaxInvoice from FlatBill  where ID=@id)
   set @ReceiptNo =(select FlatBillReceiptNo from FlatBill  where ID=@id)
   --if(@PaymentStatus='Refund')
   --begin
     DECLARE @FlatBillTotalPaid as decimal (18,2)
    DECLARE @TotalRefundAmount as decimal (18,2)=0.00
	 DECLARE @TotalOutStandingBalanceForRefund as decimal (18,2)

SET	@FlatBillTotalPaid =(select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo  and RowStatus ='Active')
SET @TotalRefundAmount=(select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo  and FlatBillTaxInvoice ='Refund')
SET @TotalOutStandingBalanceForRefund=(@FlatBillTotalPaid-@TotalRefundAmount)

   update FlatBill
	set FlatBillBalance=@TotalOutStandingBalanceForRefund
	where ID=@id
	--end

 
 
END
 
 
 --select *  from FlatBill

--select *  from Notifications
--select * from FlatBill
