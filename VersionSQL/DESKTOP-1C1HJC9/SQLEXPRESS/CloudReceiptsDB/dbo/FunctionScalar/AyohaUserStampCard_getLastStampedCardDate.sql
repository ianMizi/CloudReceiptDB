/****** Object:  Function [dbo].[AyohaUserStampCard_getLastStampedCardDate]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[AyohaUserStampCard_getLastStampedCardDate](@EnterpriseAccNo varchar(100),@StampCampaignCode varchar(250),@SubscriberAccNo varchar (250))
RETURNS datetime
AS
BEGIN
    
	DECLARE @Result as datetime
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
   
    
	set @Result =(SELECT Top 1 StampedDate
  FROM [dbo].[AyohaUserStampCard] where SubscriberAccNo=@SubscriberAccNo and EnterpriseAccNo=@EnterpriseAccNo and StampCampaignCode=@StampCampaignCode
  and RowStatus='Active' and ShowHide='Show' and StampedStatus ='YES' order by StampedDate desc)


    RETURN @Result
END
