/****** Object:  Function [dbo].[Notification_CountNotificationReceipients]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Notification_CountNotificationReceipients](@EnterpriseAccNo varchar(100),@NotificationCode varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @CountResult int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @CountResult = ( select count(*)  as Count from Notifications  where EnterpriseAccNo=@EnterpriseAccNo and NotificationCode=@NotificationCode )
   



    RETURN @CountResult
END
