/****** Object:  Procedure [dbo].[Advertisement_load_Standard]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Advertisement_load_Standard]


AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

;WITH DistinctMails AS
(
    SELECT AdvertismentMediaUrl,AdvertismentMediaNote,MediaType,MediaFileName,AdvertisementTitle,AdvertisementCode,EnterpriseName,EnterpriseLogoPath,
        ROW_NUMBER() OVER(PARTITION BY AdvertisementCode ORDER BY ID) AS 'RowNum'
    FROM Standard_Advertisment 
)
SELECT *
FROM DistinctMails
WHERE RowNum = 1


END
