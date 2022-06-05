/****** Object:  Function [dbo].[Notification_isNewsAndAdvertisementSubscribed]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Notification_isNewsAndAdvertisementSubscribed](@SubscriberAccNo varchar(250),@EnterpriseAccNo varchar(250))
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @isNewsAndAdvertisementSubscribed VARCHAR(50)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @isNewsAndAdvertisementSubscribed = (select SubscribedNewsAndPromotion from EnterpriseSubscriber where SubcriberAccNo=@SubscriberAccNo and EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @isNewsAndAdvertisementSubscribed
END
