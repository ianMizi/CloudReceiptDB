/****** Object:  Procedure [dbo].[AyohaUserStampCard_LoadBy_StampCardCode]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaUserStampCard_LoadBy_StampCardCode]  


      @TempStampQRCode varchar (250)
	   
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 

   Declare @StampCardCode as varchar(500)
   set @StampCardCode=(select StampCardCode from [TemporaryStampQrCode] where TempStampQRCode=@TempStampQRCode)
   select ID,StampCardCode,StampCampaignCode,EnterpriseAccNo,SubscriberAccNo from AyohaUserStampCard where StampCardCode=@StampCardCode

	END
