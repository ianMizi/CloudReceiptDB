/****** Object:  Procedure [dbo].[LoyaltyStamp_LoadByStampedByUserAccNo_And_EnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[LoyaltyStamp_LoadByStampedByUserAccNo_And_EnterpriseAccNo]
  
	@StampedByUserAccNo varchar (250)= null,
	@EnterpriseAccNo varchar (250)= null
	
AS 
BEGIN 
     SET NOCOUNT ON 
	-- select * from LoyaltyStamp where StampedByUserAccNo=@StampedByUserAccNo and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active'
	 select LS.*,SC.StampCampaignName from LoyaltyStamp LS inner join StampCampaign SC on LS.StampedCampaignCode=SC.StampCampaignCode where LS.StampedByUserAccNo=@StampedByUserAccNo and LS.RowStatus='Active'  and LS.EnterpriseAccNo=@EnterpriseAccNo order by LS.StampedByDate desc
END
