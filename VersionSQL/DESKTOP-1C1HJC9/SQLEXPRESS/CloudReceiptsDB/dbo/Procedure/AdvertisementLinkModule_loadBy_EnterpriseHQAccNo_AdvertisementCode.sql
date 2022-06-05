/****** Object:  Procedure [dbo].[AdvertisementLinkModule_loadBy_EnterpriseHQAccNo_AdvertisementCode]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AdvertisementLinkModule_loadBy_EnterpriseHQAccNo_AdvertisementCode]
@EnterpriseHQAccNo as varchar(250),
@AdvertisementCode as varchar(250)

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT *
  FROM [AdvertisementLinkModule] where EnterpriseHQAccNo =@EnterpriseHQAccNo and RowStatus='Active' and AdvertisementCode=@AdvertisementCode

END
