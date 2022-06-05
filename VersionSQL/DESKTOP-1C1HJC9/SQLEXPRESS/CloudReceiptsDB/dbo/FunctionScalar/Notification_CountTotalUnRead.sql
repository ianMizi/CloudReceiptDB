/****** Object:  Function [dbo].[Notification_CountTotalUnRead]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Notification_CountTotalUnRead](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @CountResult int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
   
    SET @CountResult = ( select count(*)  as Count from Notifications  where EnterpriseAccNo=@EnterpriseAccNo and IsRead='N' and RowStatus='Active' and NotificationType not in ('R'))
   

   

    RETURN @CountResult
END



--select * from Notifications
