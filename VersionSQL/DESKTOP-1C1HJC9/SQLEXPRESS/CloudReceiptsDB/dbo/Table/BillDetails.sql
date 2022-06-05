/****** Object:  Table [dbo].[BillDetails]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BillDetails](
	[BillDetailId] [int] IDENTITY(1,1) NOT NULL,
	[BillId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[FlatBillDetails] [varchar](max) NULL,
 CONSTRAINT [PK_dbo.BillDetails] PRIMARY KEY CLUSTERED 
(
	[BillDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_BillId] ON [dbo].[BillDetails]
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BillDetails_dbo.Bills_BillId] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bills] ([BillId])
ON DELETE CASCADE
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_dbo.BillDetails_dbo.Bills_BillId]
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[FlatBillInsetUpdate] ON [dbo].[BillDetails]
  AFTER INSERT
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 
  -- get the last id value of the record inserted or updated
 
  DECLARE @id INT
  SELECT @id = BillId
  FROM INSERTED
 
  -- Insert statements for trigger here
  Declare @PlateNumber varchar (50)
    Declare @PlateNumberBilltbl varchar (50)
	 Declare @CustomerID varchar (50)
  Declare @VehicleModel varchar(50)
  Declare @CustomerIdentity varchar(50)
  Declare @TotalAmount varchar(50)
  Declare @UTCBillDate datetime
DECLARE @Quantity VARCHAR(50)  -- database name  
  DECLARE @Description VARCHAR(50)  -- database name  
DECLARE @Price VARCHAR(50)  -- database name  
DECLARE @Amount VARCHAR(50)  -- database name 
Declare @ReferralPerson varchar (50)
 Declare @CompanyName varchar(50)
 Declare @Content varchar(MAX) 
  Declare @CompanyID int

  DECLARE @FinalAmount  varchar(50)
  DECLARE @Tax  varchar(50)
    DECLARE @Balance  varchar(50)
  DECLARE @Deposit  varchar(50)

     DECLARE @Milage  varchar(50)
	 DECLARE @BillNo  varchar(50)
	 	 DECLARE @CustomerName  varchar(150)

		 	 DECLARE @CompanyAddress  varchar(250)
			  DECLARE @CompanyPhoneNo  varchar(150)
			   DECLARE @CompanyNumber  varchar(150)
			   DECLARE @CloudReceiptAccountNo varchar(150)
			    --DECLARE @PaymnetType  varchar(250)

DECLARE db_cursor CURSOR FOR  
--SELECT Description,Quantity,Price,Amount
--FROM BillDetails
--WHERE BillId  =@id
 
 
select  b.PlateNumber,b.VehicleModel ,b.CustomerIdentity,b.TotalAmount,b.UTCBillDate,bd.Quantity,bd.Description,bd.Price,bd.Amount,ud.ReferralPerson
,c.CompanyName,dbo.f_BinaryToBase64(f.Content),c.CompanyId,b.FinalAmount,b.Tax,b.Balance,b.Deposit,b.Mileage,b.BillNumber,b.CustomerName ,c.CompanyAddress,c.CompanyPhoneNumber,c.CompanyNumber, dbo.getCloudReceiptAccountNo(c.CompanyNumber)  from Bills b inner join BillDetails bd
  on b.BillId = bd.BillId
  inner join UserDetails ud on b.UserDetailId = ud.UserDetailId
inner join Companies c on c.CompanyId = ud.CompanyId
inner join Files f on f.CompanyId = c.CompanyId
  where b.BillId=@id
 
 
  --set @CustomerID =(select top 1 PlateNumber from Bills where BillId=@id order by [UTCBillDate] desc)


    --set @PlateNumberBilltbl =(select top 1 PlateNumber from Bills where BillId=@id order by [UTCBillDate] desc)
 
 




 
     update FlatBill
  set FlatBillDesc ='' 
  where FlatBillID  =@id
 
 
 
 
OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @PlateNumber,@VehicleModel,@CustomerIdentity,@TotalAmount,@UTCBillDate,@Quantity,@Description,@Price,@Amount,@ReferralPerson,@CompanyName,@Content,@CompanyID   
,@FinalAmount,@Tax,@Balance,@Deposit,@Milage,@BillNo,@CustomerName,@CompanyAddress,@CompanyPhoneNo,@CompanyNumber,@CloudReceiptAccountNo 
WHILE @@FETCH_STATUS = 0   
BEGIN   
  
 
  
  IF Not EXISTS (SELECT FlatBillID FROM FlatBill WHERE  FlatBillID=@id )
 
 
 
 
  INSERT INTO dbo.FlatBill
          ( 
   FlatBillPlatNo,
FlatBillVehicleModel,
FlatBillNumberIC,
FlatBillTotalAmount,
FlatBillDate,
FlatBillDesc,
FlatBillID,
FlatBillIssuedBy,
FlatBillWorkshop,
FlatBillImgLogo64,
FlatBillWorkshopID,
FlatBillFinalAmount,
FlatBillTax,
FlatBillBalance,
FlatBillDeposit,
FlatBillMilage,
FlatBillBillNo,
FlatBillCustomerName,
FlatBillWorkShopAddress,
FlatBillWorkshopPhoneNo,
FlatBillCompanyNumber,
CloudreceiptAccNo 
 )
 VALUES
 (
 @PlateNumber,
 @VehicleModel,
 @CustomerIdentity,
 @TotalAmount,
 @UTCBillDate,
@Description+','+@Quantity+','+@Price+','+@Amount+'|',
@id,
 @ReferralPerson,
 @CompanyName,
 @Content,
 @CompanyID,
 @FinalAmount,
 @Tax,
 @Balance,
 @Deposit,
 @Milage,
 @BillNo,
 @CustomerName,
 @CompanyAddress, 
 @CompanyPhoneNo,
 @CompanyNumber,
 @CloudReceiptAccountNo
 )


 


 else
 
 
 
  update FlatBill  
  set FlatBillDesc =FlatBillDesc+','+ @Description+','+@Quantity+','+@Price+','+@Amount+'|',
  FlatBillDate=@UTCBillDate,
  FlatBillPlatNo=@PlateNumber,
  FlatBillWorkshop=@CompanyName,
  FlatBillIssuedBy=@ReferralPerson,
  FlatBillTotalAmount=@TotalAmount,
  FlatBillNumberIC=@CustomerIdentity,
  FlatBillVehicleModel=@VehicleModel,
  FlatBillImgLogo64=@Content,
  FlatBillWorkshopID=@CompanyID,
  FlatBillFinalAmount= @FinalAmount,
FlatBillTax=@Tax,
FlatBillBalance=@Balance,
FlatBillDeposit=@Deposit,
FlatBillMilage=@Milage,
FlatBillBillNo=@BillNo,
FlatBillCustomerName=@CustomerName,
FlatBillWorkShopAddress=@CompanyAddress,
FlatBillWorkshopPhoneNo=@CompanyPhoneNo,
FlatBillCompanyNumber=@CompanyNumber,
CloudreceiptAccNo=@CloudReceiptAccountNo

  where FlatBillID  =@id
    --  print @name 
 




 






       FETCH NEXT FROM db_cursor INTO  @PlateNumber,@VehicleModel,@CustomerIdentity,@TotalAmount,@UTCBillDate,@Quantity,@Description,@Price,@Amount,@ReferralPerson,@CompanyName,@Content,@CompanyID
 ,@FinalAmount,@Tax,@Balance,@Deposit,@Milage,@BillNo,@CustomerName,@CompanyAddress,@CompanyPhoneNo,@CompanyNumber,@CloudReceiptAccountNo 
   
 

 


END   
 
CLOSE db_cursor   
DEALLOCATE db_cursor
 
 
 
 
 
 
END
 
--select *  from FlatBill
