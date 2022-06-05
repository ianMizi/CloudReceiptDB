/****** Object:  Procedure [dbo].[Advertisement_loadByApprovedAdvertisementStartDateEndDate]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Advertisement_loadByApprovedAdvertisementStartDateEndDate]
     @ApprovedAdvertisementStartDate as varchar(250) = Null,
	   @ApprovedAdvertisementEndDate as varchar(250) = Null

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	--IF @dateto IS NULL SET @dateto = @datefrom;

Select * from [Advertisement] as o
where o.ApprovedAdvertisementStartDate >= @ApprovedAdvertisementStartDate
  and o.ApprovedAdvertisementEndDate < DATEADD(DAY, 1, @ApprovedAdvertisementEndDate) and RowStatus='Active'

--SELECT *
--  FROM [Advertisement] where  ApprovedAdvertisementStartDate  BETWEEN DATE @ApprovedAdvertisementStartDate   and DATE @ApprovedAdvertisementEndDate and RowStatus='Active'

  
END
