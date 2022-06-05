/****** Object:  Procedure [dbo].[CR_MobileUser_UpdateLoginInfo]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[CR_MobileUser_UpdateLoginInfo]  

	@CR_ID int,
	@CR_UserName varchar (500),
	@CR_Password varchar(MAX)
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


	 Update CloudReceipts_MobileUser
	set CR_UseName=@CR_UserName,
	CR_Password=@CR_Password,
	 CR_ModifiedDate=GETDATE()
	 where ID=@CR_ID and 1=1

	  
	END



	  







		
