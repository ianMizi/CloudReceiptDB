/****** Object:  Procedure [dbo].[CR_MobileUser_UpdateAccountInfo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_MobileUser_UpdateAccountInfo]  

	@CR_ID int,
	@CR_AccountName varchar (500),
	@CR_MobilePhone varchar(50),
	@CR_Email varchar(50),
	@CR_Photo varchar(MAX)
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


	 Update CloudReceipts_MobileUser
	 set CR_AccountName=@CR_AccountName,
	 CR_PhoneNumber=@CR_MobilePhone,
	 CR_Email=@CR_Email,
	 CR_ModifiedDate=GETDATE(),
	 CR_Photo=@CR_Photo
	 where ID=@CR_ID and 1=1

	  
	END



	  --select * from CloudReceipts_MobileUser







		
