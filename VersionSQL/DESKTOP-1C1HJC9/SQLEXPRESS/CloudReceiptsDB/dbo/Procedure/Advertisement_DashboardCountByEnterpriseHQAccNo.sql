/****** Object:  Procedure [dbo].[Advertisement_DashboardCountByEnterpriseHQAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Advertisement_DashboardCountByEnterpriseHQAccNo]
@EnterpriseHQAccNo as varchar(250)

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


  SELECT 
    COUNT(CASE WHEN AdvertisementStatus = 'Submitted' then 1 ELSE NULL END) as "Submitted",
      COUNT(CASE WHEN AdvertisementStatus = 'Approved' then 1 ELSE NULL END) as "Approved",
	      COUNT(CASE WHEN AdvertisementStatus = 'Rejected' then 1 ELSE NULL END) as "Rejected",
		      COUNT(CASE WHEN AdvertisementStatus = 'Published' then 1 ELSE NULL END) as "Published"
from [Advertisement] where RowStatus='Active' and EnterpriseHQAccNo=@EnterpriseHQAccNo

END
