/****** Object:  Procedure [dbo].[CR_CRSuiteUser_VerifyRegistrationUserName]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[CR_CRSuiteUser_VerifyRegistrationUserName]
@UserName varchar (50)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select ID,UserName from  [dbo].[CloudReceipts_CRSuiteUser] where UserName=@UserName
    
END
