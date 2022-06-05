/****** Object:  Function [dbo].[getCloudReceiptAccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[getCloudReceiptAccountNo](@CompanyNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @CloudReceiptAccountNo VARCHAR(100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @CloudReceiptAccountNo = (select EnterpriseAccNo from Enterprise where EnterpriseRegistrationNo=@CompanyNo)
    
    RETURN @CloudReceiptAccountNo
END
