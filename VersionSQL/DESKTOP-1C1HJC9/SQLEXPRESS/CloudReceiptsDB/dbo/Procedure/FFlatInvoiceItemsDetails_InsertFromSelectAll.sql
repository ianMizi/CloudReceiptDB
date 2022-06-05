/****** Object:  Procedure [dbo].[FFlatInvoiceItemsDetails_InsertFromSelectAll]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FFlatInvoiceItemsDetails_InsertFromSelectAll]
@NewInvoiceNo varchar (150),
@ReceiptNo varchar (150),
@EnterpriseAccountNo varchar (150),
@CreatedBy varchar (150),
@AccountNo varchar (150),
@InvoiceNo int,
@GroupNo varchar (550)

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
--select  b.PlateNumber,b.VehicleModel ,b.CustomerName,b.CustomerIdentity,b.Mileage,b.TotalAmount,b.UTCBillDate,bd.BillId,bd.Quantity,bd.Description,bd.Price,bd.Amount,ud.ReferralPerson,c.CompanyName from Bills b inner join BillDetails bd
--  on b.BillId = bd.BillId
--  inner join UserDetails ud on b.UserDetailId = ud.UserDetailId
--inner join Companies c on c.CompanyId = ud.CompanyId
--  where b.CustomerIdentity='1111111'
--  order by b.UTCBillDate desc

 --DECLARE @INVNo as varchar (250)
 --set @INVNo=(select top 1 InvoiceNo from FlatInvoiceItemsDetails where GroupNo=@InvoiceNo)


  insert into FlatInvoiceItemsDetails (Descriptions,Quantity,Price,Amount,InvoiceNo,ReceiptNo,CloudReceiptNo,CreatedBy,AccountNo,GroupNo)
  select    Descriptions,Quantity,Price,Amount,@NewInvoiceNo,@ReceiptNo,@EnterpriseAccountNo,@CreatedBy,@AccountNo,@GroupNo from FlatInvoiceItemsDetails
  where GroupNo=@GroupNo

END

--select * from FlatInvoiceItemsDetails 
----select * from FlatInvoiceItemsDetails where GroupNo='951151'
	
--  select    Descriptions,Quantity,Price,Amount from FlatInvoiceItemsDetails
--  where GroupNo='951151'

--Select top 10 * from FlatReceiptsDetails where FlatReceiptsBSCloudreceiptAccountNo='CRKli-401586' order by ID desc
