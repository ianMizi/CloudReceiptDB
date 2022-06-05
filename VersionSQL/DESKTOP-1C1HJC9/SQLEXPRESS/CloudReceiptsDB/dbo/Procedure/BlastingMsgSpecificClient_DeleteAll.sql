/****** Object:  Procedure [dbo].[BlastingMsgSpecificClient_DeleteAll]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[BlastingMsgSpecificClient_DeleteAll]  



      @NotificationCode varchar (150) 
    
    
    
   
	 
AS 
BEGIN 
     SET NOCOUNT ON 
	


	  delete from  BlastingMsgSpecificClient	
	  where NotificationCode=@NotificationCode  


	END
