/****** Object:  Procedure [dbo].[CR_MobileUser_LoadUser]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_MobileUser_LoadUser]  

	@UserName varchar (50)= null,
	@Password varchar (MAX)= null,
	@LoginIP varchar (500)= null,
	@PhoneModel varchar (250)= null,
	@PhoneUniqueID varchar (MAX)= null,
	@PhonePlatform varchar (250)= null,
	@PhonePlatformVersion varchar (250)= null,
	@PhoneManufacturer varchar (250)= null,
	@PhoneSerialNo varchar (MAX)= null,
	@PhoneRawInfo varchar (250)= null,
	@CRPlayerID varchar (350) = null
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


	 Select ID, CR_MykadNo,CR_AccountNo,CR_AccountName, CR_UseName,CR_Password,CR_Email,CR_PhoneNumber,CR_RegisterDate,CR_Status,CR_LastLoginDate,CR_LoginIP,CR_VeriyDate,CR_ModifiedDate,CR_Version,CR_Photo,[dbo].[CloudReceiptsMobileUser_VersionDayUsed](CR_AccountNo) as DayUsed, [CR_EndDateDay] from CloudReceipts_MobileUser where CR_UseName=@UserName and CR_Password=@Password  and CR_RowActive='Active' and 1=1
     

	 Declare @CR_MykadNologged as varchar(250)
	 set @CR_MykadNologged=(Select substring (CR_PlayerID,45,100) from CloudReceipts_MobileUser where CR_UseName=@UserName and CR_Password=@Password  and CR_RowActive='Active' and 1=1) 

	 Declare @CR_MykadNo as varchar(250)
	set @CR_MykadNo=(select CR_MykadNo from CloudReceipts_MobileUser where CR_UseName=@UserName and CR_Password=@Password and CR_RowActive='Active' and 1=1)

	Declare @TempID as Int
	
	Set @TempID=(select ID from CloudReceipts_MobileUser where CR_PlayerID=@CRPlayerID)


	Declare @TempIDforCR_Player as int
	set @TempIDforCR_Player =(select ID from CloudReceipts_MobileUser where CR_PlayerID=@CRPlayerID+'-logged-'+@CR_MykadNo)

	 update CloudReceipts_MobileUser
	 set CR_LastLoginDate=getDate(),
	 --CR_LoginIP=@LoginIP,
	 CR_PhoneModel=@PhoneModel,
	 CR_PhoneUniqueID=@PhoneUniqueID,
	 CR_PhonePlatform=@PhonePlatform,
	 CR_PhoneVersion=@PhonePlatformVersion,
	 CR_PhoneManufacturer=@PhoneManufacturer,
	 CR_PhoneSerial=@PhoneSerialNo,
	 CR_RawPhoneInfo=@PhoneRawInfo,
	 CR_PlayerID=@CRPlayerID,
	 CR_LoginCount=(CR_LoginCount + 1)-1
	 where CR_UseName=@UserName and CR_Password=@Password  and CR_RowActive='Active' and 1=1
	

	
	Declare @CountCR_PlayerID as int
    set @CountCR_PlayerID =(select count(*) from CloudReceipts_MobileUser where CR_PlayerID=@CRPlayerID)
	


	

	if(@CountCR_PlayerID > 1)
	update CloudReceipts_MobileUser
	set CR_PlayerID=@CRPlayerID+'-logged-'+@CR_MykadNo
	where ID=@TempID
	--update CloudReceipts_MobileUser
	--set CR_PlayerID=CR_OriginalPlayerID
	--where CR_MykadNo=@CR_MykadNologged
	--else

	--update CloudReceipts_MobileUser
	--set CR_PlayerID=CR_OriginalPlayerID
	--where ID=@TempIDforCR_Player
	 

	
	

	--else

	--update CloudReceipts_MobileUser
	--set CR_PlayerID=CR_OriginalPlayerID
	--where ID=@TempID
	  
	END


	--	update CloudReceipts_MobileUser
	--set CR_PlayerID=CR_OriginalPlayerID
	  

	   --select * from CloudReceipts_MobileUser
		

		--33da98d8-5087-4514-b362-d90ab32bcb81-logged by:IanMizi


		--mizi-33da98d8-5087-4514-b362-d90ab32bcb81
		--nik.amir-1870876e-bf6d-47e6-8c14-13a3c779a35e
