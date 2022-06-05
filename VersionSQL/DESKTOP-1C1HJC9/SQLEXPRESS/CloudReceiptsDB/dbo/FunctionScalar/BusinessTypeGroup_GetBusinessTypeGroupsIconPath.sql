/****** Object:  Function [dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](@BusinessTypeGroupCode varchar(50))
RETURNS VARCHAR(550)
AS
BEGIN
    DECLARE @BusinessTypeGroupsIconPath VARCHAR(150)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @BusinessTypeGroupsIconPath = (select BusinessTypeGroupsIconPath from BusinessTypeGroup where BusinessTypeGroupCode=@BusinessTypeGroupCode)
    
    RETURN @BusinessTypeGroupsIconPath
END
