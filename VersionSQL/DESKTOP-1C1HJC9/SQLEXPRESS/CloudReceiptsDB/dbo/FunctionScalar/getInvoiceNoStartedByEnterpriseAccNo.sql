/****** Object:  Function [dbo].[getInvoiceNoStartedByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getInvoiceNoStartedByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @InvoiceNoStarted int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @InvoiceNoStarted = (select InvoiceNoStarted from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @InvoiceNoStarted
END
