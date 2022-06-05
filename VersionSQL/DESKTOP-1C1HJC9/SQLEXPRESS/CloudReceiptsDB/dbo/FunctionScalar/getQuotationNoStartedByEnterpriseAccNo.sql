/****** Object:  Function [dbo].[getQuotationNoStartedByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getQuotationNoStartedByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @QuotationNoStarted int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @QuotationNoStarted = (select QuotationNoStarted from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @QuotationNoStarted
END
