/****** Object:  Function [dbo].[LoyaltyStamp_SubscriberCountLoyaltyStamped_CurrentBatch]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[LoyaltyStamp_SubscriberCountLoyaltyStamped_CurrentBatch](@StampCampaignCode varchar(100),@EnterpriseAccNo varchar(100),@SubcriberAccNo  varchar(100),@CurrentBatch int)
RETURNS int
AS
BEGIN
    DECLARE @SubscriberCountLoyaltyStamped_CurrentBatch int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @SubscriberCountLoyaltyStamped_CurrentBatch = (select count (*) from LoyaltyStamp where StampedCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and SubscriberAccNo=@SubcriberAccNo and Batch=@CurrentBatch)
    
    RETURN @SubscriberCountLoyaltyStamped_CurrentBatch
END
