/****** Object:  Procedure [dbo].[StampCampaign_LoadByStampCampaignCode]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[StampCampaign_LoadByStampCampaignCode]  



      @StampCampaignCode varchar (150) 
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 


	Select * from [dbo].[StampCampaign] where StampCampaignCode=@StampCampaignCode and RowStatus='Active'

	END
