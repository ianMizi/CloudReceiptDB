/****** Object:  Function [dbo].[Notification_isCloudReceiptSubscribed]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Notification_isCloudReceiptSubscribed](@SubscriberAccNo varchar(250),@EnterpriseAccNo varchar(250))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @isCloudReceiptSubscribed VARCHAR(50)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @isCloudReceiptSubscribed = (select SubscribedCloudReceipt from EnterpriseSubscriber where SubcriberAccNo=@SubscriberAccNo and EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @isCloudReceiptSubscribed
END
