/****** Object:  Procedure [dbo].[CR_MobileUser_LoadMyKad]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_MobileUser_LoadMyKad]  

	@PlayerID varchar (550)= null
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


	 Select  CR_MykadNo,CR_AccountNo from CloudReceipts_MobileUser where CR_PlayerID=@PlayerID and CR_RowActive='Active' and 1=1
     


    

	  
	END



	  



	

		
