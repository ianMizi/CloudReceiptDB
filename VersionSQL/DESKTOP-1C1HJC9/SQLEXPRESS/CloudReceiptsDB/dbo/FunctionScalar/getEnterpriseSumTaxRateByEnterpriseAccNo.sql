/****** Object:  Function [dbo].[getEnterpriseSumTaxRateByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[getEnterpriseSumTaxRateByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS decimal(18,2)
AS
BEGIN
    DECLARE @SumTaxRate decimal(18,2)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @SumTaxRate = (select SUM(TaxRate) from TaxTable where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @SumTaxRate
END
