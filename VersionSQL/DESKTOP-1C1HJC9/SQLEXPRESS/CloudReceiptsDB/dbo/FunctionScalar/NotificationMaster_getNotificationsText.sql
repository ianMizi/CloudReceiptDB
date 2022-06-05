/****** Object:  Function [dbo].[NotificationMaster_getNotificationsText]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[NotificationMaster_getNotificationsText](@NotificationCode varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @Result varchar(MAX)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
 
    SET @Result = (   select top 1 Notification from Notifications where NotificationCode=@NotificationCode order by ID desc )
   

   

    RETURN @Result
END
