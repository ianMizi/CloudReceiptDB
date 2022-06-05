/****** Object:  Procedure [dbo].[CR_MobileUser_VerifyRegistrationMyKadNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_MobileUser_VerifyRegistrationMyKadNo]
@MyKadNo varchar (50)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select ID,CR_MykadNo from  [dbo].[CloudReceipts_MobileUser] where CR_MykadNo=@MyKadNo
    
END
