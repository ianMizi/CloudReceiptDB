/****** Object:  Function [dbo].[FlatBill_CheckIsCancel]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[FlatBill_CheckIsCancel](@ReceiptNo varchar(100))
RETURNS varchar (250)
AS
BEGIN
    DECLARE @Result as varchar (250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @Result = (select  RowStatus  from FlatBill where FlatBillReceiptNo=@ReceiptNo and RowStatus='InActive')
    
    RETURN @Result
END
