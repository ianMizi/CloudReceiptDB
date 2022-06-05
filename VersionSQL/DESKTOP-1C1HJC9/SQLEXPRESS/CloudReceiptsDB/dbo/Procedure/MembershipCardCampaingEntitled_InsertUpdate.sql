/****** Object:  Procedure [dbo].[MembershipCardCampaingEntitled_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[MembershipCardCampaingEntitled_InsertUpdate]
  
      
     



	@ID as int,
	 @CampaignCode varchar(250) = Null,
	@EnterpriseHQAccNo as varchar(250) = Null,
	@EnterpriseAccNo as varchar(250) = Null,
      @MembershipCardCode varchar(250) = Null,    
      @CreatedBy  as varchar(250) = Null,   
      @RowStatus  as varchar(250) = Null,
	  @CampaignType as varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 
	 --select * from MembershipCardCampaingEntitled

 IF  EXISTS (SELECT CampaignCode,EnterpriseAccNo,MembershipCardCode  FROM MembershipCardCampaingEntitled WHERE CampaignCode=@CampaignCode and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active' and MembershipCardCode=@MembershipCardCode)
 
 Update dbo.MembershipCardCampaingEntitled
          
    Set
   
	  ModifiedBy=@CreatedBy
	  ,ModifiedDate=getDate()
      ,RowStatus=@RowStatus
	  ,CampaignType=@CampaignType
   
	where CampaignCode=@CampaignCode and ID=@ID and EnterpriseAccNo=@EnterpriseAccNo
 
 ELSE
 
     INSERT INTO dbo.MembershipCardCampaingEntitled
          ( 
      
       [CampaignCode]
      ,[EnterpriseAccNo]
      ,[EnterpriseHQAccNo]
      ,[MembershipCardCode]
      ,[CreatedBy]
      --,[RowStatus]
	  ,[CampaignType]            
          ) 
     VALUES 
          ( 
	 @CampaignCode
      , @EnterpriseAccNo
      , @EnterpriseHQAccNo
      , @MembershipCardCode
      , @CreatedBy
      --, @RowStatus
	  ,@CampaignType                               
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
--SELECT * FROM MembershipCardCampaingEntitled
