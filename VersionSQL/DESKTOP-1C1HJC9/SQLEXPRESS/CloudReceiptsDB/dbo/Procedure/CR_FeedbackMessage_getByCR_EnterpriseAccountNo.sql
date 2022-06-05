/****** Object:  Procedure [dbo].[CR_FeedbackMessage_getByCR_EnterpriseAccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_FeedbackMessage_getByCR_EnterpriseAccountNo]

    
      @CR_EnterpriseAccountNo varchar (550)
	
AS 
BEGIN 
     SET NOCOUNT ON 


select top 5 FM.*,CM.CR_AccountName,CM.CR_Photo from CR_FeedbackMessage FM     inner join CloudReceipts_MobileUser CM on FM.CR_AccountNo=CM.CR_AccountNo and FM.CR_Email=CM.CR_Email  where FM.CR_EnterpriseAccountNo=@CR_EnterpriseAccountNo order by FM.MsgDate desc
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
