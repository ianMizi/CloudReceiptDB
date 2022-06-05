/****** Object:  Procedure [dbo].[MembershipCard_AyohaUserMembershipCard]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[MembershipCard_AyohaUserMembershipCard]
  



	 
      @EnterpriseAccNo as varchar(250) = Null,
	  @EnterpriseHQAccNo as varchar(250) = Null,
      @AyohaUserAccountNo as varchar(250) = Null,
	  @MembershipCardCode as varchar(250) = Null

AS 
BEGIN 
     SET NOCOUNT ON 

	 Declare @BusinessTypeGroupCode as varchar (50)
	 set @BusinessTypeGroupCode=(select BusinessTypeGroupCode  from Enterprises where EnterpriseAccNo=@EnterpriseAccNo)

	 -- Declare @EnterpriseHQAccNo as varchar (50)
	 --set @EnterpriseHQAccNo=(select EnterpriseHQAccNo  from Enterprises where EnterpriseAccNo=@EnterpriseAccNo)


 
select MC.*
,[dbo].[AyohaUserProfile_getAccountName](@AyohaUserAccountNo) as AyohaUserAccountName
,[dbo].[AyohaUserProfile_getAccountNo](@AyohaUserAccountNo) as AyohaUserAccountNo
,[dbo].[AyohaUserProfile_getPhoto](@AyohaUserAccountNo) as AyohaUserPhoto
,[dbo].[Enterprises_GetEnterpriseName](@EnterpriseAccNo) as EnterprisesName
,[dbo].[Enterprises_GetEnterpriseLogoPath](@EnterpriseAccNo) as EnterprisesLogo
,[dbo].[Enterprises_GetEnterpriseAddress](@EnterpriseAccNo) as EnterpriseAddress
  ,[dbo].[Enterprises_getEnterpriseType](@EnterpriseAccNo) as EnterpriseType
   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](@BusinessTypeGroupCode) as BusinessTypeIconPath 
   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](@BusinessTypeGroupCode) as BusinessTypeGroup
   ,[dbo].[Memberships_GetMembershipNo_NonMembership](@AyohaUserAccountNo) as MembershipNo   
   ,[dbo].[Memberships_CalculateExpiredDate](MC.StrExpiredDate,MC.isValidLifeTime,NULL) as ValidUntilDate
 from MembershipCard MC where MC.EnterpriseAccNo=@EnterpriseHQAccNo and MC.RowStatus='Active' and MC.MembershipCardCode=@MembershipCardCode




--select MC.*
--,[dbo].[AyohaUserProfile_getAccountName]('Mizi-01113218926-9309422') as AyohaUserAccountName
--,[dbo].[AyohaUserProfile_getAccountNo]('Mizi-01113218926-9309422') as AyohaUserAccountNo
--,[dbo].[AyohaUserProfile_getPhoto]('Mizi-01113218926-9309422') as AyohaUserPhoto
--,[dbo].[Enterprises_GetEnterpriseName]('CRCom-52123') as EnterprisesName
--,[dbo].[Enterprises_GetEnterpriseLogoPath]('CRCom-52123') as EnterprisesLogo
--,[dbo].[Enterprises_GetEnterpriseAddress]('CRCom-52123') as EnterpriseAddress
--  ,[dbo].[Enterprises_getEnterpriseType]('CRCom-52123') as EnterpriseType
--   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](@BusinessTypeGroupCode) as BusinessTypeIconPath 
--   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](@BusinessTypeGroupCode) as BusinessTypeGroup 
-- from MembershipCard MC where MC.EnterpriseAccNo='CRCom-71100' and MC.RowStatus='Active'
 
	
END


--select * from MembershipCard
--select * from AyohaEnterprisesUser



--select MC.*
--,[dbo].[AyohaUserProfile_getAccountName]('Mizi-01113218926-9309422') as AyohaUserAccountName
--,[dbo].[AyohaUserProfile_getAccountNo]('Mizi-01113218926-9309422') as AyohaUserAccountNo
--,[dbo].[AyohaUserProfile_getPhoto]('Mizi-01113218926-9309422') as AyohaUserPhoto
--,[dbo].[Enterprises_GetEnterpriseName]('CRCom-52123') as EnterprisesName
--,[dbo].[Enterprises_GetEnterpriseLogoPath]('CRCom-52123') as EnterprisesLogo
--,[dbo].[Enterprises_GetEnterpriseAddress]('CRCom-52123') as EnterpriseAddress
--  ,[dbo].[Enterprises_getEnterpriseType]('CRCom-52123') as EnterpriseType
--   --,[dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](@BusinessTypeGroupCode) as BusinessTypeIconPath 
--   --,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](@BusinessTypeGroupCode) as BusinessTypeGroup 
-- from MembershipCard MC where MC.EnterpriseAccNo='CRCom-71100' and MC.RowStatus='Active'
