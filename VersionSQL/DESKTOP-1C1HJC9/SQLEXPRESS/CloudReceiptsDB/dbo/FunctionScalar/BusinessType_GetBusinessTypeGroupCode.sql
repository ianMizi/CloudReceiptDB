/****** Object:  Function [dbo].[BusinessType_GetBusinessTypeGroupCode]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[BusinessType_GetBusinessTypeGroupCode](@BusinessTypeCode varchar(50))
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @BusinessTypeGroupCode VARCHAR(50)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @BusinessTypeGroupCode = (select BusinessTypeGroupCode from BusinessType where BusinessTypeCode=@BusinessTypeCode)
    
    RETURN @BusinessTypeGroupCode
END
