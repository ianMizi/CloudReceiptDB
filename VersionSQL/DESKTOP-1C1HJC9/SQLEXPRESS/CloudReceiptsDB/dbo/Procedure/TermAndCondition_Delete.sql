/****** Object:  Procedure [dbo].[TermAndCondition_Delete]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[TermAndCondition_Delete]  

@ID int
 ,@EnterpriseAccNo varchar (150)=null
     
	 
AS 
BEGIN 
     SET NOCOUNT ON 
delete from TermNCondition where ID=@ID and EnterpriseAcc=@EnterpriseAccNo
	END
