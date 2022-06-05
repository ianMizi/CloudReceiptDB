/****** Object:  Function [dbo].[getEnterpriseTaxNoByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getEnterpriseTaxNoByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @EnterpriseGSTNo VARCHAR(2000)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EnterpriseGSTNo = (select EnterpriseGSTNo from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @EnterpriseGSTNo
END
