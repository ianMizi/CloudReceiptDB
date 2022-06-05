/****** Object:  Procedure [dbo].[TermNCondition_LoadTermConditionTemplateList]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[TermNCondition_LoadTermConditionTemplateList]  




     @EnterpriseAcc varchar (150)=null
AS 
BEGIN 
     SET NOCOUNT ON 
     
	 select  ROW_NUMBER() over (order by ID ASC) AS No,ID,Term_N_Condition,Jenis,EnterpriseAcc,RowStatus,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate from [dbo].[TermNCondition]
	  where  [EnterpriseAcc]=@EnterpriseAcc and RowStatus='Active'

	END

	
