/****** Object:  Procedure [dbo].[SMSLog_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[SMSLog_Insert]  



 @SMSSentStatus varchar (350)=null
	 
AS 
BEGIN 
     SET NOCOUNT ON 


     
 
 
	   INSERT INTO dbo.SMSLog
          ( 
               [SMSSentStatus]
		          ) 
     VALUES 
          ( 

 @SMSSentStatus
	  )


	END
