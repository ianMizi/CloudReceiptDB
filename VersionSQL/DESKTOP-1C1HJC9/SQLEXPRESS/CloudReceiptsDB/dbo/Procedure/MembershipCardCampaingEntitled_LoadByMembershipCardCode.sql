/****** Object:  Procedure [dbo].[MembershipCardCampaingEntitled_LoadByMembershipCardCode]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[MembershipCardCampaingEntitled_LoadByMembershipCardCode]
  
      @MembershipCardCode varchar(250) = Null ,
	     @SubscriberAccNo varchar(250) = Null 
     
AS 
BEGIN 
     SET NOCOUNT ON 
--Select MC.*, SC.StampCampaignName as CampaignName,SC.StartDate as CampaignStartDate,SC.EndDate as CampaignEndDate from MembershipCardCampaingEntitled MC inner join StampCampaign SC on MC.CampaignCode=SC.StampCampaignCode  where MC.[MembershipCardCode]='MMC-02' and MC.RowStatus='Active'

--Select MC.*, SC.StampCampaignName as CampaignName,SC.StartDate as CampaignStartDate,SC.EndDate as CampaignEndDate from MembershipCardCampaingEntitled MC inner join StampCampaign SC on MC.CampaignCode=SC.StampCampaignCode  where MC.[MembershipCardCode]=@MembershipCardCode and MC.RowStatus='Active'
Select MC.*, SC.StampCampaignName as CampaignName,SC.StartDate as CampaignStartDate,SC.EndDate as CampaignEndDate,SC.StampRuleRemarks,SC.isStampRulePopUp
,[dbo].[StampCard_CountStampCardRowShow](MC.CampaignCode,MC.EnterpriseHQAccNo) as Stamp
,[dbo].[Enterprises_GetEnterpriseName](MC.EnterpriseHQAccNo) as EnterpriseName
,[dbo].[Enterprises_GetEnterpriseLogoPath](MC.EnterpriseHQAccNo) as EnterpriseLogo
,[dbo].[AyohaUserStampCard_CountStatusYES](MC.EnterpriseHQAccNo,MC.CampaignCode,@SubscriberAccNo) as CountLoyaltyStamped
from MembershipCardCampaingEntitled MC inner join StampCampaign SC on MC.CampaignCode=SC.StampCampaignCode  where MC.[MembershipCardCode]=@MembershipCardCode and MC.RowStatus='Active'
END




--select * from MembershipCardCampaingEntitled
--select * from StampCampaign

--Select MC.*, SC.StampCampaignName as CampaignName,SC.StartDate as CampaignStartDate,SC.EndDate as CampaignEndDate,SC.StampRuleRemarks,[dbo].[StampCard_CountStampCardRowShow](MC.CampaignCode,MC.EnterpriseHQAccNo) as RowShow from MembershipCardCampaingEntitled MC inner join StampCampaign SC on MC.CampaignCode=SC.StampCampaignCode  where MC.[MembershipCardCode]='MMC-02' and MC.RowStatus='Active'
