/****** Object:  Function [dbo].[getEnterpriseDescriptionsByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getEnterpriseDescriptionsByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @EnterpriseDescriptions VARCHAR(2000)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EnterpriseDescriptions = (select EnterpriseDescriptions from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @EnterpriseDescriptions
END
