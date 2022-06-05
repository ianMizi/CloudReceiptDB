/****** Object:  Procedure [dbo].[Enterprises_LoadEnterprises_LoadAyohaUserEnterprise]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Enterprises_LoadEnterprises_LoadAyohaUserEnterprise]  
    
	@EnterpriseAccNo varchar (50)= null
	
	
	--,
	--@CR_VerifyString varchar (50)

	
AS
BEGIN 
     SET NOCOUNT ON 

	select E.[ID]
      ,E.[EnterpriseAccNo]
      ,E.[EnterpriseName]
      ,E.[EnterpriseAddress]
      ,E.[EnterpriseRegistrationNo]
      ,E.[EnterpriseEmail]
      ,E.[EnterpriseWebsite]
      ,E.[EnterprisePhoneNo] 
      ,E.[EnterpriseDescriptions]
      ,E.[EnterpriseFacebook]
      ,E.[EnterpriseTwiter]
      ,E.[EnterpriseInstagram]
	  ,E.[EnterpriseCoordinate]
	  ,E.[EnterpriseLogoPath]
	  ,E.EnterpriseLogoName
	   ,E.[RowStatus]
	   ,E.[CreatedDate]
      ,E.[CreatedBy]
      ,E.[ModifiedDate]
      ,E.[ModifiedBy]
	   ,E.[PICContactNo]
      ,E.[PersonInCharge]
      ,E.[LoyaltyCardType]
	   ,E.[EnterpriseType]
      ,E.[EnterpriseBusinessType]
      ,E.[AyohaVersion]
      ,A.ID as AyohaEnterpriseUserID
	  ,A.AccountNo
	  ,A.AccountName
	  , A.UseName
	  ,A.Password
	  ,A.Email
	  ,A.PhoneNumber
	  ,A.Photo
	  ,A.RegisterDate
	  ,A.IsUserVerified
	  ,A.VerifyString
	  ,A.VeriyDate
	  ,A.ModifiedBy
	  ,A.ModifiedDate
	  ,A.RowActive
	  ,A.EnterpriseAccNo
	  ,A.UserType
	  ,A.UserStatus
	  ,A.LastLoginDate from [dbo].[Enterprises] E inner join [dbo].[AyohaEnterprisesUser] A on E.EnterpriseAccNo = A.EnterpriseAccNo
	Where E.EnterpriseAccNo=@EnterpriseAccNo and E.RowStatus='Active' and 1=1
	  
	END





	--update Enterprises
	--set EnterpriseLogoPath='http://42.1.63.57/AyohaImgCard/Logo/CRCom-71100/ccrlogo.png'
	--where EnterpriseAccNo='CRCom-71100'
