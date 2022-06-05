/****** Object:  Procedure [dbo].[EnterpriseSubscriberEmailAndSMS_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[EnterpriseSubscriberEmailAndSMS_InsertUpdate]  
	
	@ID int=null,
	@SubcriberAccNo varchar (250)= null,	
	@EnterpriseAccNo varchar (150),
	@Name varchar (250),
	@PhoneNo varchar (250),
	@Emails  varchar (250),
	@CreatedBy  varchar (250)
AS 
BEGIN 
     SET NOCOUNT ON 
  

     Declare  @PARAM VARCHAR(500)
Set @PARAM=@Name+'|'+@PhoneNo+'|'+@Emails
      IF Not EXISTS (SELECT ID FROM EnterpriseSubscriberEmailAndSMS WHERE  ID=@ID)

	   INSERT INTO dbo.EnterpriseSubscriberEmailAndSMS
          ( 
           SubcriberAccNo,	
	   	 EnterpriseAccNo ,
	Name ,
	
	 PhoneNo ,
	 Emails ,

	 CreatedBy ,
	 SearchCol 

		  
          ) 
     VALUES 
          ( 
   @SubcriberAccNo,	
	   	 @EnterpriseAccNo ,
	 @Name ,
	
	 @PhoneNo ,
	 @Emails ,

	 @CreatedBy ,
	 @PARAM 
	
          ) 


  ELSE


  

      Update dbo.EnterpriseSubscriberEmailAndSMS
     set
	 Name=@Name,
	   	 PhoneNo =@PhoneNo,
	 Emails =@Emails,
	
	 Modifiedby=@CreatedBy ,
	 SearchCol =@PARAM
	
	where 
	 ID=@ID

	
	  


							
	END
   
	

    
