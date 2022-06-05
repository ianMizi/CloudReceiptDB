/****** Object:  Procedure [dbo].[AdvertisementApprovalStatusLog_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AdvertisementApprovalStatusLog_Insert]
  
      
    
      @AdvertisementID as int,
      @AdvertisementCode as varchar(250) = Null,
      @AdvertisementStatus as varchar(250) = Null,
      @AdvertisementStatusRemarks as varchar(550) = Null,   
      @EnterpriseAccNo as varchar(250) = Null,
	  @EnterpriseHQAccNo as varchar(250) = Null,
      @CreatedBy as varchar(250) = Null
     


AS 
BEGIN 
     SET NOCOUNT ON 
	Declare @AccountName as varchar(250)
	set @AccountName = (select AccountName from AyohaEnterprisesUser where AccountNo=@CreatedBy and RowActive='Active')
	


     INSERT INTO dbo.AdvertisementApprovalStatusLog
          ( 
        [AdvertisementID]
      ,[AdvertisementCode]
      ,[AdvertisementStatus]
      ,[AdvertisementStatusRemarks]
      ,[EnterpriseAccNo]
      ,[EnterpriseHQAccNo]
      ,[CreatedBy]
          ) 
     VALUES 
          ( 
		  @AdvertisementID,
      @AdvertisementCode,
      @AdvertisementStatus,
      @AdvertisementStatusRemarks,
      @EnterpriseAccNo,
      @EnterpriseHQAccNo,
      @CreatedBy                 
          ) 
		
END
