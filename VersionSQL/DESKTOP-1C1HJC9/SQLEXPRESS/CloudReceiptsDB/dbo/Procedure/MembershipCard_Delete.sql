/****** Object:  Procedure [dbo].[MembershipCard_Delete]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[MembershipCard_Delete]
  



	 
      @ID as int = Null,
	  @MembershipCardCode as varchar(250) = Null,
	  @EnterpriseAccNo as varchar(250) = Null,
      @ModifiedBy as varchar(250) = Null

AS 
BEGIN 
     SET NOCOUNT ON 

	Update MembershipCard
	set RowStatus='InActive',ModifiedBy=@ModifiedBy,ModifiedDate=getDate()
	where ID=@ID and MembershipCardCode=@MembershipCardCode and EnterpriseAccNo=@EnterpriseAccNo
	
END

--select * from MembershipCard
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
