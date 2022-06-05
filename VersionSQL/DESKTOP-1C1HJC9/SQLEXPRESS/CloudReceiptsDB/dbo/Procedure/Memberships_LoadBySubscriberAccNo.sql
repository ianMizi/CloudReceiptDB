/****** Object:  Procedure [dbo].[Memberships_LoadBySubscriberAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Memberships_LoadBySubscriberAccNo]  



      @SubscriberAccNo varchar (150) 
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 
	select M.*,MC.MembershipCardBackgroundImg,MC.MembershipCardName,MC.isRequiredApproval
,[dbo].[Enterprises_GetEnterpriseName]( E.EnterpriseAccNo) as EnterprisesName
,[dbo].[Enterprises_GetEnterpriseLogoPath]( E.EnterpriseAccNo) as EnterprisesLogo
,[dbo].[Enterprises_GetEnterpriseAddress]( E.EnterpriseAccNo) as EnterpriseAddress
  ,[dbo].[Enterprises_getEnterpriseType]( E.EnterpriseAccNo) as EnterpriseType
   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](E.BusinessTypeGroupCode) as BusinessTypeIconPath 
   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](E.BusinessTypeGroupCode) as BusinessTypeGroup
   ,[dbo].[AyohaUserProfile_getAccountName](@SubscriberAccNo) as AccountName
      ,[dbo].[Memberships_CalculateExpiredDate](MC.StrExpiredDate,MC.isValidLifeTime,M.MembrshipApprovalDate) as ValidUntilDate
 from Memberships M   inner join MembershipCard MC
 on M.MembershipCardCode=MC.MembershipCardCode
 inner join Enterprises E
 on M.CampaignEnterpriseAccNo = E.EnterpriseAccNo
 where M.SubscriberAccNo=@SubscriberAccNo and  M.RowStatus='Active'
	




	END






--	select M.*,MC.MembershipCardBackgroundImg,MC.MembershipCardName
--,[dbo].[Enterprises_GetEnterpriseName]( E.EnterpriseAccNo) as EnterprisesName
--,[dbo].[Enterprises_GetEnterpriseLogoPath]( E.EnterpriseAccNo) as EnterprisesLogo
--,[dbo].[Enterprises_GetEnterpriseAddress]( E.EnterpriseAccNo) as EnterpriseAddress
--  ,[dbo].[Enterprises_getEnterpriseType]( E.EnterpriseAccNo) as EnterpriseType
--   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](E.BusinessTypeGroupCode) as BusinessTypeIconPath 
--   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](E.BusinessTypeGroupCode) as BusinessTypeGroup 
-- from Memberships M   inner join MembershipCard MC
-- on M.MembershipCardCode=MC.MembershipCardCode
-- inner join Enterprises E
-- on M.CampaignEnterpriseAccNo = E.EnterpriseAccNo
-- where M.SubscriberAccNo='Mizi-01113218926-9309422' and  M.RowStatus='Active'
	
