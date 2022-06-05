/****** Object:  Function [dbo].[FlatBill_getToTalAmoutPaidRemoveCharacter]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[FlatBill_getToTalAmoutPaidRemoveCharacter](@ReceiptNo varchar(100))
RETURNS varchar (350)
AS
BEGIN
  --//  DECLARE @Total as Decimal (18,2)
    Declare @Result as varchar(350)
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
	--SELECT CAST(25.65 AS decimal(18,2));
	--SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;
   
    --SET @Total =(select sum(cast(FlatBillCurrentPaid as decimal(18,2)))from FlatBill where FlatBillReceiptNo=@ReceiptNo )
     SET  @Result=(SELECT REPLACE(FlatBillCurrentPaid, 'Refunds Amount<br>', '') from FlatBill where FlatBillReceiptNo=@ReceiptNo)


    RETURN @Result
END



--select sum(cast(FlatBillCurrentPaid as decimal(18,2)))from FlatBill where FlatBillReceiptNo='CRian-315297-46-1' 
