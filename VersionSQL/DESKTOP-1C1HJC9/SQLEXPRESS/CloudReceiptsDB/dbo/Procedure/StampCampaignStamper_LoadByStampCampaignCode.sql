/****** Object:  Procedure [dbo].[StampCampaignStamper_LoadByStampCampaignCode]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[StampCampaignStamper_LoadByStampCampaignCode]
  
	@StampCampaignCode as varchar(250) = Null
     
AS 
BEGIN 
     SET NOCOUNT ON 

Select SS.* from StampCampaignStamper SS 
Where SS.RowStatus='Active' and SS.[StampCampaignCode]=@StampCampaignCode

		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
