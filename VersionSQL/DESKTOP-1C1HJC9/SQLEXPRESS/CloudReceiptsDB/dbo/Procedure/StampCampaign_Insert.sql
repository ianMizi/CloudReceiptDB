/****** Object:  Procedure [dbo].[StampCampaign_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampCampaign_Insert]
  


	   @StampCampaignName varchar (250)= null
      ,@StampCardType varchar (250)= null
      ,@StartDate varchar (250)= null
      ,@EndDate varchar (250)= null
      ,@EnterpriseAccNo varchar (250)= null
      ,@CreatedByAccNo varchar (250)= null
      ,@CreatedBy varchar (250)= null
      ,@StampCardBackground varchar (250)= null
	
	
AS 
BEGIN 
     SET NOCOUNT ON 
Declare @StampCampaignCode varchar(250)
	   DECLARE @Random varchar(150);
DECLARE @Upper INT;
DECLARE @Lower INT 
------ This will create a random number between 1 and 999
SET @Lower = 1 ---- The lowest random number
SET @Upper = 99999 ---- The highest random number
SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
set @StampCampaignCode=@Random+'-'+@EnterpriseAccNo+'-'+@CreatedByAccNo+'-'+@StampCardType

  

	   INSERT INTO dbo.StampCampaign
          ( 
        [StampCampaignCode],
       [StampCampaignName],
      [StampCardType],
      [StartDate],
      [EndDate],
      [EnterpriseAccNo],
      [CreatedByAccNo],
      [CreatedBy],     
      [StampCardBackground]


		          ) 
     VALUES 
          ( 
@StampCampaignCode
       ,@StampCampaignName
      ,@StampCardType
      ,@StartDate
      ,@EndDate
      ,@EnterpriseAccNo
      ,@CreatedByAccNo
      ,@CreatedBy
      ,@StampCardBackground
	 )
END

Begin


EXEC [StampCard_Insert] @StampCampaignCode ,@StampCardType ,@EnterpriseAccNo ,@CreatedByAccNo ,@CreatedBy;

End
