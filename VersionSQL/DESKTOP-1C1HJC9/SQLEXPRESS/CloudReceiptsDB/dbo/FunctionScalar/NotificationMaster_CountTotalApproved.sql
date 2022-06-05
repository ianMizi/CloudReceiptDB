/****** Object:  Function [dbo].[NotificationMaster_CountTotalApproved]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[NotificationMaster_CountTotalApproved](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @CountResult int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
   
    SET @CountResult = ( select count(*)  as Count from NotificationsMaster  where EnterpriseAccNo=@EnterpriseAccNo and isApproved='Approved' )
   

   

    RETURN @CountResult
END
