/****** Object:  Procedure [dbo].[AyohaUserProfile_LoadProfile]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AyohaUserProfile_LoadProfile]
	 
       @AccountNo as varchar(250) = Null
       

AS 
BEGIN 
     SET NOCOUNT ON 

	 Select* from AyohaUserProfile
	where AccountNo=@AccountNo and RowStatus='Active' and 1=1
END
