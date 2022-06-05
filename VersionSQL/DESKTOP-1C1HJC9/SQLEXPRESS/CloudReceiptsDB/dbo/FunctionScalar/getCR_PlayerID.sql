/****** Object:  Function [dbo].[getCR_PlayerID]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getCR_PlayerID](@EmailID varchar(100))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @CR_PlayerID VARCHAR(500)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @CR_PlayerID = (select top 1 CR_PlayerID from CloudReceipts_MobileUser where CR_Email=@EmailID)
    
    RETURN @CR_PlayerID
END
