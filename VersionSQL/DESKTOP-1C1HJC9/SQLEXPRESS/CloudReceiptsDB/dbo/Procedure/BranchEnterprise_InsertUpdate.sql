/****** Object:  Procedure [dbo].[BranchEnterprise_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[BranchEnterprise_InsertUpdate]
  
      
     



	@ID as int
	,@EnterpriseAccNo as varchar(250)
      ,@BranchEnterpriseAccNo as varchar(250)
      ,@EnterpriseName varchar(250)
      ,@EnterpriseAddress varchar(250)
      ,@EnterprisePhoneNo as varchar(250)
      ,@EnterpriseRegistrationNo  as varchar(250)
      ,@EnterpriseEmail  as varchar(250)
      ,@EnterpriseWebsite  as varchar(250)
      ,@EnterpriseDescriptions  as varchar(250)
      ,@EnterpriseFacebook  as varchar(250)
      ,@EnterpriseTwiter  as varchar(250)
      ,@EnterpriseInstagram  as varchar(250)
      ,@EnterpriseCoordinate  as varchar(250)
      ,@EnterpriseLogoPath  as varchar(250)
      ,@RowStatus  as varchar(250)    
      ,@CreatedBy  as varchar(250) 
      ,@isFeedBackFormEnabled  as varchar(250)
      ,@PICContactNo  as varchar(250)
      ,@PersonInCharge  as varchar(250)
      ,@LoyaltyCardType  as varchar(250)
	
AS 
BEGIN 
     SET NOCOUNT ON 


 IF  EXISTS (SELECT ID,BranchEnterpriseAccNo  FROM BranchEnterprise WHERE BranchEnterpriseAccNo=@BranchEnterpriseAccNo and ID=@ID)
 
 Update dbo.BranchEnterprise
          
    Set
      EnterpriseName = @EnterpriseName
      ,EnterpriseAddress =@EnterpriseAddress
      ,EnterprisePhoneNo =@EnterprisePhoneNo
      ,EnterpriseRegistrationNo=@EnterpriseRegistrationNo
      ,EnterpriseEmail=@EnterpriseEmail
      ,EnterpriseWebsite=@EnterpriseWebsite
      ,EnterpriseDescriptions=@EnterpriseDescriptions
      ,EnterpriseFacebook=@EnterpriseFacebook
      ,EnterpriseTwiter=@EnterpriseTwiter
      ,EnterpriseInstagram=@EnterpriseInstagram
      ,EnterpriseCoordinate=@EnterpriseCoordinate
      ,EnterpriseLogoPath=@EnterpriseLogoPath
	  ,ModifiedBy=@CreatedBy
	  ,ModifiedDate=getDate()
      ,RowStatus=@RowStatus 
      ,isFeedBackFormEnabled=@isFeedBackFormEnabled
      ,PICContactNo=@PICContactNo
      ,PersonInCharge=@PersonInCharge
      ,LoyaltyCardType=@LoyaltyCardType
	where BranchEnterpriseAccNo=@BranchEnterpriseAccNo and ID=@ID
 
 ELSE
 
     INSERT INTO dbo.BranchEnterprise
          ( 
         
	   [EnterpriseAccNo]
      ,[BranchEnterpriseAccNo]
      ,[EnterpriseName]
      ,[EnterpriseAddress]
      ,[EnterprisePhoneNo]
      ,[EnterpriseRegistrationNo]
      ,[EnterpriseEmail]
      ,[EnterpriseWebsite]
      ,[EnterpriseDescriptions]
      ,[EnterpriseFacebook]
      ,[EnterpriseTwiter]
      ,[EnterpriseInstagram]
      ,[EnterpriseCoordinate]
      ,[EnterpriseLogoPath]
      ,[RowStatus]      
      ,[CreatedBy]    
      ,[isFeedBackFormEnabled]
      ,[PICContactNo]
      ,[PersonInCharge]
      ,[LoyaltyCardType]          
          ) 
     VALUES 
          ( 
    @EnterpriseAccNo,
      @BranchEnterpriseAccNo,
      @EnterpriseName,
      @EnterpriseAddress,
      @EnterprisePhoneNo,
      @EnterpriseRegistrationNo,
      @EnterpriseEmail,
      @EnterpriseWebsite,
      @EnterpriseDescriptions,
      @EnterpriseFacebook,
      @EnterpriseTwiter,
      @EnterpriseInstagram,
      @EnterpriseCoordinate,
      @EnterpriseLogoPath,
      @RowStatus,      
      @CreatedBy,    
      @isFeedBackFormEnabled,
      @PICContactNo,
      @PersonInCharge,
      @LoyaltyCardType                       
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
