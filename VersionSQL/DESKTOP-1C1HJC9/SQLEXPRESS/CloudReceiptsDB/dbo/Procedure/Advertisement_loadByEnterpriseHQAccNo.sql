/****** Object:  Procedure [dbo].[Advertisement_loadByEnterpriseHQAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Advertisement_loadByEnterpriseHQAccNo]
@EnterpriseHQAccNo as varchar(250)

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT *
  FROM [Advertisement] where EnterpriseHQAccNo =@EnterpriseHQAccNo and RowStatus='Active' order by CreatedDate desc

END
