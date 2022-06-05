/****** Object:  Function [dbo].[Enterprises_getEnterpriseType]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Enterprises_getEnterpriseType](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @EnterpriseType VARCHAR(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EnterpriseType = (select EnterpriseType from Enterprises where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @EnterpriseType
END
