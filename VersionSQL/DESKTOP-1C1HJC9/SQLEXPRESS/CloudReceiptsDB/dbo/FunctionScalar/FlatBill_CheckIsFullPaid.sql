/****** Object:  Function [dbo].[FlatBill_CheckIsFullPaid]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[FlatBill_CheckIsFullPaid](@ReceiptNo varchar(100))
RETURNS varchar (250)
AS
BEGIN
    DECLARE @Result as varchar (250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @Result = (select top 1  FlatBillTaxInvoice  from FlatBill where FlatBillReceiptNo=@ReceiptNo and FlatBillTaxInvoice='Full Paid')
    
    RETURN @Result
END
