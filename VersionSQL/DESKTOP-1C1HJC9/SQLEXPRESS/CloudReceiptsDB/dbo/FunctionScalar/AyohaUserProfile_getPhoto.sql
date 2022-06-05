/****** Object:  Function [dbo].[AyohaUserProfile_getPhoto]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[AyohaUserProfile_getPhoto](@AccountNo varchar(150))
RETURNS varchar (500)
AS
BEGIN
    DECLARE @Photo as varchar (500)
   
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */


	
    SET @Photo = (select Photo from AyohaUserProfile where AccountNo=@AccountNo and  RowStatus='Active') 

	
    
    RETURN @Photo
END
