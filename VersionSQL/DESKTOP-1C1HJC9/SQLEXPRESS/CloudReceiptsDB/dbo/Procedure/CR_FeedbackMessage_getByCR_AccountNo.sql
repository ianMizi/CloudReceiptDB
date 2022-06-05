/****** Object:  Procedure [dbo].[CR_FeedbackMessage_getByCR_AccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[CR_FeedbackMessage_getByCR_AccountNo]

    
      @CR_AccountNo varchar (550)
	
AS 
BEGIN 
     SET NOCOUNT ON 


select  * from CR_FeedbackMessage where CR_AccountNo=@CR_AccountNo order by MsgDate desc
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
