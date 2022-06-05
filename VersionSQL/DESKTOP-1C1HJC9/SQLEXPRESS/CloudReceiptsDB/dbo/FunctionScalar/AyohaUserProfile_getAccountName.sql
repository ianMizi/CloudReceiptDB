/****** Object:  Function [dbo].[AyohaUserProfile_getAccountName]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[AyohaUserProfile_getAccountName](@AccountNo varchar(250))
RETURNS varchar (200)
AS
BEGIN
    DECLARE @AccountName as varchar (200)
   
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */


	
    SET @AccountName = (select AccountName from AyohaUserProfile where AccountNo=@AccountNo and  RowStatus='Active') 

	
    
    RETURN @AccountName
END
