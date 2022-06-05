/****** Object:  Procedure [dbo].[LoyaltyStamp_LoadBySubscriberAccNo_And_EnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[LoyaltyStamp_LoadBySubscriberAccNo_And_EnterpriseAccNo]
  
	@SubscriberAccNo varchar (250)= null,
	@EnterpriseAccNo varchar (250)= null
	
AS 
BEGIN 
     SET NOCOUNT ON 
	 --select * from LoyaltyStamp where SubscriberAccNo=@SubscriberAccNo and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active'
	   select LS.*,SC.StampCampaignName from LoyaltyStamp LS inner join StampCampaign SC on LS.StampedCampaignCode=SC.StampCampaignCode where LS.SubscriberAccNo=@SubscriberAccNo and LS.RowStatus='Active' and LS.EnterpriseAccNo=@EnterpriseAccNo 
END
