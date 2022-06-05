/****** Object:  Procedure [dbo].[AyohaUserProfile_Login]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AyohaUserProfile_Login]
  


	 
       @UserName as varchar(250) = Null,
       @KataLaluan as varchar(250) = Null,
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
       

AS 
BEGIN 
     SET NOCOUNT ON 

	 Select* from AyohaUserProfile
	where UserName=@UserName and Katalaluan=@KataLaluan and RowStatus='Active' and 1=1
END

BEGIN
	 update AyohaUserProfile
	 set LastLoginDate=getDate()
	 where UserName=@UserName and Katalaluan=@KataLaluan and 1=1
END

	BEGIN
	DECLARE @AccountNo as varchar (250)
	set @AccountNo=(select AccountNo from AyohaUserProfile  where UserName=@UserName and Katalaluan=@KataLaluan and RowStatus='Active' and 1=1)

     INSERT INTO [dbo].[AyohaUserProfileLoginLog]
          ( 
         
	  [AccountNo]
      ,[UserName]
      ,[Katalaluan]
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
          ) 
     VALUES 
          ( 
     @AccountNo
      ,@UserName
      ,@Katalaluan
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
                    
          ) 


	END
