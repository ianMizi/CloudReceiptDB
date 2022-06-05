/****** Object:  Function [dbo].[LoyaltyStamp_CountLoyaltyStamped]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[LoyaltyStamp_CountLoyaltyStamped](@StampCampaignCode varchar(100),@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @CountLoyaltyStamped int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @CountLoyaltyStamped = (select count (*) from LoyaltyStamp where StampedCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo)
    
    RETURN @CountLoyaltyStamped
END
