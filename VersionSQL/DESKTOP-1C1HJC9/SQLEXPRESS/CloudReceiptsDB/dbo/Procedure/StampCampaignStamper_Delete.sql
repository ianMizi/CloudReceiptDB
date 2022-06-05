/****** Object:  Procedure [dbo].[StampCampaignStamper_Delete]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[StampCampaignStamper_Delete]
  
      
     



	 @ID as Int ,
      @StampCampaignCode varchar(250) = Null,	 
      @CreatedBy varchar(250) = Null
	
AS 
BEGIN 
     SET NOCOUNT ON 


	  Update dbo.StampCampaignStamper
          
    Set
     
	
	  ModifiedBy=@CreatedBy
	  ,ModifiedDate=getDate()
      ,RowStatus='InActive'     
	where ID=@ID and StampCampaignCode=@StampCampaignCode

 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
