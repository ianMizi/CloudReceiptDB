/****** Object:  Function [dbo].[NotificationCloudReceipt_CountTotalSend]    Committed by VersionSQL https://www.versionsql.com ******/

create FUNCTION [dbo].[NotificationCloudReceipt_CountTotalSend](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @CountResult int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
   
    SET @CountResult = ( select count(*)  as Count from Notifications  where EnterpriseAccNo=@EnterpriseAccNo and  NotificationType='R')
   

   

    RETURN @CountResult
END
