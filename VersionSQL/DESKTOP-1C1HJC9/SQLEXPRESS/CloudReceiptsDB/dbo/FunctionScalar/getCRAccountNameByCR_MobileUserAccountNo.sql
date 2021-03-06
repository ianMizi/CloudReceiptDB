/****** Object:  Function [dbo].[getCRAccountNameByCR_MobileUserAccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getCRAccountNameByCR_MobileUserAccountNo](@CR_AccountNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @AccountName VARCHAR(100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @AccountName = (select CR_AccountName from CloudReceipts_MobileUser where CR_AccountNo=@CR_AccountNo)
    
    RETURN @AccountName
END
