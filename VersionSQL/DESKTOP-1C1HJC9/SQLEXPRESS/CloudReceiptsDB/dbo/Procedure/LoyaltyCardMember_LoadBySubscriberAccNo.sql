/****** Object:  Procedure [dbo].[LoyaltyCardMember_LoadBySubscriberAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[LoyaltyCardMember_LoadBySubscriberAccNo]  



      @SubscriberAccNo varchar (150) 
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 

   select M.ID, M.LoyaltyCardMemberNo,M.LoyaltyCardMemberFee,SC.StampCampaignCode ,SC.StampCampaignName,SC.StartDate,SC.EndDate
   ,[dbo].[Enterprises_GetEnterpriseName](M.CampaignEnterpriseAccNo) as EnterpriseName
  ,[dbo].[Enterprises_GetEnterpriseLogoPath](M.CampaignEnterpriseAccNo) as EnterpriseLogo
  ,[dbo].[AyohaUserStampCard_getStampedCard](M.CampaignEnterpriseAccNo,M.[CampaignCode],M.SubscriberAccNo) as Stamps 
  ,[dbo].[AyohaUserStampCard_getLastStampedCardDate] (M.CampaignEnterpriseAccNo,M.[CampaignCode],M.SubscriberAccNo) as LastStampedDate 
  ,[dbo].[AyohaUserStampCard_getStampContentNote] (M.CampaignEnterpriseAccNo,M.[CampaignCode],M.SubscriberAccNo) as NextRedeem 
  ,[dbo].[Enterprises_getEnterpriseBusinessType](M.CampaignEnterpriseAccNo) as EnterpriseBusinessType
  ,[dbo].[AyohaUserStampCard_getCurrentBatch_Membership](M.CampaignEnterpriseAccNo,M.[CampaignCode],M.SubscriberAccNo) as CurrentBatch
  ,[dbo].[LoyaltyCardBackgroundImage_getPathImage] (M.[CampaignCode],M.CampaignEnterpriseAccNo) as BackgroundImgOne
  ,[dbo].[LoyaltyCardBackgroundImage_getPathImage_2] (M.[CampaignCode],M.CampaignEnterpriseAccNo) as BackgroundImgTwo
  ,M.CampaignEnterpriseAccNo as EnterpriseAccNo
  ,[dbo].[StampCampaign_getStampRuleRemarks](M.[CampaignCode],M.CampaignEnterpriseAccNo) as StampRuleRemarks
  ,[dbo].[StampCampaign_getIsStampRulePopUp](M.[CampaignCode],M.CampaignEnterpriseAccNo) as IsStampRulePopUp
  from 
  [dbo].[LoyaltyCardMember] M inner join [dbo].[StampCampaign]  SC on  M.[CampaignCode] =SC.StampCampaignCode
  Where M.SubscriberAccNo=@SubscriberAccNo

	END

	
