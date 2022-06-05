/****** Object:  Procedure [dbo].[MembershipCard_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[MembershipCard_InsertUpdate]
  



	   @ID as int,
      @MembershipCardCode as varchar(250) = Null,
      @EnterpriseAccNo as varchar(250) = Null,
      @MembershipCardFee as decimal(18,2) = Null,
      @MembershipCardType as varchar(250) = Null,
      @ExpiredDate as varchar(250) = Null,
      @MembershipCardBackgroundImg as varchar(250) = Null,     
      @CreatedBy as varchar(250) = Null,
      @StartDate as varchar(250) = Null,
      @MembershipCardName as varchar(250) = Null,
      @MembershipCardFeePaymentCycle as varchar(250) = Null,
      @StrExpiredDate as varchar(250) = Null,
      @isValidLifeTime as varchar(250) = Null,
	  @isRequiredApproval as varchar (50)=Null
	

AS 
BEGIN 
     SET NOCOUNT ON 
  IF  EXISTS (SELECT ID,EnterpriseAccNo,MembershipCardCode  FROM MembershipCard WHERE EnterpriseAccNo=@EnterpriseAccNo and ID=@ID and MembershipCardCode=@MembershipCardCode)
 Update dbo.MembershipCard
          
    Set

	  MembershipCardFee=@MembershipCardFee,
      MembershipCardType=@MembershipCardType,
    --  ExpiredDate=@ExpiredDate,
      MembershipCardBackgroundImg=@MembershipCardBackgroundImg,     
     ModifiedBy= @CreatedBy,
	 ModifiedDate=getDate(),
      --StartDate=@StartDate,
      MembershipCardName=@MembershipCardName,
      MembershipCardFeePaymentCycle=@MembershipCardFeePaymentCycle,
      StrExpiredDate=@StrExpiredDate,
      isValidLifeTime=@isValidLifeTime,
	  isRequiredApproval=@isRequiredApproval

	WHERE EnterpriseAccNo=@EnterpriseAccNo and ID=@ID and MembershipCardCode=@MembershipCardCode
 
	Else

	   INSERT INTO dbo.MembershipCard
          ( 
         
	 MembershipCardCode,
      EnterpriseAccNo,
      MembershipCardFee,
      MembershipCardType,
     -- ExpiredDate,
      MembershipCardBackgroundImg,     
      CreatedBy,
    --  StartDate,
      MembershipCardName,
      MembershipCardFeePaymentCycle,
      StrExpiredDate,
      isValidLifeTime,
	  isRequiredApproval
          ) 
     VALUES 
          ( 
      @MembershipCardCode,
      @EnterpriseAccNo,
      @MembershipCardFee,
      @MembershipCardType,
     -- @ExpiredDate,
      @MembershipCardBackgroundImg,     
      @CreatedBy,
     -- @StartDate,
      @MembershipCardName,
      @MembershipCardFeePaymentCycle,
      @StrExpiredDate,
      @isValidLifeTime,
	  @isRequiredApproval                   
          ) 
END

--select * from AyohaEnterprisesUser
