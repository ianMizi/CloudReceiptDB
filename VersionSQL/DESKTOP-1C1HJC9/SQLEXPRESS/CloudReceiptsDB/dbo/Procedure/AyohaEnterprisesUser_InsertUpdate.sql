/****** Object:  Procedure [dbo].[AyohaEnterprisesUser_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaEnterprisesUser_InsertUpdate]
  

     @ID as int,
     @AccountNo as varchar(250) = Null,
      @AccountName as varchar(250) = Null,
      @UseName as varchar(250) = Null,
      @Password as varchar(250) = Null,
      @Email as varchar(250) = Null,
      @PhoneNumber  as varchar(250) = Null,
      @Photo  as varchar(250) = Null,
      @ModifiedBy  as varchar(250) = Null,
      @EnterpriseAccNo  as varchar(250) = Null,
      @UserType  as varchar(250) = Null,
      @UserStatus  as varchar(250) = Null,
      @PhotoName  as varchar(250) = Null,
      @DOB  as varchar(250) = Null,
	  @SerialPhoneNo  as varchar(250) = Null,
	  @RowActive  as varchar(250) = Null,
	  @PlayerID as varchar(250) = Null
	

AS 
BEGIN 
     SET NOCOUNT ON 
  IF  EXISTS (SELECT ID,AccountNo  FROM AyohaEnterprisesUser WHERE AccountNo=@AccountNo and ID=@ID)
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
	  ,RowActive=@RowActive
	where AccountNo=@AccountNo and ID=@ID
 
	Else

	   INSERT INTO dbo.AyohaEnterprisesUser
          ( 
         
	   [AccountNo]
      ,[AccountName]
      ,[UseName]
      ,[Password]
      ,[Email]
      ,[PhoneNumber]
      ,[Photo]
      ,[ModifiedBy]
      ,[EnterpriseAccNo]
      ,[UserType]
      ,[UserStatus]
      ,[PhotoName]
      ,[DOB]
	  ,[SerialPhoneNo]
	  ,[PlayerID]           
          ) 
     VALUES 
          ( 
      @AccountNo,
      @AccountName,
      @UseName,
      @Password,
      @Email,
      @PhoneNumber,
      @Photo,
      @ModifiedBy,
      @EnterpriseAccNo,
      @UserType,
      @UserStatus,
      @PhotoName,
     NULL,
	  @SerialPhoneNo,
	  @PlayerID	                      
          ) 
END

--select * from AyohaEnterprisesUser
