/****** Object:  Function [dbo].[Import_ExternalClients_getName]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Import_ExternalClients_getName](@MobilePhone varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @AccountName VARCHAR(100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    

	
    SET @AccountName = (select top 1 Name from Import_ExternalClients where MobilePhone=@MobilePhone)
    
    RETURN @AccountName
END
