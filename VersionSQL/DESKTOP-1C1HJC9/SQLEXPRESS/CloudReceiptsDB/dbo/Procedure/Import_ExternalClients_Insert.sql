/****** Object:  Procedure [dbo].[Import_ExternalClients_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Import_ExternalClients_Insert]
 


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
	    @EnterpriseAccNo varchar (250)= null
     
	
AS 
BEGIN 
     SET NOCOUNT ON 


 --IF  EXISTS (SELECT MobilePhone  FROM Import_ExternalClients WHERE ClientAccountNo=@ClientAccountNo  and ProjectAccountNo=@ProjectAccountNo)
 
 --Update dbo.Import_ExternalClients          
 --   Set
	--MobilePhone=@MobilePhone
	--WHERE ClientAccountNo=@ClientAccountNo  and ProjectAccountNo=@ProjectAccountNo


 --IF  EXISTS (SELECT Email  FROM Import_ExternalClients WHERE ClientAccountNo=@ClientAccountNo  and ProjectAccountNo=@ProjectAccountNo)

 -- Update dbo.Import_ExternalClients          
 --   Set
	--Email=@Email
	--WHERE ClientAccountNo=@ClientAccountNo  and ProjectAccountNo=@ProjectAccountNo


	-- IF  EXISTS (SELECT PlayerID  FROM Import_ExternalClients WHERE ClientAccountNo=@ClientAccountNo  and ProjectAccountNo=@ProjectAccountNo)

 -- Update dbo.Import_ExternalClients          
 --   Set
	--PlayerID=@PlayerID
	--WHERE ClientAccountNo=@ClientAccountNo  and ProjectAccountNo=@ProjectAccountNo
 












 --	 IF  EXISTS (SELECT PlayerID,Email,MobilePhone  FROM Import_ExternalClients WHERE ClientAccountNo=@ClientAccountNo  and ProjectAccountNo=@ProjectAccountNo and PlayerID=@PlayerID and Email=@Email and MobilePhone=@MobilePhone)

 -- Update dbo.Import_ExternalClients          
 --   Set
	--PlayerID=@PlayerID,Email=@Email,MobilePhone=@MobilePhone,RowStatus=@RowStatus,CreatedDate=getDate(),Name=@Name,SearchCol=@MobilePhone+'|'+@Email+'|'+@Name
	--WHERE ClientAccountNo=@ClientAccountNo  and ProjectAccountNo=@ProjectAccountNo



 --ELSE
 
-- select * from Import_ExternalClients

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
	  @EnterpriseAccNo                  
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
