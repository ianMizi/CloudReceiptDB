/****** Object:  Function [dbo].[getQuotationNoFormatByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getQuotationNoFormatByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS varchar (100)
AS
BEGIN
    DECLARE @QuotationNoFormat varchar (100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @QuotationNoFormat = (select QuotationNoFormat from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @QuotationNoFormat
END
