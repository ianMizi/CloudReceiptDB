/****** Object:  Procedure [dbo].[StampCampaign_LoadByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampCampaign_LoadByEnterpriseAccNo]  



      @EnterpriseAccNo varchar (250) 
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 


	Select * from [dbo].[StampCampaign] where EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active'

	END
