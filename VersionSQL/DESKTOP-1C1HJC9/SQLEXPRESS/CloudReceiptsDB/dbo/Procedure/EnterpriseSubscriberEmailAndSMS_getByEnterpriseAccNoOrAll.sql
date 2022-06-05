/****** Object:  Procedure [dbo].[EnterpriseSubscriberEmailAndSMS_getByEnterpriseAccNoOrAll]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[EnterpriseSubscriberEmailAndSMS_getByEnterpriseAccNoOrAll]  
	
	
	@EnterpriseAccNo varchar (150)
	
AS 
BEGIN 
     SET NOCOUNT ON 
  
  --Select * from EnterpriseSubscriberEmailAndSMS where EnterpriseAccNo=@EnterpriseAccNo order by ID Desc
	  
	    Select * from EnterpriseSubscriberEmailAndSMS 

							
	END
   
	

    
