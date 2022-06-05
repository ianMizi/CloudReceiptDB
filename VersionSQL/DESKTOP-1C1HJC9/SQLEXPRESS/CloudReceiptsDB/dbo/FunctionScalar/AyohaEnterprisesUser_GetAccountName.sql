/****** Object:  Function [dbo].[AyohaEnterprisesUser_GetAccountName]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[AyohaEnterprisesUser_GetAccountName](@AccountNo varchar(150))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @AccountName VARCHAR(500)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @AccountName = (select AccountName from AyohaEnterprisesUser where AccountNo=@AccountNo)
    
    RETURN @AccountName
END
