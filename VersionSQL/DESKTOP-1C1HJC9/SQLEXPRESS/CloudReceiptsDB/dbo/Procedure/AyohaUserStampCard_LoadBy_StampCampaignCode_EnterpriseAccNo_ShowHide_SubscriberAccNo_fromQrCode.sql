/****** Object:  Procedure [dbo].[AyohaUserStampCard_LoadBy_StampCampaignCode_EnterpriseAccNo_ShowHide_SubscriberAccNo_fromQrCode]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaUserStampCard_LoadBy_StampCampaignCode_EnterpriseAccNo_ShowHide_SubscriberAccNo_fromQrCode]  


      @EnterpriseAccNo varchar (250),
      @StampCampaignCode varchar (250),
	  @SubscriberAccNo varchar (250)
	   
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 


	Select [ID]
      ,[StampCardCode]
      ,[StampCampaignCode]
      ,[StampContent]
      ,[StampContentSequence]
      ,[StampContentNote]
      ,[StampCardType]
      ,[EnterpriseAccNo]
      ,[CreatedByAccNo]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[ModifiedBy]
      ,[ModifiedDate]
      ,[RowStatus]
      ,[TextOne]
      ,[TextTwo]
      ,[DivContent]
      ,[DivContentTextTwo]
      ,[StampContentDefaultTemplateID]
      ,[ShowHide]
      ,[ImgContentName]
      ,[isRedeemItem]
      ,[StampedStatus]
      ,[SubscriberAccNo]
      --,[dbo].[AyohaEnterprisesUser_GetAccountName]([StampedBy]) As StampedBy
	  ,[dbo].[AyohaEnterprisesUser_GetUseName]([StampedBy]) As StampedBy
	  ,[dbo].[Enterprises_GetEnterpriseLogoPath]([EnterpriseAccNo]) As EnterpriseLogo
	   ,[dbo].[Enterprises_GetEnterpriseName]([EnterpriseAccNo]) As EnterpriseName
	   ,[dbo].[StampCampaign_getStampCampaignName](@StampCampaignCode,@EnterpriseAccNo) as StampCampaignName
	   ,[dbo].[StampCampaign_StartDate](@StampCampaignCode) as StartDate
	   ,[dbo].[StampCampaign_EndDate](@StampCampaignCode) as EndDate
	   ,[dbo].[StampCampaign_getStampRuleRemarks](@StampCampaignCode,@EnterpriseAccNo) as StampRuleRemarks
	   ,[dbo].[StampCampaign_getIsStampRulePopUp](@StampCampaignCode,@EnterpriseAccNo) as IsStampRulePopUp
	   ,[dbo].[StampCard_NextRedeemItem_StampContent](@StampCampaignCode,@EnterpriseAccNo) as NextRedeemItemStampContent
	   ,[dbo].[StampCard_NextRedeemItem_StampContentNote](@StampCampaignCode,@EnterpriseAccNo) as NextRedeemItemStampContentNote
	   ,[dbo].[StampCard_CountStampCardRowShow](@StampCampaignCode,@EnterpriseAccNo) as CountStampCardRowShow
	   ,[dbo].[AyohaUserStampCard_CountStatusYES](@EnterpriseAccNo,@StampCampaignCode,@SubscriberAccNo) as CountStampCardRowYES
	   --,[dbo].[Enterprises_GetEnterpriseHQAccNo](@EnterpriseAccNo) as EnterpriseHQAccNo
      ,[StampedDate] from [dbo].[AyohaUserStampCard] where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active' and ShowHide='Show' and SubscriberAccNo=@SubscriberAccNo

	END






	
