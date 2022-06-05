/****** Object:  Procedure [dbo].[AyohaUserStampCard_NearestRedeemItem]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaUserStampCard_NearestRedeemItem]  



      @SubscriberAccNo varchar (150) 
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 

   Declare @ID_MAX_Yes as int
set @ID_MAX_Yes=(SELECT top 1 MAX (ID)  as ID
  FROM  [AyohaUserStampCard] where SubscriberAccNo=@SubscriberAccNo
  and RowStatus='Active' and ShowHide='Show' and StampedStatus ='YES' group by ID  order by ID desc)

Declare @ID_MAX_All as int
set @ID_MAX_All=(SELECT top 1 MAX (ID)  as ID
  FROM  [AyohaUserStampCard] where SubscriberAccNo=@SubscriberAccNo
  and RowStatus='Active' and ShowHide='Show' group by ID  order by ID desc)

   select top 5 StampCampaignCode,StampContent, StampContentNote,StampContentSequence
   ,[dbo].[Enterprises_GetEnterpriseName](EnterpriseAccNo) as EnterpriseName 
   ,[dbo].[AyohaUserStampCard_CountRow](StampCampaignCode,EnterpriseAccNo,SubscriberAccNo) as CountRow
   ,[dbo].[StampCampaign_EndDate](StampCampaignCode) as EndDate
   ,[dbo].[StampCampaign_getStampRuleRemarks](StampCampaignCode,EnterpriseAccNo) as StampRuleRemarks
   ,[dbo].[StampCampaign_getIsStampRulePopUp](StampCampaignCode,EnterpriseAccNo) as IsStampRulePopUp
    ,[dbo].[StampCampaign_StartDate](StampCampaignCode) as StartDate
	,EnterpriseAccNo
	,[dbo].[StampCampaign_getStampCampaignName](StampCampaignCode,EnterpriseAccNo) as StampCampaignName
   from [AyohaUserStampCard] where ID >@ID_MAX_Yes and ID <= @ID_MAX_All and isRedeemItem='YES' and RowStatus='Active' and ShowHide='Show' order by ID ASC


	END
	
                                             
