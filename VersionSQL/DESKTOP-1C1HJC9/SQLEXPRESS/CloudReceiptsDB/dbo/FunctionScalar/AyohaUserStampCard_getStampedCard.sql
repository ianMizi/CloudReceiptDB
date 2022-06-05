/****** Object:  Function [dbo].[AyohaUserStampCard_getStampedCard]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[AyohaUserStampCard_getStampedCard](@EnterpriseAccNo varchar(100),@StampCampaignCode varchar(250),@SubscriberAccNo varchar (250))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @Stamped int
    DECLARE @TotalCardContents int
	DECLARE @Result as varchar (50)
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @Stamped = (select count (*)  from AyohaUserStampCard where EnterpriseAccNo=@EnterpriseAccNo and StampCampaignCode =@StampCampaignCode and RowStatus='Active' and ShowHide='Show' and StampedStatus='YES' and SubscriberAccNo=@SubscriberAccNo)
	 SET @TotalCardContents = (select count (*)  from AyohaUserStampCard where EnterpriseAccNo=@EnterpriseAccNo and StampCampaignCode =@StampCampaignCode and RowStatus='Active' and ShowHide='Show' and StampedStatus in ('YES','NO') and SubscriberAccNo=@SubscriberAccNo)
    
	set @Result =(SELECT CAST(@Stamped as varchar(10))) +'/'+(SELECT CAST(@TotalCardContents as varchar(10)))


    RETURN @Result
END
