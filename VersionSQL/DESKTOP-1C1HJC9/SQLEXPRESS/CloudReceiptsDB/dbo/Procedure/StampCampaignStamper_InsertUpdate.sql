/****** Object:  Procedure [dbo].[StampCampaignStamper_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampCampaignStamper_InsertUpdate]
  
      
     



	 @ID as Int ,
	@AccountName as varchar(250) = Null,
	@AccountNo as varchar(250) = Null,
      @StampCampaignCode varchar(250) = Null,
	   @UserType varchar(250) = Null,
      @CreatedBy varchar(250) = Null,
	  @RowStatus varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 


 IF  EXISTS (SELECT AccountNo,StampCampaignCode  FROM StampCampaignStamper WHERE AccountNo=@AccountNo  and StampCampaignCode=@StampCampaignCode)
 
 Update dbo.StampCampaignStamper
          
    Set
      AccountName=@AccountName
	  ,StampCampaignCode=@StampCampaignCode
	  ,UserType=@UserType
	  ,ModifiedBy=@CreatedBy
	  ,ModifiedDate=getDate()
      ,RowStatus=@RowStatus      
	where AccountNo=@AccountNo and StampCampaignCode=@StampCampaignCode
 
 ELSE
 
     INSERT INTO dbo.StampCampaignStamper
          ( 
             [AccountName]
			 ,[AccountNo]
			 ,[StampCampaignCode]
			 ,[UserType] 
			   ,[CreatedBy]
                ,[RowStatus]
          ) 
     VALUES 
          ( 
		 
    @AccountName,
	@AccountNo,
      @StampCampaignCode,
	  @UserType,  
      @CreatedBy, 
	   @RowStatus                     
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
