/****** Object:  Procedure [dbo].[CR_MobileUser_DisableAccount]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[CR_MobileUser_DisableAccount]  

	@CR_ID int
AS
BEGIN 
     SET NOCOUNT ON 


	 Update CloudReceipts_MobileUser
	set CR_RowActive='InActive',CR_Status='Disabled',
	 CR_ModifiedDate=GETDATE()
	 where ID=@CR_ID and 1=1

	  
	END



	  







		
