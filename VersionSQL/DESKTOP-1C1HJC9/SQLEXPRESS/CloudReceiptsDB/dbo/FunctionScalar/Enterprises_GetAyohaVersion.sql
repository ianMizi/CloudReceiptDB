/****** Object:  Function [dbo].[Enterprises_GetAyohaVersion]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Enterprises_GetAyohaVersion](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @AyohaVersion VARCHAR(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @AyohaVersion = (select AyohaVersion from Enterprises where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @AyohaVersion
END
