/****** Object:  Function [dbo].[FlatQuotation_CountRow]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[FlatQuotation_CountRow](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @QuotationNoStarted VARCHAR(100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @QuotationNoStarted = (select count(*) from FlatInvoice where CloudreceiptAccNo=@EnterpriseAccNo and FlatInvoiceCycle like '%Quotation%')
    
    RETURN @QuotationNoStarted
END

--Select * From FlatInvoice
