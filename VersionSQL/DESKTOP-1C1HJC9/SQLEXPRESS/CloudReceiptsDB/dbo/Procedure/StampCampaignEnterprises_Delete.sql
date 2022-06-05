/****** Object:  Procedure [dbo].[StampCampaignEnterprises_Delete]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[StampCampaignEnterprises_Delete]
  
	 @ID as Int ,
      @StampCampaignCode varchar(250) = Null,
	  @CreatedBy varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 

	  Update dbo.StampCampaignEnterprises
          
    Set
   
	  ModifiedBy=@CreatedBy
	  ,ModifiedDate=getDate()
      ,RowStatus='InActive'    
	where ID=@ID and StampCampaignCode=@StampCampaignCode

		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
