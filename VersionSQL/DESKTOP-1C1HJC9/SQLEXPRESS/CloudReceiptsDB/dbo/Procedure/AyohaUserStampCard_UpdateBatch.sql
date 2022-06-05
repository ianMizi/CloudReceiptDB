/****** Object:  Procedure [dbo].[AyohaUserStampCard_UpdateBatch]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaUserStampCard_UpdateBatch]  


      @StampCampaignCode varchar (250),
	   @EnterpriseAccNo varchar (250)
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 


   update AyohaUserStampCard
   set Batch = Batch + 1,StampedStatus='NO'
   where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo

	END

	
