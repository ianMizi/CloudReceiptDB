/****** Object:  Procedure [dbo].[AyohaEnterpriseUserLoginLog_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

create PROCEDURE [dbo].[AyohaEnterpriseUserLoginLog_Insert]
  
      @AccountNo varchar (250)
      ,@UseName varchar (250)
      ,@Password varchar (250)
      ,@LoginOS varchar (250)
      ,@LoginIP varchar (250)
      ,@PhoneModel varchar (250)
      ,@PhoneImeiNo varchar (250)
      ,@PhonePlatform varchar (250)
      ,@PhoneVersion varchar (250)
      ,@PhoneManufacturer varchar (250)
      ,@PhoneSerial varchar (250)
      ,@RawPhoneInfo varchar (250)
      ,@PlayerID  varchar (250)   
      ,@EnterpriseAccNo  varchar (250)
	
AS 
BEGIN 
     SET NOCOUNT ON 



 
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
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
