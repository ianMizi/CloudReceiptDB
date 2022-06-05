/****** Object:  Function [dbo].[getReceiptNoStartedByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[getReceiptNoStartedByEnterpriseAccNo](@EnterpriseAccNo varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @ReceiptNoStarted int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @ReceiptNoStarted = (select ReceiptNoStarted from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @ReceiptNoStarted
END
