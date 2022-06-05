/****** Object:  Procedure [dbo].[MembershipCardEnterprisesEntitled_LoadByMembershipCardCode]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[MembershipCardEnterprisesEntitled_LoadByMembershipCardCode]
  
      @MembershipCardCode varchar(250) = Null,
	   @EnterpriseHQAccNo varchar(250) = Null  
     
AS 
BEGIN 
     SET NOCOUNT ON 
	 Declare @EnterpriseHQAccNos as varchar(250)

	 set @EnterpriseHQAccNos = (select EnterpriseHQAccNo from Enterprises where EnterpriseAccNo=@EnterpriseHQAccNo)



--Select MC.*, SC.StampCampaignName as CampaignName,SC.StartDate as CampaignStartDate,SC.EndDate as CampaignEndDate from MembershipCardCampaingEntitled MC inner join StampCampaign SC on MC.CampaignCode=SC.StampCampaignCode  where MC.[MembershipCardCode]='MMC-02' and MC.RowStatus='Active'
Select MC.*,E.EnterpriseName,E.EnterpriseLogoPath as EnterpriseLogo,E.EnterpriseRegistrationNo,E.EnterpriseEmail,E.EnterprisePhoneNo,E.EnterpriseType ,E.EnterpriseAddress from MembershipCardEnterprisesEntitled MC 
inner join Enterprises E
on MC.EnterpriseAccNo=E.EnterpriseAccNo


 where MC.[MembershipCardCode]=@MembershipCardCode and MC.RowStatus='Active' and MC.EnterpriseHQAccNo=@EnterpriseHQAccNos
END
