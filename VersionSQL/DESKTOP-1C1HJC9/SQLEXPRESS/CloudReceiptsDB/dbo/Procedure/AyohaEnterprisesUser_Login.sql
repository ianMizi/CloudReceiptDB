/****** Object:  Procedure [dbo].[AyohaEnterprisesUser_Login]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaEnterprisesUser_Login]  
    
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

	 	  	 	select
     A.*
	 ,[dbo].[Enterprises_GetEnterpriseHQAccNo](A.EnterpriseAccNo) as EnterpriseHQAccNo
	 ,[dbo].[Enterprises_GetEnterpriseName](A.EnterpriseAccNo) as EnterpriseName
	 ,[dbo].[Enterprises_GetEnterpriseAddress](A.EnterpriseAccNo) as EnterpriseAddress
	 ,[dbo].[Enterprises_GetEnterpriseLogoPath](A.EnterpriseAccNo) as EnterpriseLogoPath
	 ,[dbo].[Enterprises_GetAyohaVersion](A.EnterpriseAccNo) as AyohaVersion 	 
	 from [dbo].[AyohaEnterprisesUser] A Where A.UseName=@UseName and A.Password =@Password and A.RowActive='Active' and 1=1


	--  	 	select
 --    A.*, E.EnterpriseHQAccNo,E.EnterpriseName,E.EnterpriseAddress,E.EnterpriseLogoPath,AyohaVersion from [dbo].[AyohaEnterprisesUser] A inner join Enterprises E on A.EnterpriseAccNo=E.EnterpriseAccNo
	--Where A.UseName=@UseName and A.Password =@Password and A.RowActive='Active' and 1=1



	--  	select
 --    A.*, E.EnterpriseHQAccNo from [dbo].[AyohaEnterprisesUser] A inner join Enterprises E on A.EnterpriseAccNo=E.EnterpriseAccNo
	--Where A.UseName=@UseName and A.Password =@Password and A.RowActive='Active' and 1=1 and A.SerialPhoneNo=@PhoneSerial
	  
	END


	BEGIN
	 update AyohaEnterprisesUser
	 set LastLoginDate=getDate()
	 where UseName=@UseName and Password=@Password and 1=1
	END
	

	BEGIN
	DECLARE @AccountNo as varchar (250)
	DECLARE @EnterpriseAccNo as varchar (250)
	set @AccountNo=(select AccountNo from AyohaEnterprisesUser  where UseName=@UseName and Password=@Password and 1=1)
	set @EnterpriseAccNo=(select E.EnterpriseAccNo from  [dbo].[Enterprises] E inner join AyohaEnterprisesUser A on E.EnterpriseAccNo = A.EnterpriseAccNo where A.UseName=@UseName and A.Password=@Password and 1=1)
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

	 	

	
	
