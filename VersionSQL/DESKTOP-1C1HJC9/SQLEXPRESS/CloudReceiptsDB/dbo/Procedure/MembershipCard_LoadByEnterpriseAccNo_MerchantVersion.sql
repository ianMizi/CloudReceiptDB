/****** Object:  Procedure [dbo].[MembershipCard_LoadByEnterpriseAccNo_MerchantVersion]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[MembershipCard_LoadByEnterpriseAccNo_MerchantVersion]
  



	 
      @EnterpriseAccNo as varchar(250) = Null

AS 
BEGIN 
     SET NOCOUNT ON 

	 Declare @BusinessTypeGroupCode as varchar (50)
	 set @BusinessTypeGroupCode=(select BusinessTypeGroupCode  from Enterprises where EnterpriseAccNo=@EnterpriseAccNo)

	
 
select MC.*
,[dbo].[Enterprises_GetEnterpriseName](@EnterpriseAccNo) as EnterprisesName
,[dbo].[Enterprises_GetEnterpriseLogoPath](@EnterpriseAccNo) as EnterprisesLogo
,[dbo].[Enterprises_GetEnterpriseAddress](@EnterpriseAccNo) as EnterpriseAddress
  ,[dbo].[Enterprises_getEnterpriseType](@EnterpriseAccNo) as EnterpriseType
   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](@BusinessTypeGroupCode) as BusinessTypeIconPath 
   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](@BusinessTypeGroupCode) as BusinessTypeGroup 
 from MembershipCard MC where MC.EnterpriseAccNo=@EnterpriseAccNo and MC.RowStatus='Active'
 
	
END

--select * from AyohaEnterprisesUser



--select MC.*
--,[dbo].[AyohaUserProfile_getAccountName](@AyohaUserAccountNo) as AyohaUserAccountName
--,[dbo].[AyohaUserProfile_getAccountNo](@AyohaUserAccountNo) as AyohaUserAccountNo
--,[dbo].[AyohaUserProfile_getPhoto](@AyohaUserAccountNo) as AyohaUserPhoto
--,[dbo].[Enterprises_GetEnterpriseName](@EnterpriseAccNo) as EnterprisesName
--,[dbo].[Enterprises_GetEnterpriseLogoPath](@EnterpriseAccNo) as EnterprisesLogo
--,[dbo].[Enterprises_GetEnterpriseAddress](@EnterpriseAccNo) as EnterpriseAddress
--  ,[dbo].[Enterprises_getEnterpriseType](@EnterpriseAccNo) as EnterpriseType
--   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](@BusinessTypeGroupCode) as BusinessTypeIconPath 
--   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](@BusinessTypeGroupCode) as BusinessTypeGroup 
-- from MembershipCard MC where MC.EnterpriseAccNo=@EnterpriseHQAccNo and MC.RowStatus='Active'
