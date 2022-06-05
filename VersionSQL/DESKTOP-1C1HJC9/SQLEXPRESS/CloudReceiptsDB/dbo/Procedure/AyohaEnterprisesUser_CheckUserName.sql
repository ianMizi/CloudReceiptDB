/****** Object:  Procedure [dbo].[AyohaEnterprisesUser_CheckUserName]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaEnterprisesUser_CheckUserName]
  

  
      @UseName as varchar(250) = Null,   
      @SerialPhoneNo as varchar(250) = Null
	

AS 
BEGIN 
     SET NOCOUNT ON 

	 select UseName from AyohaEnterprisesUser where UseName=@UseName and SerialPhoneNo=@SerialPhoneNo
END

--select * from AyohaEnterprisesUser
