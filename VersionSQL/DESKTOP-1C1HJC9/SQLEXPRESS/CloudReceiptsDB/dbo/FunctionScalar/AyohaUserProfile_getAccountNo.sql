/****** Object:  Function [dbo].[AyohaUserProfile_getAccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[AyohaUserProfile_getAccountNo](@AccountNo varchar(150))
RETURNS varchar (200)
AS
BEGIN
    DECLARE @AyohaUserAccountNo as varchar (200)
   
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */


	
    SET @AyohaUserAccountNo = (select AccountNo from AyohaUserProfile where AccountNo=@AccountNo and  RowStatus='Active') 

	
    
    RETURN @AyohaUserAccountNo
END
