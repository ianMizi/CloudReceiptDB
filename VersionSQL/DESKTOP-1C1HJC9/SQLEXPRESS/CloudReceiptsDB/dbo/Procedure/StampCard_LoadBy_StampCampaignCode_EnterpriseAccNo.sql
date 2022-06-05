/****** Object:  Procedure [dbo].[StampCard_LoadBy_StampCampaignCode_EnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[StampCard_LoadBy_StampCampaignCode_EnterpriseAccNo]  


@EnterpriseAccNo varchar (150),
      @StampCampaignCode varchar (150) 
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 


	Select * from [dbo].[StampCard] where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active'

	END
