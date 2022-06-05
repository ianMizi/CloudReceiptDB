/****** Object:  Function [dbo].[AyohaUserStampCard_CountStatusYES]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[AyohaUserStampCard_CountStatusYES](@EnterpriseAccNo varchar(100),@StampCampaignCode varchar(250),@SubscriberAccNo varchar (250))
RETURNS int
AS
BEGIN
    DECLARE @Stamped int
 --   DECLARE @TotalCardContents int
	--DECLARE @Result as varchar (50)
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @Stamped = (select count (*)  from AyohaUserStampCard where EnterpriseAccNo=@EnterpriseAccNo and StampCampaignCode =@StampCampaignCode and RowStatus='Active' and ShowHide='Show' and StampedStatus='YES' and SubscriberAccNo=@SubscriberAccNo)
	


    RETURN @Stamped
END
