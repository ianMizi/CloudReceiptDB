/****** Object:  Function [dbo].[Enterprises_GetEnterpriseLogoPath]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[Enterprises_GetEnterpriseLogoPath](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @EnterpriseLogoPath VARCHAR(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EnterpriseLogoPath = (select EnterpriseLogoPath from Enterprises where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @EnterpriseLogoPath
END
