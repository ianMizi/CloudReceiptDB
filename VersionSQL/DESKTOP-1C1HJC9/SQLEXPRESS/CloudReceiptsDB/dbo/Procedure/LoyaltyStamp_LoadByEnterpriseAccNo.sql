/****** Object:  Procedure [dbo].[LoyaltyStamp_LoadByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[LoyaltyStamp_LoadByEnterpriseAccNo]
  
	
	@EnterpriseAccNo varchar (250)= null
	
AS 
BEGIN 
     SET NOCOUNT ON 
	-- select * from LoyaltyStamp where  EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active'

	select LS.*,SC.StampCampaignName from LoyaltyStamp LS inner join StampCampaign SC on LS.StampedCampaignCode=SC.StampCampaignCode where LS.EnterpriseAccNo=@EnterpriseAccNo order by LS.StampedByDate desc
END
