/****** Object:  Procedure [dbo].[Import_ExternalClients_Update_Internal]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Import_ExternalClients_Update_Internal]
 



		 @ID int = null,
        @UserOperator varchar (250)= null,
        @Name varchar (250)= null,
        @MobilePhone varchar (250)= null,
        @Email varchar (250)= null,     
        @CompanyAccNo varchar (250)= null,
        @CompanyName varchar (250)= null,
        @CompanyAddress varchar (550)= null
     
	
AS 
BEGIN 
     SET NOCOUNT ON 


	 Update Import_ExternalClients
	 set Name=@Name,MobilePhone=@MobilePhone,Email=@Email,SearchCol =@Name +'|'+@MobilePhone+'|'+@Email,ModifiedBy=@UserOperator,ModifiedDate=GETDATE()
	 where ID=@ID


	  Update Import_ExternalClients_Enterprise
	 set  EnterpriseName=@CompanyName ,
	EnterpriseAddress=@CompanyAddress,
	ModifiedBy=@UserOperator,
	ModifiedDate=GETDATE()
	 where EnterpriseAccNo=@CompanyAccNo


end
