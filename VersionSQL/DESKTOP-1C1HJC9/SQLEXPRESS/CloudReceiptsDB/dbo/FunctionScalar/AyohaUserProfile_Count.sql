/****** Object:  Function [dbo].[AyohaUserProfile_Count]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[AyohaUserProfile_Count]()
RETURNS varchar (200)
AS
BEGIN
    DECLARE @Count varchar
    DECLARE @Counts int
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */


	
    SET @Counts = (select count(*) from AyohaUserProfile where RowStatus='Active') + 1

	 set @Count=(SELECT CAST(@Counts as varchar(200)) as Num1)
    
    RETURN @Count
END
