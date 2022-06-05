/****** Object:  Function [dbo].[getEnterpriseNameByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getEnterpriseNameByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @EnterpriseName VARCHAR(2000)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EnterpriseName = (select EnterpriseName from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @EnterpriseName
END
