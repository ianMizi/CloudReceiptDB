/****** Object:  Procedure [dbo].[AyohaEnterprisesUser_LoadByAccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AyohaEnterprisesUser_LoadByAccountNo]  
    
	
	@AccountNo varchar (250)= null
	
	--,
	--@CR_VerifyString varchar (50)

	
AS
BEGIN 
     SET NOCOUNT ON 




	  	select
     A.* from [dbo].[AyohaEnterprisesUser] A where A.AccountNo=@AccountNo and A.RowActive='Active'


	--  	select
 --    A.*, E.EnterpriseHQAccNo from [dbo].[AyohaEnterprisesUser] A inner join Enterprises E on A.EnterpriseAccNo=E.EnterpriseAccNo
	--Where A.UseName=@UseName and A.Password =@Password and A.RowActive='Active' and 1=1 and A.SerialPhoneNo=@PhoneSerial
	  
	END


	
	

	
