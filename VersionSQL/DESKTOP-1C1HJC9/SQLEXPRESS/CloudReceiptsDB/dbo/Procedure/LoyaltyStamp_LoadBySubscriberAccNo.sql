/****** Object:  Procedure [dbo].[LoyaltyStamp_LoadBySubscriberAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[LoyaltyStamp_LoadBySubscriberAccNo]
  
	@SubscriberAccNo varchar (250)= null
	
AS 
BEGIN 
     SET NOCOUNT ON 
  -- select LS.*,SC.StampCampaignName from LoyaltyStamp LS inner join StampCampaign SC on LS.StampedCampaignCode=SC.StampCampaignCode where LS.SubscriberAccNo=@SubscriberAccNo and LS.RowStatus='Active' order by LS.StampedByDate desc

 



   --select LS.*,SC.StampRuleRemarks,SC.isStampRulePopUp,SC.StampCampaignName,SC.StartDate,SC.EndDate,[dbo].[Enterprises_GetEnterpriseName](LS.EnterpriseAccNo) as EnterpriseName ,
   --[dbo].[StampCard_CountStampCardRowShow](LS.StampedCampaignCode,LS.EnterpriseAccNo) as CountStampCardRowShow,[dbo].[LoyaltyStamp_CountLoyaltyStamped](LS.StampedCampaignCode,LS.EnterpriseAccNo) as CountLoyaltyStamped 
   --from LoyaltyStamp LS inner join StampCampaign SC on LS.StampedCampaignCode=SC.StampCampaignCode  where LS.SubscriberAccNo=@SubscriberAccNo and LS.RowStatus='Active'  order by LS.StampedByDate desc



   --    select LS.*,SC.StampRuleRemarks,SC.isStampRulePopUp,SC.StampCampaignName,SC.StartDate,SC.EndDate,[dbo].[Enterprises_GetEnterpriseName](LS.EnterpriseAccNo) as EnterpriseName ,
   --[dbo].[StampCard_CountStampCardRowShow](LS.StampedCampaignCode,LS.EnterpriseAccNo) as CountStampCardRowShow,[dbo].[LoyaltyStamp_CountLoyaltyStamped](LS.StampedCampaignCode,LS.EnterpriseAccNo) as CountLoyaltyStamped ,
   --[dbo].[AyohaUserStampCard_getCurrentBatch](@SubscriberAccNo,LS.StampCode) as CurrentBatch
   --from LoyaltyStamp LS inner join StampCampaign SC on LS.StampedCampaignCode=SC.StampCampaignCode  where LS.SubscriberAccNo=@SubscriberAccNo and LS.RowStatus='Active'  order by LS.StampedByDate desc

   --  select LS.*,SC.StampRuleRemarks,SC.isStampRulePopUp,SC.StampCampaignName,SC.StartDate,SC.EndDate,[dbo].[Enterprises_GetEnterpriseName](LS.EnterpriseAccNo) as EnterpriseName ,
   --[dbo].[StampCard_CountStampCardRowShow](LS.StampedCampaignCode,LS.EnterpriseAccNo) as CountStampCardRowShow,[dbo].[LoyaltyStamp_CountLoyaltyStamped](LS.StampedCampaignCode,LS.EnterpriseAccNo) as CountLoyaltyStamped ,
   --[dbo].[AyohaUserStampCard_getCurrentBatch](@SubscriberAccNo,LS.StampCode) as CurrentBatch
   --from LoyaltyStamp LS inner join StampCampaign SC on LS.StampedCampaignCode=SC.StampCampaignCode  where LS.SubscriberAccNo=@SubscriberAccNo and LS.RowStatus='Active' and LS.Batch= [dbo].[AyohaUserStampCard_getCurrentBatch](@SubscriberAccNo,LS.StampCode)  order by LS.StampedByDate desc
 

   select LS.*,SC.StampRuleRemarks,SC.isStampRulePopUp,SC.StampCampaignName,SC.StartDate,SC.EndDate,[dbo].[Enterprises_GetEnterpriseName](LS.EnterpriseAccNo) as EnterpriseName ,
   [dbo].[StampCard_CountStampCardRowShow](LS.StampedCampaignCode,LS.EnterpriseAccNo) as CountStampCardRowShow,[dbo].[LoyaltyStamp_SubscriberCountLoyaltyStamped_CurrentBatch](LS.StampedCampaignCode,LS.EnterpriseAccNo,LS.SubscriberAccNo,[dbo].[AyohaUserStampCard_getCurrentBatch](@SubscriberAccNo,LS.StampCode)) as CountLoyaltyStamped ,
   [dbo].[AyohaUserStampCard_getCurrentBatch](@SubscriberAccNo,LS.StampCode) as CurrentBatch
   from LoyaltyStamp LS inner join StampCampaign SC on LS.StampedCampaignCode=SC.StampCampaignCode  where LS.SubscriberAccNo=@SubscriberAccNo and LS.RowStatus='Active' and LS.Batch= [dbo].[AyohaUserStampCard_getCurrentBatch](@SubscriberAccNo,LS.StampCode)  order by LS.StampedByDate desc
 


END
