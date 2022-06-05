/****** Object:  Function [dbo].[Notification_CountTotalSubscriberNews_N_Promotion]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Notification_CountTotalSubscriberNews_N_Promotion](@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @CountResult int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
   
    SET @CountResult = ( select count(*)  as Count from EnterpriseSubscriber  where EnterpriseAccNo=@EnterpriseAccNo and SubscribedNewsAndPromotion=1 and RowStatus='Active')
   

   

    RETURN @CountResult
END
