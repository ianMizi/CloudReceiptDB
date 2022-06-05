/****** Object:  Function [dbo].[getCRPhoneNumberCR_MobileUserAccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getCRPhoneNumberCR_MobileUserAccountNo](@CR_AccountNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @PhoneNumber VARCHAR(100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @PhoneNumber = (select CR_PhoneNumber from CloudReceipts_MobileUser where CR_AccountNo=@CR_AccountNo)
    
    RETURN @PhoneNumber
END
