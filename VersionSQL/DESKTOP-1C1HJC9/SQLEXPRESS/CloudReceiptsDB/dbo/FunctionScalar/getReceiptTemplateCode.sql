/****** Object:  Function [dbo].[getReceiptTemplateCode]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getReceiptTemplateCode](@CloudReceiptAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @ReceiptTemplateCode VARCHAR(50)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @ReceiptTemplateCode = (select ReceiptTemplateCode from Enterprise where [EnterpriseAccNo]=@CloudReceiptAccNo)
    
    RETURN @ReceiptTemplateCode
END
