/****** Object:  Function [dbo].[FlatInvoice_CountRow]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[FlatInvoice_CountRow](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @InvoiceNoStarted VARCHAR(100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @InvoiceNoStarted = (select count(*) from FlatInvoice where CloudreceiptAccNo=@EnterpriseAccNo and FlatInvoiceCycle like '%Invoice%')
    
    RETURN @InvoiceNoStarted
END

--Select * From FlatInvoice
