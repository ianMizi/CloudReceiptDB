/****** Object:  Procedure [dbo].[Enterprises_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Enterprises_InsertUpdate]
  
      
     



	@ID as int,
	@EnterpriseHQAccNo as varchar(250) = Null,
	@EnterpriseAccNo as varchar(250) = Null,
      @EnterpriseName varchar(250) = Null,
      @EnterpriseAddress varchar(250) = Null,
      @EnterprisePhoneNo as varchar(250) = Null,
      @EnterpriseRegistrationNo  as varchar(250) = Null,
      @EnterpriseEmail  as varchar(250) = Null,
      @EnterpriseWebsite  as varchar(250) = Null,
      @EnterpriseDescriptions  as varchar(250) = Null,
      @EnterpriseFacebook  as varchar(250) = Null,
      @EnterpriseTwiter  as varchar(250) = Null,
      @EnterpriseInstagram  as varchar(250) = Null,
      @EnterpriseCoordinate  as varchar(250) = Null,
      @EnterpriseLogoPath  as varchar(250) = Null,
	  @EnterpriseLogoName as varchar(250) = Null,
      @RowStatus  as varchar(250) = Null,  
      @CreatedBy  as varchar(250) = Null,   
      @PICContactNo  as varchar(250) = Null,
      @PersonInCharge  as varchar(250) = Null,
      @LoyaltyCardType  as varchar(250) = Null,
	  @EnterpriseType  as varchar(250) = Null,
	  @EnterpriseBusinessType  as varchar(250) = Null,
	  @AyohaVersion  as varchar(250)  = Null,
	  @BusinessTypeGroupCode as varchar(250)  = Null
AS 
BEGIN 
     SET NOCOUNT ON 



	 Declare @BusinessTypeCode as varchar (250)
	 --Not Use 
	 set @BusinessTypeCode =(select top 1 BusinessTypeCode from BusinessType where BusinessTypeGroupCode=@BusinessTypeGroupCode)
	


 IF  EXISTS (SELECT ID,EnterpriseAccNo,EnterpriseHQAccNo  FROM Enterprises WHERE EnterpriseAccNo=@EnterpriseAccNo and ID=@ID and EnterpriseHQAccNo=@EnterpriseHQAccNo)
 
 Update dbo.Enterprises
          
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
	  ,EnterpriseLogoName=@EnterpriseLogoName
	  ,ModifiedBy=@CreatedBy
	  ,ModifiedDate=getDate()
      ,RowStatus=@RowStatus
      ,PICContactNo=@PICContactNo
      ,PersonInCharge=@PersonInCharge
      ,LoyaltyCardType=@LoyaltyCardType
	     ,EnterpriseType=@EnterpriseType
      ,EnterpriseBusinessType=@EnterpriseBusinessType
      ,AyohaVersion=@AyohaVersion
	  ,BusinessTypeGroupCode=@BusinessTypeGroupCode
	  ,BusinessTypeCode=@BusinessTypeCode
	  ,SearchCol=@EnterpriseAddress
	where EnterpriseAccNo=@EnterpriseAccNo and ID=@ID and EnterpriseHQAccNo=@EnterpriseHQAccNo
 
 ELSE
 
     INSERT INTO dbo.Enterprises
          ( 
        [EnterpriseHQAccNo] 
	   ,[EnterpriseAccNo]
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
	  ,[EnterpriseLogoName]
      ,[RowStatus]      
      ,[CreatedBy] 
      ,[PICContactNo]
      ,[PersonInCharge]
      ,[LoyaltyCardType]
	  ,[EnterpriseType]
      ,[EnterpriseBusinessType]
      ,[AyohaVersion]
	  ,[BusinessTypeCode]
	  ,[BusinessTypeGroupCode]
	  ,[SearchCol]              
          ) 
     VALUES 
          ( 
		  @EnterpriseHQAccNo,
    @EnterpriseAccNo,
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
	  @EnterpriseLogoName,
      @RowStatus,      
      @CreatedBy,  
      @PICContactNo,
      @PersonInCharge,
      @LoyaltyCardType,
	   @EnterpriseType,
      @EnterpriseBusinessType,
      @AyohaVersion,
	  @BusinessTypeCode,
	  @BusinessTypeGroupCode,
	   @EnterpriseAddress                         
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
