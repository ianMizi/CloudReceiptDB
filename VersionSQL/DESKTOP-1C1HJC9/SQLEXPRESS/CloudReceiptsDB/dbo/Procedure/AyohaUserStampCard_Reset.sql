/****** Object:  Procedure [dbo].[AyohaUserStampCard_Reset]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[AyohaUserStampCard_Reset]  

@SubscriberAccNo varchar(250),
      @StampCampaignCode varchar (250),
	   @EnterpriseAccNo varchar (250)
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 



     update [AyohaUserStampCard]
  set Batch=Batch + 1,StampedStatus='NO'
  where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and SubscriberAccNo=@SubscriberAccNo

	END

	Begin


	
  delete from TemporaryStampQrCode
  where StampCardCode in (select StampCardCode from [AyohaUserStampCard] where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and SubscriberAccNo=@SubscriberAccNo)

	end

	
