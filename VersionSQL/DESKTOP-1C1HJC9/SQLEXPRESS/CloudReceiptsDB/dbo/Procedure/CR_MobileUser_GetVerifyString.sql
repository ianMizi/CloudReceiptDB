/****** Object:  Procedure [dbo].[CR_MobileUser_GetVerifyString]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_MobileUser_GetVerifyString]  

	@CR_MykadNo varchar (50)= null
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


	 Select ID, CR_VerifyString from CloudReceipts_MobileUser where CR_MykadNo=@CR_MykadNo
     


    

	  
	END



	  







		
