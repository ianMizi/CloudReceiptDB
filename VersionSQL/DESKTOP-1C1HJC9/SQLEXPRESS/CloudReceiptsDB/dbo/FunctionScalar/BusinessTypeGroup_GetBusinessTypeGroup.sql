/****** Object:  Function [dbo].[BusinessTypeGroup_GetBusinessTypeGroup]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[BusinessTypeGroup_GetBusinessTypeGroup](@BusinessTypeGroupCode varchar(50))
RETURNS VARCHAR(5150)
AS
BEGIN
    DECLARE @BusinessTypeGroup VARCHAR(150)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @BusinessTypeGroup = (select BusinessTypeGroups from BusinessTypeGroup where BusinessTypeGroupCode=@BusinessTypeGroupCode)
    
    RETURN @BusinessTypeGroup
END
