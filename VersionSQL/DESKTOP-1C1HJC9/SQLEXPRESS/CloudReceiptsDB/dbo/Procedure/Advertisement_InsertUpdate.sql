/****** Object:  Procedure [dbo].[Advertisement_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Advertisement_InsertUpdate]
  
      
      @ID as int,
      @AdvertisementCode as varchar(250) = Null,
      @AdvertisementTitle as varchar(250) = Null,
      @AdvertisementDesc as varchar(250) = Null,
      --@AdvertisementImg as varchar(250) = Null,
      --@AdvertisementImgName as varchar(250) = Null,
      @AdvertisementStartDate as varchar(250) = Null,
      @AdvertisementEndDate as varchar(250) = Null,
      @AdvertisementType as varchar(250) = Null,
      @AdvertisementStatus as varchar(250) = Null,
      @AdvertisementNote as varchar(250) = Null,
      @EnterpriseAccNo as varchar(250) = Null,
	  @EnterpriseHQAccNo as varchar(250) = Null,
      @CreatedBy as varchar(250) = Null,
      @ModifiedRemarks as varchar(250) = Null,
	  @RowStatus as varchar(250) = Null,
	  @AdvertisementPeriod as int = Null,
	   @AdvertisementFees as decimal(18,2) = Null,
	    @AdvertisementMedia as varchar(250) = Null
	   


AS 
BEGIN 
     SET NOCOUNT ON 
	Declare @AccountName as varchar(250)
	set @AccountName = (select AccountName from AyohaEnterprisesUser where AccountNo=@CreatedBy and RowActive='Active')
	
 IF  EXISTS (SELECT ID,EnterpriseAccNo,EnterpriseHQAccNo,AdvertisementCode FROM Advertisement WHERE EnterpriseAccNo=@EnterpriseAccNo and ID=@ID and EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode and RowStatus='Active')
 
 Update dbo.Advertisement
          
    Set
    AdvertisementCode= @AdvertisementCode,
     AdvertisementTitle= @AdvertisementTitle,
      AdvertisementDesc=@AdvertisementDesc,
      --AdvertisementImg=@AdvertisementImg,
      --AdvertisementImgName=@AdvertisementImgName,
      AdvertisementStartDate=@AdvertisementStartDate,
      AdvertisementEndDate=@AdvertisementEndDate,
      AdvertisementType=@AdvertisementType,
      AdvertisementStatus=@AdvertisementStatus,
      AdvertisementNote=@AdvertisementNote,
      EnterpriseAccNo=@EnterpriseAccNo,
	  EnterpriseHQAccNo=@EnterpriseHQAccNo,
      ModifiedBy=@AccountName,
      ModifiedDate=getDate(),
      ModifiedRemarks=@ModifiedRemarks,	 
	   RowStatus=@RowStatus,
	    AdvertisementPeriod=@AdvertisementPeriod,
		 AdvertisementFees=@AdvertisementFees,
		 AdvertisementMedia=@AdvertisementMedia  
	where EnterpriseAccNo=@EnterpriseAccNo and ID=@ID and EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode
 
 ELSE
 

     INSERT INTO dbo.Advertisement
          ( 
        [AdvertisementCode]
      ,[AdvertisementTitle]
      ,[AdvertisementDesc]
      --,[AdvertisementImg]
      --,[AdvertisementImgName]
      ,[AdvertisementStartDate]
      ,[AdvertisementEndDate]
      ,[AdvertisementType]
      ,[AdvertisementStatus]
      ,[AdvertisementNote]
      ,[EnterpriseAccNo]
      ,[EnterpriseHQAccNo]
      ,[CreatedBy]
      ,[ModifiedRemarks]
      ,[RowStatus]  
	  ,[AdvertisementPeriod]
	  ,AdvertisementFees
	  ,AdvertisementMedia
          ) 
     VALUES 
          ( 
		  @AdvertisementCode,
      @AdvertisementTitle,
      @AdvertisementDesc,
      --@AdvertisementImg,
      --@AdvertisementImgName,
      @AdvertisementStartDate,
      @AdvertisementEndDate,
      @AdvertisementType,
      @AdvertisementStatus,
      @AdvertisementNote,
      @EnterpriseAccNo,
      @EnterpriseHQAccNo,
      @AccountName,
      @ModifiedRemarks,
      @RowStatus,
	  @AdvertisementPeriod,
	  @AdvertisementFees,
	  @AdvertisementMedia                     
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;

   EXEC [AdvertisementApprovalStatusLog_Insert]  @AdvertisementID = @ID, @AdvertisementCode = @AdvertisementCode, @AdvertisementStatus = @AdvertisementStatus, @AdvertisementStatusRemarks = @ModifiedRemarks , @EnterpriseAccNo = @EnterpriseAccNo, @EnterpriseHQAccNo = @EnterpriseHQAccNo, @CreatedBy = @AccountName
END
