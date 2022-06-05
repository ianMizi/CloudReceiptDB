/****** Object:  Procedure [dbo].[Memberships_Delete]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Memberships_Delete]  


      @ID int, 
      @SubscriberAccNo varchar (150), 
      @MembershipCardCode varchar (150),
	   @CreatedBy varchar (150)  
  
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 




	 Update Memberships
	 set RowStatus='InActive',ModifiedBy=@CreatedBy,ModifiedDate=getDate()
	 where ID=@ID and SubscriberAccNo=@SubscriberAccNo and MembershipCardCode=@MembershipCardCode

	




	END


	--select * from Memberships
	--select * from MembershipCard



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
	
