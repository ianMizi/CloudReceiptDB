/****** Object:  Function [dbo].[AyohaUserStampCard_getStampContentNote]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[AyohaUserStampCard_getStampContentNote](@EnterpriseAccNo varchar(100),@StampCampaignCode varchar(250),@SubscriberAccNo varchar (250))
RETURNS VARCHAR(250)
AS
BEGIN
   
	DECLARE @Result as varchar (250)
    
	Declare @ID_MAX_Yes as int
set @ID_MAX_Yes=(SELECT top 1 MAX (ID)  as ID
  FROM  [AyohaUserStampCard] where SubscriberAccNo=@SubscriberAccNo and EnterpriseAccNo=@EnterpriseAccNo and StampCampaignCode=@StampCampaignCode
  and RowStatus='Active' and ShowHide='Show' and StampedStatus ='YES' group by ID  order by ID desc)

Declare @ID_MAX_All as int
set @ID_MAX_All=(SELECT top 1 MAX (ID)  as ID
  FROM  [AyohaUserStampCard] where SubscriberAccNo=@SubscriberAccNo and EnterpriseAccNo=@EnterpriseAccNo and StampCampaignCode=@StampCampaignCode
  and RowStatus='Active' and ShowHide='Show' group by ID  order by ID desc)

   Set @Result=( select top 1 StampContentNote from [AyohaUserStampCard] where ID >@ID_MAX_Yes and ID <= @ID_MAX_All and isRedeemItem='YES' and RowStatus='Active' and ShowHide='Show' order by ID ASC)

    RETURN @Result
END
