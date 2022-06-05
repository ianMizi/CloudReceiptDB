/****** Object:  Procedure [dbo].[Enterprises_GetEnterprisesHQAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Enterprises_GetEnterprisesHQAccNo]


@EnterpriseAccNo as varchar(250)

AS

BEGIN
	
	Select top 1 EnterpriseHQAccNo from Enterprises where EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active'
END
