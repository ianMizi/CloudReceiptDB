/****** Object:  Function [dbo].[AyohaUserStampCard_getCurrentBatch_Membership]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[AyohaUserStampCard_getCurrentBatch_Membership](@EnterpriseAccNo varchar(250),@StampCampaignCode varchar(250),@SubscriberAccNo varchar(150))
RETURNS int 
AS
BEGIN
 
    DECLARE @CurrentBatch int
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */


	
    SET @CurrentBatch = (select top 1 Batch from AyohaUserStampCard where SubscriberAccNo=@SubscriberAccNo and StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo order by ID desc)

    RETURN @CurrentBatch
END
