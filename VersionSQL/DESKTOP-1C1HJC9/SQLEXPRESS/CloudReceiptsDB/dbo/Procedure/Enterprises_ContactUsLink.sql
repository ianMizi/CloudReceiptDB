/****** Object:  Procedure [dbo].[Enterprises_ContactUsLink]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Enterprises_ContactUsLink]
@EnterpriseHQAccNo varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

      select 
	  [EnterpriseFacebook]
      ,[EnterpriseTwiter]
      ,[EnterpriseInstagram]
      ,[EnterpriseCoordinate]
	  ,[EnterpriseEmail]
      ,[EnterpriseWebsite]
	  ,[EnterprisePhoneNo]
	  ,[PICContactNo]
	  ,[PersonInCharge]
	   from Enterprises  Where EnterpriseHQAccNo=@EnterpriseHQAccNo and RowStatus='Active'
    
END
