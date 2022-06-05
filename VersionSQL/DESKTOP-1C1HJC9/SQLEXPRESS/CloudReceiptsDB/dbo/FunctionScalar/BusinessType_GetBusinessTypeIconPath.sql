/****** Object:  Function [dbo].[BusinessType_GetBusinessTypeIconPath]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[BusinessType_GetBusinessTypeIconPath](@BusinessTypeCode varchar(50))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @BusinessTypeIconPath VARCHAR(500)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @BusinessTypeIconPath = (select BusinessTypeIconPath from BusinessType where BusinessTypeCode=@BusinessTypeCode)
    
    RETURN @BusinessTypeIconPath
END
