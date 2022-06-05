/****** Object:  Procedure [dbo].[AdvertisementLinkModule_loadBy_EnterpriseHQAccNo_ModuleCode]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AdvertisementLinkModule_loadBy_EnterpriseHQAccNo_ModuleCode]
@EnterpriseHQAccNo as varchar(250),
@ModuleCode int

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT *
  FROM [AdvertisementLinkModule] where EnterpriseHQAccNo =@EnterpriseHQAccNo and RowStatus='Active' and ModuleCode=@ModuleCode

END
