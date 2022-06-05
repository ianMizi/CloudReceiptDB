/****** Object:  Procedure [dbo].[AyohaUserProfile_Update]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AyohaUserProfile_Update]
  


	  @ID as Int,
       @AccountNo as varchar(250) = Null,
       @AccountName as varchar(250) = Null,
       @Email as varchar(250) = Null,
       @PhoneNo as varchar(250) = Null,
       @Photo as varchar(250) = Null,
       @Gender as varchar(250) = Null,
       @DOB as varchar(250) = Null
       

AS 
BEGIN 
     SET NOCOUNT ON 

	  Update dbo.AyohaUserProfile
          
    Set
       AccountName=@AccountName,
       Email=@Email,
       PhoneNo=@PhoneNo,
       Photo=@Photo,
       Gender=@Gender,
       DOB=@DOB,
	   ModifiedDate=getDate() 
	where AccountNo=@AccountNo and ID=@ID
END

--select * from AyohaEnterprisesUser
