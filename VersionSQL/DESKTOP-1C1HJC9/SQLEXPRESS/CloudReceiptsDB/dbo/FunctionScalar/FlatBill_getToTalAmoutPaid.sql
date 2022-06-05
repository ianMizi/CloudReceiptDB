/****** Object:  Function [dbo].[FlatBill_getToTalAmoutPaid]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[FlatBill_getToTalAmoutPaid](@ReceiptNo varchar(100))
RETURNS varchar (350)
AS
BEGIN
    DECLARE @Total as Decimal (18,2)
	  DECLARE @PaidAmount as decimal (18,2)
    DECLARE @RefundAmount as decimal (18,2)
   -- Declare @Result as varchar(350)
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
	--SELECT CAST(25.65 AS decimal(18,2));
	--SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;
   
   -- SET @Total =(select sum(FlatBillCurrentPaidDecimal)from FlatBill where FlatBillReceiptNo=@ReceiptNo and RowStatus <> 'Resend'  and RowStatus <> 'Refund')
   
     
    SET @PaidAmount = (select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo and RowStatus ='Active')
     SET @RefundAmount = (select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo and RowStatus ='Refund')
	 SET @Total=(@PaidAmount-@RefundAmount)

    RETURN @Total
END



--select sum(cast(FlatBillCurrentPaid as decimal(18,2)))from FlatBill where FlatBillReceiptNo='CRian-315297-46-1' 
