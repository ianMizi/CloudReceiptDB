/****** Object:  Function [dbo].[getEnterpriseLogoByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getEnterpriseLogoByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @EnterpriseLogo VARCHAR(MAX)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EnterpriseLogo = (select EnterpriseLogo64 from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @EnterpriseLogo
END


--select * from Enterprise
