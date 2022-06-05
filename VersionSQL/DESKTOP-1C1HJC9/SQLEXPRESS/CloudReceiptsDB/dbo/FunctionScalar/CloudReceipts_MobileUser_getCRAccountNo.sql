/****** Object:  Function [dbo].[CloudReceipts_MobileUser_getCRAccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[CloudReceipts_MobileUser_getCRAccountNo](@Email varchar(150))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @CRAccountNo VARCHAR(500)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @CRAccountNo = (select CR_AccountNo from CloudReceipts_MobileUser where CR_Email=@Email)
    
    RETURN @CRAccountNo
END
