/****** Object:  Function [dbo].[NotificationCloudReceipt_CountTotalSubscriberCloudReceipt]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[NotificationCloudReceipt_CountTotalSubscriberCloudReceipt](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @CountResult int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
   
    SET @CountResult = ( select count(*)  as Count from EnterpriseSubscriber  where EnterpriseAccNo=@EnterpriseAccNo and SubscribedCloudReceipt=1 and RowStatus='Active')
   

   

    RETURN @CountResult
END
