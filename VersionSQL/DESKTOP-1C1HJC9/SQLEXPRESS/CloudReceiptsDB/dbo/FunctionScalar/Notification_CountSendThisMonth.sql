/****** Object:  Function [dbo].[Notification_CountSendThisMonth]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[Notification_CountSendThisMonth](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @CountResult int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    declare @Month int
	set @Month=(SELECT MONTH(GETDATE()))
    SET @CountResult = ( select count(*)  as Count from Notifications  where EnterpriseAccNo=@EnterpriseAccNo and MONTH(NotificationDate) = @Month and  NotificationType='NN' )
   

   

    RETURN @CountResult
END
