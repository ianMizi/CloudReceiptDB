/****** Object:  Procedure [dbo].[MembershipCardEnterprisesEntitled_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[MembershipCardEnterprisesEntitled_InsertUpdate]
  
      
    


	@ID as int,
	 @EnterpriseAccNo varchar(250) = Null,
	@CampaignCode as varchar(250) = Null,
	@EnterpriseHQAccNo as varchar(250) = Null,
      @MembershipCardCode varchar(250) = Null,    
      @CreatedBy  as varchar(250) = Null,   
      @RowStatus  as varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 
	 --select * from MembershipCardCampaingEntitled

 IF  EXISTS (SELECT CampaignCode,EnterpriseAccNo,MembershipCardCode  FROM MembershipCardEnterprisesEntitled WHERE CampaignCode=@CampaignCode and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active' and MembershipCardCode=@MembershipCardCode)
 
 Update dbo.MembershipCardEnterprisesEntitled
          
    Set
   
	  ModifiedBy=@CreatedBy
	  ,ModifiedDate=getDate()
      ,RowStatus=@RowStatus
	  --,CampaignType=@CampaignType
   
	where CampaignCode=@CampaignCode and EnterpriseAccNo=@EnterpriseAccNo
 
 ELSE
 
     INSERT INTO dbo.MembershipCardEnterprisesEntitled
          ( 
      
       [EnterpriseAccNo]
      ,[CampaignCode]
      ,[EnterpriseHQAccNo]
      ,[MembershipCardCode]
      ,[CreatedBy]
      --,[RowStatus]
	  --,[CampaignType]            
          ) 
     VALUES 
          ( 
		     @EnterpriseAccNo
	, @CampaignCode    
      , @EnterpriseHQAccNo
      , @MembershipCardCode
      , @CreatedBy
      --, @RowStatus
	  --,@CampaignType                               
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END


--select * from MembershipCardEnterprisesEntitled
