/****** Object:  Procedure [dbo].[AyohaEnterprisesUser_UpdatePassword]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AyohaEnterprisesUser_UpdatePassword]
  

     @ID as int,
     @AccountNo as varchar(250) = Null,
     @ModifiedBy as varchar(250) = Null,
     @Password as varchar(250) = Null
     
	

AS 
BEGIN 
     SET NOCOUNT ON 
  
 Update dbo.AyohaEnterprisesUser
          
    Set
      
      Password=@Password
      ,ModifiedBy=@ModifiedBy
	  ,ModifiedDate=getDate()
    
     
	where AccountNo=@AccountNo and ID=@ID
 
	
END

--select * from AyohaEnterprisesUser
