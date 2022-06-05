/****** Object:  Procedure [dbo].[AyohaEnterprisesUser_Update]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AyohaEnterprisesUser_Update]
  



	@ID as int,
	@AccountNo as varchar(250) = Null,
      @AccountName varchar(250) = Null,
      @Email varchar(250) = Null,
      @PhoneNumber as varchar(250) = Null,
      @Photo  as varchar(250) = Null,
      @ModifiedBy  as varchar(250) = Null,     
      @UserType  as varchar(250) = Null,
      @UserStatus  as varchar(250) = Null,
	  @PhotoName as varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 
 
 Update dbo.AyohaEnterprisesUser
          
    Set
       AccountName = @AccountName
      ,Email =@Email
      ,PhoneNumber=@PhoneNumber
      ,Photo=@Photo
      ,ModifiedBy=@ModifiedBy
	  ,ModifiedDate=getDate()
      ,UserType=@UserType
      ,UserStatus=@UserStatus
      ,PhotoName=@PhotoName
	where AccountNo=@AccountNo and ID=@ID
 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
