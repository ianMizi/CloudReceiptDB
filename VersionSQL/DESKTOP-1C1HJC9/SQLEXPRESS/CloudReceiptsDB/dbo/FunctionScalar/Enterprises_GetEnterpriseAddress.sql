/****** Object:  Function [dbo].[Enterprises_GetEnterpriseAddress]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Enterprises_GetEnterpriseAddress](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @EnterpriseAddress VARCHAR(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EnterpriseAddress = (select EnterpriseAddress from Enterprises where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @EnterpriseAddress
END
