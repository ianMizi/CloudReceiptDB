/****** Object:  Procedure [dbo].[LoyaltyStamp_InsertLog]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[LoyaltyStamp_InsertLog]
   
	@SubscriberAccNo varchar (250)= null,
	@EnterpriseAccNo varchar (250)= null,
	@StampCode varchar (250)= null,
	@StampQrCode varchar (250)= null,
	@StampedBy varchar (250)= null,
	@StampedByPhoneModel varchar (250)= null,
	@StampedByUserAccNo varchar (250)= null,
	@StampedByPhoneSerialNo varchar (250)= null,
	@StampedByPhoneManufacturer varchar (250)= null,
	@StampedByPhonePlatform varchar (250)= null,
	@StampedByOneSignalID varchar (250)= null,
	@StampedByPhoneRawInfo varchar (550)= null,
	@StampedCampaignCode varchar (550)= null
AS 
BEGIN 
     SET NOCOUNT ON 

 Update AyohaUserStampCard
 set StampedStatus='YES',StampedBy=@StampedByUserAccNo,
 StampedDate=getDate() where StampCardCode=@StampCode




 Declare @Batch as Int
 set @Batch=(Select Top 1 Batch From AyohaUserStampCard where StampCampaignCode=@StampedCampaignCode order by ID desc)

  IF  NOT EXISTS (SELECT SubscriberAccNo,EnterpriseAccNo,StampedCampaignCode,Batch,StampQrCode  FROM LoyaltyStamp WHERE SubscriberAccNo=@SubscriberAccNo and EnterpriseAccNo=@EnterpriseAccNo and StampedCampaignCode=@StampedCampaignCode and Batch=@Batch and StampQrCode=@StampQrCode)

     INSERT INTO dbo.LoyaltyStamp
          ( 
         
	SubscriberAccNo,
	EnterpriseAccNo,
	StampCode,
	StampQrCode,
	StampedBy,
	StampedByPhoneModel,
	StampedByUserAccNo,
	StampedByPhoneSerialNo,
	StampedByPhoneManufacturer,	
	StampedByPhonePlatform,
	StampedByOneSignalID,
	StampedByPhoneRawInfo,
	StampedCampaignCode,
	Batch                
          ) 
     VALUES 
          ( 
  @SubscriberAccNo,
	@EnterpriseAccNo,
	@StampCode,
	@StampQrCode,
	@StampedBy,
	@StampedByPhoneModel,
	@StampedByUserAccNo,
	@StampedByPhoneSerialNo,
	@StampedByPhoneManufacturer,	
	@StampedByPhonePlatform,
	@StampedByOneSignalID,
	@StampedByPhoneRawInfo,
	@StampedCampaignCode,
	@Batch                
          )                
      
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
