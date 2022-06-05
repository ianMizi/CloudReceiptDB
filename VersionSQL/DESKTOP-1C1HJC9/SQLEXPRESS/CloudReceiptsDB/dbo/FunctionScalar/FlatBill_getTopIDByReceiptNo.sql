/****** Object:  Function [dbo].[FlatBill_getTopIDByReceiptNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[FlatBill_getTopIDByReceiptNo](@ReceiptNo varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @ID int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @ID = (select top 1 ID  from FlatBill where FlatBillReceiptNo=@ReceiptNo order by ID desc)
    
    RETURN @ID
END
