/****** Object:  Procedure [dbo].[LoyaltyStamp_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[LoyaltyStamp_Insert]
  
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
	@StampedByPhoneRawInfo varchar (550)= null
AS 
BEGIN 
     SET NOCOUNT ON 


 IF  EXISTS (SELECT SubscriberAccNo,EnterpriseAccNo,StampCode  FROM LoyaltyStamp WHERE SubscriberAccNo=@SubscriberAccNo  and EnterpriseAccNo=@EnterpriseAccNo and StampCode=@StampCode)
 
 Update dbo.LoyaltyStamp
          
    Set
	SubscriberAccNo=@SubscriberAccNo,
	EnterpriseAccNo=@EnterpriseAccNo,
	StampCode=@StampCode,
	StampQrCode=@StampQrCode,
	StampedBy=@StampedBy,
	StampedByPhoneModel=@StampedByPhoneModel,
	StampedByUserAccNo=@StampedByUserAccNo,
	StampedByPhoneSerialNo=@StampedByPhoneSerialNo,
	StampedByPhoneManufacturer=@StampedByPhoneManufacturer,	
	StampedByPhonePlatform=@StampedByPhonePlatform,
	StampedByOneSignalID=@StampedByOneSignalID,
	StampedByPhoneRawInfo=@StampedByPhoneRawInfo 
	WHERE SubscriberAccNo=@SubscriberAccNo  and EnterpriseAccNo=@EnterpriseAccNo and StampCode=@StampCode
 
 ELSE
 
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
	StampedByPhoneRawInfo                
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
	@StampedByPhoneRawInfo                
          )                
      
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
