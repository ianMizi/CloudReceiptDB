/****** Object:  Function [dbo].[getEnterpriseAddressByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getEnterpriseAddressByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @EnterpriseAddress VARCHAR(2000)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EnterpriseAddress = (select EnterpriseAddress from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @EnterpriseAddress
END
