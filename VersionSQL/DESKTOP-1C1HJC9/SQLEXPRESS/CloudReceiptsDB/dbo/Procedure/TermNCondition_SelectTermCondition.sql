/****** Object:  Procedure [dbo].[TermNCondition_SelectTermCondition]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[TermNCondition_SelectTermCondition]  


@ID int

      , @EnterpriseAcc varchar (150)=null
AS 
BEGIN 
     SET NOCOUNT ON 
     
	 select * from [dbo].[TermNCondition]
	  where ID =@ID and [EnterpriseAcc]=@EnterpriseAcc

	END
