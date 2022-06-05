/****** Object:  Function [dbo].[FlatInvoiceItemsDetails_getBillItems]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[FlatInvoiceItemsDetails_getBillItems](@InvoiceNo varchar(100))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @Descriptions VARCHAR(500)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @Descriptions = (select top 1 Descriptions from FlatInvoiceItemsDetails where InvoiceNo=@InvoiceNo)
    
    RETURN @Descriptions
END
