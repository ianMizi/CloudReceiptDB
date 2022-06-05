/****** Object:  Function [dbo].[getInvoiceNoFormatByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getInvoiceNoFormatByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS varchar (100)
AS
BEGIN
    DECLARE @InvoiceNoFormat varchar (100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @InvoiceNoFormat = (select InvoiceNoFormat from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @InvoiceNoFormat
END
