/****** Object:  Function [dbo].[Enterprises_GetEnterpriseLogo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Enterprises_GetEnterpriseLogo](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @EnterpriseName VARCHAR(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EnterpriseName = (select EnterpriseLogoPath from Enterprises where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @EnterpriseName
END
