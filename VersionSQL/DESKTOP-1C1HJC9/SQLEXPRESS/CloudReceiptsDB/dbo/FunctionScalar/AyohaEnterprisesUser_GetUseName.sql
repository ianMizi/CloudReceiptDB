/****** Object:  Function [dbo].[AyohaEnterprisesUser_GetUseName]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[AyohaEnterprisesUser_GetUseName](@AccountNo varchar(150))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @UseName VARCHAR(500)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @UseName = (select UseName from AyohaEnterprisesUser where AccountNo=@AccountNo)
    
    RETURN @UseName
END
