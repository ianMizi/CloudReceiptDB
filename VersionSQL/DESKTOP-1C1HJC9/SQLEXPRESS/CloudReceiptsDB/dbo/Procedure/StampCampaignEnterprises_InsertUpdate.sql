/****** Object:  Procedure [dbo].[StampCampaignEnterprises_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampCampaignEnterprises_InsertUpdate]
  
      
     



	 @ID as Int ,
	@EnterpriseAccNo as varchar(250) = Null,
      @StampCampaignCode varchar(250) = Null,
      @CreatedBy varchar(250) = Null,
	  @RowStatus varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 
	 Declare @EnterpriseHQAccNo as varchar(250)
	 set @EnterpriseHQAccNo =(select EnterpriseHQAccNo from Enterprises where EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active')
 IF  EXISTS (SELECT EnterpriseHQAccNo,EnterpriseAccNo,StampCampaignCode  FROM StampCampaignEnterprises WHERE  EnterpriseHQAccNo=@EnterpriseHQAccNo and EnterpriseAccNo=@EnterpriseAccNo  and StampCampaignCode=@StampCampaignCode)
 
 Update dbo.StampCampaignEnterprises
          
    Set
      EnterpriseAccNo=@EnterpriseAccNo
	  ,StampCampaignCode=@StampCampaignCode
	  ,ModifiedBy=@CreatedBy
	  ,ModifiedDate=getDate()
      ,RowStatus=@RowStatus      
	where EnterpriseAccNo=@EnterpriseAccNo and StampCampaignCode=@StampCampaignCode
 
 ELSE
 
     INSERT INTO dbo.StampCampaignEnterprises
          ( 
             [EnterpriseAccNo]
			 ,[StampCampaignCode] 
			   ,[CreatedBy]
                ,[RowStatus]
				,[EnterpriseHQAccNo]
          ) 
     VALUES 
          ( 
		 
    @EnterpriseAccNo,
      @StampCampaignCode,  
      @CreatedBy, 
	   @RowStatus,
	   @EnterpriseHQAccNo                     
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
