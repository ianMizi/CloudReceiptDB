/****** Object:  Procedure [dbo].[Advertisement_Delete]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Advertisement_Delete]
  
	 @ID as Int ,
      @AdvertisementCode varchar(250) = Null,
	  @CreatedBy varchar(250) = Null,
	  @EnterpriseHQAccNo varchar(250) = Null,
	  @EnterpriseAccNo varchar(250) = Null,
	  @ModifiedRemarks varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 
	 Declare @AccountName as varchar(250)
	set @AccountName = (select AccountName from AyohaEnterprisesUser where AccountNo=@CreatedBy and RowActive='Active')
	  Update dbo.Advertisement
          
    Set
   
	  ModifiedBy=@AccountName
	  ,ModifiedDate=getDate()
      ,RowStatus='InActive'    
	where ID=@ID and AdvertisementCode=@AdvertisementCode and EnterpriseHQAccNo=@EnterpriseHQAccNo

	  EXEC [AdvertisementApprovalStatusLog_Insert]  @AdvertisementID = @ID, @AdvertisementCode = @AdvertisementCode, @AdvertisementStatus = 'Delete', @AdvertisementStatusRemarks = @ModifiedRemarks , @EnterpriseAccNo = @EnterpriseAccNo, @EnterpriseHQAccNo = @EnterpriseHQAccNo, @CreatedBy = @AccountName
END
