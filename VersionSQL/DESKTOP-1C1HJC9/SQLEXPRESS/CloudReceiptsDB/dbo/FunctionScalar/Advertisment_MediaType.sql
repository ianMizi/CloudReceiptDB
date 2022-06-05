/****** Object:  Function [dbo].[Advertisment_MediaType]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Advertisment_MediaType](@Type varchar(100))
RETURNS varchar(250)
AS
BEGIN
    DECLARE @MediaType varchar(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
	IF @Type='Image' 
	Set @MediaType='Image'
	IF @Type='Video' 
	Set @MediaType='Video'
		IF @Type='Audio' 
	Set @MediaType='Audio'
	
    
    RETURN @MediaType
END
