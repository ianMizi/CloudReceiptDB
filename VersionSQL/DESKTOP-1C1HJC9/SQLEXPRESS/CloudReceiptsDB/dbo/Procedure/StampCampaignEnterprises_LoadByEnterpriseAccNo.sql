/****** Object:  Procedure [dbo].[StampCampaignEnterprises_LoadByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampCampaignEnterprises_LoadByEnterpriseAccNo]
  
	@EnterpriseAccNo as varchar(250) = Null,
	@StampCampaignCode as varchar(250) = Null
     
AS 
BEGIN 
     SET NOCOUNT ON 

Select SC.* ,E.EnterpriseName,E.[EnterpriseRegistrationNo],E.[EnterpriseType],E.[EnterpriseAddress],E.[EnterpriseLogoPath] from StampCampaignEnterprises SC inner join Enterprises E ON SC.EnterpriseAccNo=E.EnterpriseAccNo
Where SC.EnterpriseAccNo=@EnterpriseAccNo and SC.RowStatus='Active' and SC.[StampCampaignCode]=@StampCampaignCode

		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
