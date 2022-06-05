/****** Object:  Function [dbo].[FlatBill_getTotalDiscount]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[FlatBill_getTotalDiscount](@ReceiptNo varchar(100))
RETURNS varchar (350)
AS
BEGIN
    DECLARE @Total as Decimal (18,2)
	 -- DECLARE @PaidAmount as decimal (18,2)
    --DECLARE @RefundAmount as decimal (18,2)
   -- Declare @Result as varchar(350)
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
	--SELECT CAST(25.65 AS decimal(18,2));
	--SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;
   
    SET @Total =(select sum (FlatBillGSTNo)from FlatBill where FlatBillReceiptNo=@ReceiptNo and RowStatus ='Active')

 
    RETURN @Total
END




--select sum (FlatBillGSTNo)from FlatBill where FlatBillReceiptNo='CRKli-401586-83-1' and RowStatus ='Active'


--select FlatBillGSTNo from flatbill where FlatBillGSTNo=null


--update FlatBill
--set FlatBillGSTNo='0.00'
--where FlatBillGSTNo='NA'

--update FlatBill
--set FlatBillGSTNo='0.00'
--where FlatBillGSTNo=''

--update FlatBill
--set FlatBillGSTNo='0.00'
--where FlatBillGSTNo='12234323'

--update FlatBill
--set FlatBillGSTNo='0.00'
--where FlatBillGSTNo='0'
