/****** Object:  Procedure [dbo].[LoyaltyCardBackgroundImage_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[LoyaltyCardBackgroundImage_InsertUpdate]
  
      @ID as int,
      @EnterpriseAccNo as varchar(250),
      @StampCampaignCode as varchar(250),
      @ImgName as varchar(250),
      @ImgPath as varchar(250),
      @RowStatus as varchar(250),
      @CreatedBy as varchar(250),
	   @ShowHide as varchar(250)
    
	
AS 
BEGIN 
     SET NOCOUNT ON 


 IF  EXISTS (SELECT ID  FROM LoyaltyCardBackgroundImage WHERE EnterpriseAccNo =@EnterpriseAccNo and StampCampaignCode=@StampCampaignCode and ID=@ID)
 
 Update dbo.LoyaltyCardBackgroundImage
          
    Set
	ImgName = @ImgName
      ,ImgPath = @ImgPath
      ,CreatedBy = @CreatedBy
	  ,RowStatus=@RowStatus 
	  ,CreatedDate=GETDATE()
	  ,ShowHide=@ShowHide	
	where EnterpriseAccNo =@EnterpriseAccNo and StampCampaignCode=@StampCampaignCode and ID=@ID
 
 ELSE
 
     INSERT INTO dbo.LoyaltyCardBackgroundImage
          ( 
         
	[EnterpriseAccNo]
      ,[StampCampaignCode]
      ,[ImgName]
      ,[ImgPath]
      ,[CreatedBy]              
          ) 
     VALUES 
          ( 
    @EnterpriseAccNo,
	 @StampCampaignCode ,
	@ImgName,
	@ImgPath,
	@CreatedBy               
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
