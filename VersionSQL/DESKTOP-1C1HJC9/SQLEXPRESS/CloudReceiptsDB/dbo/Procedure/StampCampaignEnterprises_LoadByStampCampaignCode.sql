/****** Object:  Procedure [dbo].[StampCampaignEnterprises_LoadByStampCampaignCode]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[StampCampaignEnterprises_LoadByStampCampaignCode]
  
	@StampCampaignCode as varchar(250) = Null
     
AS 
BEGIN 
     SET NOCOUNT ON 

Select SC.* ,E.EnterpriseName,E.[EnterpriseRegistrationNo],E.[EnterpriseType],E.[EnterpriseAddress],E.[EnterpriseLogoPath] from StampCampaignEnterprises SC inner join Enterprises E ON SC.EnterpriseAccNo=E.EnterpriseAccNo
Where SC.RowStatus='Active' and SC.[StampCampaignCode]=@StampCampaignCode

		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
