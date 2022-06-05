/****** Object:  Procedure [dbo].[AyohaEnterpriseUser_Login]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaEnterpriseUser_Login]  
    
	@UseName varchar (50)= null,
	@Password varchar (250)= null,
	@LoginOS varchar (250)= null,
	@LoginIP varchar (500)= null,
	@PhoneModel varchar (250)= null,
	@PhoneImeiNo varchar (250)= null,	
	@PhoneVersion varchar (550)= null,
	@PhonePlatform varchar (250)= null,
	@PhonePlatformVersion varchar (250)= null,
	@PhoneManufacturer varchar (250)= null,
	@PhoneSerial varchar (550)= null,
	@RawPhoneInfo varchar (250)= null,
	@PlayerID varchar (350) = null
	
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
      ,E.[EnterpriseGSTNo]
      ,E.[EnterpriseEmail]
      ,E.[EnterpriseWebsite]
      ,E.[EnterprisePhoneNo]
      ,E.[EnterpriseFaxNo]
      ,E.[EnterpriseLogo]
      ,E.[EnterpriseLogo64]
      ,E.[EnterpriseLogoPath]
      ,E.[RowStatus]
      ,E.[CreatedDate]
      ,E.[CreatedBy]
      ,E.[ModifiedDate]
      ,E.[ModifiedBy]
      ,E.[Status]
      ,E.[EnterpriseTaxNo]
      ,E.[isTaxApplied]
      ,E.[TaxRate]
      ,E.[EnterpriseDescriptions]
      ,E.[EnterpriseFacebook]
      ,E.[EnterpriseTwiter]
      ,E.[EnterpriseInstagram]
	  ,E.[EnterpriseCoordinate]
      ,E.[LoyaltyCardType] , A.UseName,A.Password,A.LastLoginDate,A.AccountName,A.PhoneNumber,A.Photo,A.Email,A.MyKadNo,A.ID,A.AccountNo,A.RegisterDate from [dbo].[Enterprise] E inner join [dbo].[AyohaEnterpriseUser] A on E.EnterpriseAccNo = A.EnterpriseAccNo
	Where A.UseName=@UseName and A.Password =@Password and A.RowActive='Active' and E.RowStatus='Active' and 1=1
	  
	END


	BEGIN
	 update AyohaEnterpriseUser
	 set LastLoginDate=getDate()
	 where UseName=@UseName and Password=@Password and 1=1
	END
	

	BEGIN
	DECLARE @AccountNo as varchar (250)
	DECLARE @EnterpriseAccNo as varchar (250)
	set @AccountNo=(select AccountNo from AyohaEnterpriseUser  where UseName=@UseName and Password=@Password and 1=1)
	set @EnterpriseAccNo=(select E.EnterpriseAccNo from  [dbo].[Enterprise] E inner join AyohaEnterpriseUser A on E.EnterpriseAccNo = A.EnterpriseAccNo where A.UseName=@UseName and A.Password=@Password and 1=1)
     INSERT INTO [dbo].[AyohaEnterpriseUserLoginLog]
          ( 
         
	  [AccountNo]
      ,[UseName]
      ,[Password]
      ,[LoginOS]
      ,[LoginIP]
      ,[PhoneModel]
      ,[PhoneImeiNo]
      ,[PhonePlatform]
      ,[PhoneVersion]
      ,[PhoneManufacturer]
      ,[PhoneSerial]
      ,[RawPhoneInfo]
      ,[PlayerID]
      ,[EnterpriseAccNo]                
          ) 
     VALUES 
          ( 
     @AccountNo
      ,@UseName
      ,@Password
      ,@LoginOS
      ,@LoginIP
      ,@PhoneModel
      ,@PhoneImeiNo
      ,@PhonePlatform
      ,@PhoneVersion
      ,@PhoneManufacturer
      ,@PhoneSerial
      ,@RawPhoneInfo
      ,@PlayerID     
      ,@EnterpriseAccNo                    
          ) 


	END
