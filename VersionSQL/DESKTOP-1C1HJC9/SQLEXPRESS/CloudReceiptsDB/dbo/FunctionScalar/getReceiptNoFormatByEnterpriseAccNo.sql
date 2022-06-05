/****** Object:  Function [dbo].[getReceiptNoFormatByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getReceiptNoFormatByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS varchar (100)
AS
BEGIN
    DECLARE @ReceiptNoFormat varchar (100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @ReceiptNoFormat = (select ReceiptNoFormat from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @ReceiptNoFormat
END
