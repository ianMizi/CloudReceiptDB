/****** Object:  Procedure [dbo].[CR_MobileUser_VerifiedUser]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[CR_MobileUser_VerifiedUser]  
	@CR_ID int,
	@CR_MykadNo varchar (50)= null
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 
     
  --Declare @TblVerifyString varchar (50)
  --set @TblVerifyString = (select CR_VerifyString from CloudReceipts_MobileUser where ID=@CR_ID and CR_MykadNo=@CR_MykadNo)

     --if (@CR_VerifyString=@TblVerifyString)
	 update CloudReceipts_MobileUser set CR_Status='Verified',CR_VeriyDate=getDate(),CR_IsUserVerified='Y'
	 Where ID=@CR_ID and CR_MykadNo=@CR_MykadNo
	 --else
	 --update CloudReceipts_MobileUser set CR_Status='Failed-Verified',CR_VeriyDate=getDate(),CR_IsUserVerified='N'
	 --Where ID=@CR_ID and CR_MykadNo=@CR_MykadNo


    

	  
	END



	  







		
