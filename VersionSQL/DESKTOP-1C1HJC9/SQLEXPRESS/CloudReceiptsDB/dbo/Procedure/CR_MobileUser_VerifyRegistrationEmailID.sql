/****** Object:  Procedure [dbo].[CR_MobileUser_VerifyRegistrationEmailID]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_MobileUser_VerifyRegistrationEmailID]
@EmailID varchar (50)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select ID,CR_Email from  [dbo].[CloudReceipts_MobileUser] where CR_Email=@EmailID
    
END
