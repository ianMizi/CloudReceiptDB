/****** Object:  Function [dbo].[AyohaUserStampCard_CountRow]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[AyohaUserStampCard_CountRow](@StampCampaignCode varchar(100),@EnterpriseAccNo varchar(100),@SubscriberAccNo varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @CountAyohaUserStampCardRow int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @CountAyohaUserStampCardRow = (select count (*) from AyohaUserStampCard where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and ShowHide='Show' and RowStatus='Active' and SubscriberAccNo=@SubscriberAccNo)
    
    RETURN @CountAyohaUserStampCardRow
END
