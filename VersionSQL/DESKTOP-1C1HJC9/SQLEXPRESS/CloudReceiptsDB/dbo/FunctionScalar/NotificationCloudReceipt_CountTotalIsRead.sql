/****** Object:  Function [dbo].[NotificationCloudReceipt_CountTotalIsRead]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[NotificationCloudReceipt_CountTotalIsRead](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @CountResult int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
   
    SET @CountResult = ( select count(*)  as Count from Notifications  where EnterpriseAccNo=@EnterpriseAccNo and IsRead='Y' and RowStatus='Active' and NotificationType ='R')
   

   

    RETURN @CountResult
END



--select * from Notifications
