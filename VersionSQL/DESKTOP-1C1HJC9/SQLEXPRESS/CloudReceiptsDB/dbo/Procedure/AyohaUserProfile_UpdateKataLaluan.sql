/****** Object:  Procedure [dbo].[AyohaUserProfile_UpdateKataLaluan]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AyohaUserProfile_UpdateKataLaluan]
  


	  @ID as Int,
       @AccountNo as varchar(250) = Null,
       @KataLaluan as varchar(250) = Null
       

AS 
BEGIN 
     SET NOCOUNT ON 

	  Update dbo.AyohaUserProfile
          
    Set
       KataLaluan=@KataLaluan,
	   ModifiedDate=getDate() 
	where AccountNo=@AccountNo and ID=@ID
END

--select * from AyohaEnterprisesUser
