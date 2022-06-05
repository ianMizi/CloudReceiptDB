/****** Object:  Procedure [dbo].[Import_ExternalClients_Insert_Internal]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Import_ExternalClients_Insert_Internal]
 


	@ProjectName varchar (250)= null,
      @ProjectAccountNo varchar (250)= null,
      @AccountOwner varchar (250)= null,
      @ClientAccountNo varchar (250)= null,
      @Name varchar (250)= null,
      @MobilePhone varchar (250)= null,
      @Email varchar (250)= null,
      @PlayerID varchar (250)= null,
      @PN_Status varchar (250)= null,
      @SMS_Status varchar (250)= null,
      @Email_Status varchar (250)= null,
      @RowStatus varchar (250)= null,
	   @UserLoginID varchar (250)= null,
	    @CompanyAccNo varchar (250)= null,
		@CompanyName varchar (250)=null,
		@CompanyAddress varchar (350)=null
     
	
AS 
BEGIN 
     SET NOCOUNT ON 

     INSERT INTO dbo.Import_ExternalClients
          ( 
         
	[ProjectName]
      ,[ProjectAccountNo]
      ,[AccountOwner]
      ,[ClientAccountNo]
      ,[Name]
      ,[MobilePhone]
      ,[Email]
      ,[PlayerID]
      ,[PN_Status]
      ,[SMS_Status]
      ,[Email_Status]
      ,[RowStatus]
	  ,[SearchCol]
	  ,[UserLoginID]
	  ,[EnterpriseAccNo]                
          ) 
     VALUES 
          ( 
   @ProjectName,
      @ProjectAccountNo,
      @AccountOwner,
     @ClientAccountNo,
      @Name,
      @MobilePhone,
      @Email,
      @PlayerID,
      @PN_Status,
      @SMS_Status,
     @Email_Status,
      @RowStatus,
	  @MobilePhone+'|'+@Email+'|'+@Name,
	  @UserLoginID,
	  @CompanyAccNo                  
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END

begin


 IF NOT EXISTS (SELECT  [EnterpriseAccNo] FROM [dbo].[Import_ExternalClients_Enterprise] WHERE [EnterpriseAccNo]=@CompanyAccNo and 1=1)

      INSERT INTO dbo.[Import_ExternalClients_Enterprise]
          ( 
         
	EnterpriseAccNo,
	 EnterpriseName ,
	EnterpriseAddress,
	  CreatedBy         
          ) 
     VALUES 
          ( 
    @CompanyAccNo,
		@CompanyName ,
		@CompanyAddress, 
		@AccountOwner         
          ) 

end
