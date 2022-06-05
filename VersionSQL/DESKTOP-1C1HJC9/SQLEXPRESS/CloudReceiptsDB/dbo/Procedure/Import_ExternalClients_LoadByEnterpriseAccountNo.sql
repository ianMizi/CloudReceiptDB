/****** Object:  Procedure [dbo].[Import_ExternalClients_LoadByEnterpriseAccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Import_ExternalClients_LoadByEnterpriseAccountNo]
 



      @EnterpriseAccountNo varchar (250)= null
     
	
AS 
BEGIN 
     SET NOCOUNT ON 

 
  select
       ROW_NUMBER() over (order by ID desc) AS No
	   ,[ID]  
	,[ProjectName]
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
	  from Import_ExternalClients
	  where ProjectAccountNo=@EnterpriseAccountNo  and RowStatus='Active'          
       
END
