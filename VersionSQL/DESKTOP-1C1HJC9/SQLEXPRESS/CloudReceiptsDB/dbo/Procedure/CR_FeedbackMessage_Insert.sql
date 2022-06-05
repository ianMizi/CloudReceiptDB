/****** Object:  Procedure [dbo].[CR_FeedbackMessage_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[CR_FeedbackMessage_Insert]
  @ID int
     ,@CR_AccountNo varchar (550)
      ,@CR_Email varchar (550)
      ,@FeedbackMsg varchar (5050)
     
      ,@ServiceRate int
      ,@RowStatus varchar (550)
    
      ,@CR_EnterpriseAccountNo varchar (550)
	
AS 
BEGIN 
     SET NOCOUNT ON 


 IF   EXISTS (SELECT ID  FROM CR_FeedbackMessage WHERE ID=@ID  and 1=1)
 
 Update dbo.CR_FeedbackMessage
          
    Set
	CR_AccountNo=@CR_AccountNo,
	CR_Email=@CR_Email,
	FeedbackMsg=@FeedbackMsg,
	MsgDate=getDate(),
	ServiceRate=@ServiceRate,
	RowStatus=@RowStatus,
	CR_EnterpriseAccountNo=@CR_EnterpriseAccountNo

	where ID =@ID and 1=1
 
 ELSE
 
     INSERT INTO dbo.CR_FeedbackMessage
          ( 
         
	CR_AccountNo,
	 CR_Email ,
	FeedbackMsg,
	ServiceRate,
	RowStatus,
	CR_EnterpriseAccountNo         
          ) 
     VALUES 
          ( 
   @CR_AccountNo,
	 @CR_Email ,
	@FeedbackMsg,
	@ServiceRate,
	@RowStatus,
	@CR_EnterpriseAccountNo                    
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
