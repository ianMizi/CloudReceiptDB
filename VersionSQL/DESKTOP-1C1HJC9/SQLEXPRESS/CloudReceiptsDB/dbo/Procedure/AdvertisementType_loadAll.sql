/****** Object:  Procedure [dbo].[AdvertisementType_loadAll]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AdvertisementType_loadAll]


AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT *
  FROM [AdvertisementType] where  RowStatus='Active'

END


--update Advertisement
--set ModifiedDate=getDate()
