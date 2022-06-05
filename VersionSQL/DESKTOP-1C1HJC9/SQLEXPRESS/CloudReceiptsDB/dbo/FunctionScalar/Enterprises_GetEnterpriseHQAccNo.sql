/****** Object:  Function [dbo].[Enterprises_GetEnterpriseHQAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Enterprises_GetEnterpriseHQAccNo](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @EnterpriseHQAccNo VARCHAR(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EnterpriseHQAccNo = (select EnterpriseHQAccNo from Enterprises where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @EnterpriseHQAccNo
END
