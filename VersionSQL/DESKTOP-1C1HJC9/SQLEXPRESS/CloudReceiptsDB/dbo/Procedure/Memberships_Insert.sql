/****** Object:  Procedure [dbo].[Memberships_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Memberships_Insert]
  






	 --  @ID as int,
      @CampaignEnterpriseAccNo   as varchar(250),
	   @SubscriberAccNo   as varchar(250), 
	     @MembershipByMethod   as varchar(250),
		     @ReferalSubscriberAccNo   as varchar(250),  
			   @MembershipCardCode   as varchar(250), 
			   @CreatedBy   as varchar(250)
 --     @CampaignRewardType   as varchar(250),
 --      @MembershipApprovalBy   as varchar(250),
    
 
    
    
     
      


	  
 --    @MembershipFeePaymentMethod   as varchar(250),
 --   @MembershipPaymentLink   as varchar(250),
 --@MembershipPaymentPaidProof   as varchar(250),
	-- @MembershipPaymentCode   as varchar(250)
     

AS 
BEGIN 
     SET NOCOUNT ON 


	 declare @isValidLifeTime as varchar(250)	 
	 declare @MembershipFee   as decimal(18,2) = Null
	 	 declare @MembershipFees   as decimal(18,2) = Null
     declare @MembershipLevel   as varchar(250) = Null
     declare @IsRequiredMembershipFee   as varchar(250) = Null 
     declare @MembershipApprovalStatus   as varchar(250)
  --   declare @MembershipFeePaymentMethod   as varchar(250) = 'NA'
  --   declare  @MembershipPaymentLink   as varchar(250) = 'NA'
  --   declare @MembershipPaymentPaidProof   as varchar(250) = 'NA'
	 --declare  @MembershipPaymentCode   as varchar(250) = 'NA'
	declare  @MembershipCardFeePaymentCycle as varchar(250) = Null 
     declare  @StrExpiredDate as varchar(250) = Null 
	 declare @MembrshipApprovalDate datetime
    declare @MembershipApprovalBy as varchar(250) = Null
	declare @MembershipDate as datetime
	 declare @CampaignEnterpriseHQAccNo as varchar(250) = Null





	  set @CampaignEnterpriseHQAccNo=(select EnterpriseHQAccNo from Enterprises where  EnterpriseAccNo=@CampaignEnterpriseAccNo)


	


	    set @isValidLifeTime=(select isValidLifeTime from MembershipCard where MembershipCardCode=@MembershipCardCode and EnterpriseAccNo=@CampaignEnterpriseHQAccNo)
	   set @MembershipFee=(select MembershipCardFee from MembershipCard where MembershipCardCode=@MembershipCardCode and EnterpriseAccNo=@CampaignEnterpriseHQAccNo)
	   -- set @MembershipFees=(select MembershipCardFee from MembershipCard where MembershipCardCode=@MembershipCardCode and EnterpriseAccNo=@CampaignEnterpriseAccNo)
	    set @MembershipLevel=(select MembershipCardType from MembershipCard where MembershipCardCode=@MembershipCardCode and EnterpriseAccNo=@CampaignEnterpriseHQAccNo)
		-- set @IsRequiredMembershipFee=(select isValidLifeTime from MembershipCard where MembershipCardCode=@MembershipCardCode and EnterpriseAccNo=@CampaignEnterpriseAccNo)
		   set @MembershipCardFeePaymentCycle=(select MembershipCardFeePaymentCycle from MembershipCard where MembershipCardCode=@MembershipCardCode and EnterpriseAccNo=@CampaignEnterpriseHQAccNo)
		    set @StrExpiredDate=(select StrExpiredDate from MembershipCard where MembershipCardCode=@MembershipCardCode and EnterpriseAccNo=@CampaignEnterpriseHQAccNo)
			
		 --  set @isValidLifeTime=(select isValidLifeTime from MembershipCard where MembershipCardCode='MMC-02' and EnterpriseAccNo='CRCom-71100')
	  -- set @MembershipFee=(select MembershipCardFee from MembershipCard where MembershipCardCode='MMC-02' and EnterpriseAccNo='CRCom-71100')
	  --  set @MembershipLevel=(select MembershipCardType from MembershipCard where MembershipCardCode='MMC-02' and EnterpriseAccNo='CRCom-71100')
		 --set @IsRequiredMembershipFee=(select isValidLifeTime from MembershipCard where MembershipCardCode='MMC-02' and EnterpriseAccNo='CRCom-71100')
		 --  set @MembershipCardFeePaymentCycle=(select MembershipCardFeePaymentCycle from MembershipCard where MembershipCardCode='MMC-02' and EnterpriseAccNo='CRCom-71100')
		 --   set @StrExpiredDate=(select StrExpiredDate from MembershipCard where MembershipCardCode='MMC-02' and EnterpriseAccNo='CRCom-71100')

			if @isValidLifeTime='YES'
			begin

			set @MembershipApprovalStatus='APPROVED'
			end


			
			if @isValidLifeTime='NO'
			begin

			set @MembershipApprovalStatus='REQUEST'
			end




			if @MembershipFee >0.00
			begin

			set @IsRequiredMembershipFee='YES'
			end


			
			if @MembershipFee <=0.00
			begin

			set @IsRequiredMembershipFee='NO'
			end


				if @MembershipApprovalStatus='REQUEST'
			begin

			set @MembrshipApprovalDate=null
			set @MembershipApprovalBy=null
			set @MembershipDate=null
			end


			if @MembershipApprovalStatus='APPROVED'

			begin

			set @MembrshipApprovalDate=getDate()
			set @MembershipApprovalBy='Auto'
			set @MembershipDate=getDate()
			end

  IF  NOT EXISTS (SELECT CampaignEnterpriseHQAccNo,MembershipCardCode,SubscriberAccNo  FROM Memberships WHERE   CampaignEnterpriseHQAccNo=@CampaignEnterpriseHQAccNo and MembershipCardCode=@MembershipCardCode and SubscriberAccNo=@SubscriberAccNo and RowStatus='Active')
 

	   INSERT INTO dbo.Memberships
          ( 
         
	 [CampaignEnterpriseAccNo],
      [CampaignRewardType],
      [SubscriberAccNo],
	  [MembershipDate],    
      [MembershipByMethod],
      [MembrshipApprovalDate],
      [MembershipApprovalBy],
      [ReferalSubscriberAccNo],
      [MembershipFee],
      [MembershipLevel],
      [IsRequiredMembershipFee], 
      [MembershipApprovalStatus],
      [MembershipFeePaymentMethod],
      [MembershipPaymentLink],
      [MembershipPaymentPaidProof],
      [MembershipCardCode],
      [MembershipPaymentCode],   
      [CreatedBy],
	   [MembershipCardFeePaymentCycle],
      [StrExpiredDate],
      [isValidLifeTime],
	  [CampaignEnterpriseHQAccNo]
          ) 
     VALUES 
          ( 
      @CampaignEnterpriseAccNo,
      'NA',
      @SubscriberAccNo,
	  @MembershipDate,    
      @MembershipByMethod,
      @MembrshipApprovalDate,
      @MembershipApprovalBy,
      @ReferalSubscriberAccNo,
      @MembershipFee,
      @MembershipLevel,
      @IsRequiredMembershipFee, 
      @MembershipApprovalStatus,
      'NA',
      'NA',
      'NA',
      @MembershipCardCode,
      'NA',   
      @CreatedBy,
	  @MembershipCardFeePaymentCycle,
      @StrExpiredDate,
      @isValidLifeTime,
	  @CampaignEnterpriseHQAccNo           
          ) 
END

--select * from AyohaEnterprisesUser


--Generate StampCampaign
Begin

INSERT INTO [AyohaUserStampCard] (StampCampaignCode, StampContent,StampContentSequence,StampContentNote,StampCardType,EnterpriseAccNo,CreatedByAccNo,CreatedBy,TextOne,TextTwo,DivContent,DivContentTextTwo,StampContentDefaultTemplateID,ShowHide,ImgContentName,isRedeemItem,StampedStatus,SubscriberAccNo,Batch)
--SELECT @StampCardCode, @StampCampaignCode, st.StampContent,st.StampContentSequence,null,@StampCardType,@EnterpriseAccNo,@CreatedByAccNo,@CreatedBy,st.TextOne,Null,st.divContentFloatLoyaltyCardStamp,st.divContentFloatLoyaltyCardStampExt,st.ID
--FROM [dbo].[StampContentDefaultTemplate]  st
--WHERE st.RowStatus='Active'

SELECT StampCampaignCode, StampContent,StampContentSequence,StampContentNote,StampCardType,EnterpriseAccNo,CreatedByAccNo,CreatedBy,TextOne,TextTwo,DivContent,DivContentTextTwo,StampContentDefaultTemplateID,ShowHide,ImgContentName,isRedeemItem,StampedStatus,@SubscriberAccNo,1
FROM [StampCard]
WHERE EnterpriseAccNo=@CampaignEnterpriseHQAccNo and RowStatus='Active'



end


 -- SELECT *  FROM [CloudReceiptsDB].[dbo].[AyohaUserStampCard]
 
 --SELECT *  FROM [dbo].[StampCard]
