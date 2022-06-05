/****** Object:  Procedure [dbo].[Enterprise_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Enterprise_Insert]
  
    @CR_BusinessSuiteIDuserID int,
	@EnterpriseAccNo varchar (250)= null,
	@EnterpriseName varchar (250)= null,
	@EnterpriseAddress varchar (250)= null,
	@EnterpriseRegistrationNo varchar (250)= null,
	@EnterpriseGSTNo varchar (250)= null,
	@EnterpriseEmail varchar (250)= null,
	@EnterpriseWebsite varchar (250)= null,
	@EnterprisePhoneNo varchar (250)= null,
	@EnterpriseFaxNo varchar (250)= null,
	@EnterpriseLogo64 varchar (max)= null,
	@CreatedBy varchar (250)= null,
	@EnterpriseDescriptions varchar (550)= null,
	@EnterpriseFacebook varchar (250)= null,
	@EnterpriseTwiter varchar (250)= null,
	@EnterpriseInstagram varchar (250)= null,
	@isFeedBackFormEnabled varchar (50)= null,
	@ReceiptAdvertisementImg varchar (MAX)= null,
	@ReceiptTemplateCode varchar (50)= null
	
AS 
BEGIN 
     SET NOCOUNT ON 


 IF  EXISTS (SELECT EnterpriseAccNo  FROM Enterprise WHERE EnterpriseAccNo=@EnterpriseAccNo  and 1=1)
 
 Update dbo.Enterprise
          
    Set
	EnterpriseName=@EnterpriseName,
	EnterpriseAddress=@EnterpriseAddress,
	EnterpriseRegistrationNo=@EnterpriseRegistrationNo,
	EnterpriseGSTNo=@EnterpriseGSTNo,
	EnterpriseEmail=@EnterpriseEmail,
	EnterpriseWebsite=@EnterpriseWebsite,
	EnterprisePhoneNo=@EnterprisePhoneNo,
	EnterpriseFaxNo=@EnterpriseFaxNo,
	EnterpriseLogo64=@EnterpriseLogo64,	
	EnterpriseDescriptions=@EnterpriseDescriptions,
	ModifiedDate=GETDATE(),
	ModifiedBy=@CreatedBy,
	EnterpriseFacebook=@EnterpriseFacebook ,
	EnterpriseTwiter=@EnterpriseTwiter,
	EnterpriseInstagram=@EnterpriseInstagram,
	isFeedBackFormEnabled=@isFeedBackFormEnabled,
	ReceiptAdvertisementImg=@ReceiptAdvertisementImg, 
	ReceiptTemplateCode=@ReceiptTemplateCode
	where EnterpriseAccNo =@EnterpriseAccNo and 1=1
 
 ELSE
 
     INSERT INTO dbo.Enterprise
          ( 
         
	EnterpriseAccNo,
	 EnterpriseName ,
	EnterpriseAddress,
	EnterpriseRegistrationNo,
	EnterpriseGSTNo,
	EnterpriseEmail,
	EnterpriseWebsite,
	EnterprisePhoneNo,
	EnterpriseFaxNo,
	EnterpriseLogo64,
     EnterpriseDescriptions,
	  CreatedBy ,
	  EnterpriseFacebook,
	EnterpriseTwiter,
	EnterpriseInstagram,
	isFeedBackFormEnabled,
	ReceiptAdvertisementImg,
	ReceiptTemplateCode                 
          ) 
     VALUES 
          ( 
    @EnterpriseAccNo,
	 @EnterpriseName ,
	@EnterpriseAddress,
	@EnterpriseRegistrationNo,
	@EnterpriseGSTNo,
	@EnterpriseEmail,
	@EnterpriseWebsite,
	@EnterprisePhoneNo,
	@EnterpriseFaxNo,
	@EnterpriseLogo64,
     @EnterpriseDescriptions,
	  @CreatedBy ,
	  @EnterpriseFacebook,
	  @EnterpriseTwiter,  
     @EnterpriseInstagram,
        @isFeedBackFormEnabled,  
		@ReceiptAdvertisementImg,
		@ReceiptTemplateCode                    
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
