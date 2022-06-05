/****** Object:  Function [dbo].[FlatReceipt_CountRow]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[FlatReceipt_CountRow](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @ReceiptNoStarted VARCHAR(100)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @ReceiptNoStarted = (select count(*) from FlatBill where CloudreceiptAccNo=@EnterpriseAccNo)
    
    RETURN @ReceiptNoStarted
END
