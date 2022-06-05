/****** Object:  Function [dbo].[getCRMyKadNoCR_MobileUserAccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getCRMyKadNoCR_MobileUserAccountNo](@CR_AccountNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @MyKadNo VARCHAR(100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @MyKadNo = (select CR_MykadNo from CloudReceipts_MobileUser where CR_AccountNo=@CR_AccountNo)
    
    RETURN @MyKadNo
END
