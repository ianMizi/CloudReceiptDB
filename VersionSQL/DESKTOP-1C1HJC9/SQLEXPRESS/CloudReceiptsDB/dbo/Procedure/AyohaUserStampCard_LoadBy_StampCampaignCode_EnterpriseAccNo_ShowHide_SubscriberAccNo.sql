/****** Object:  Procedure [dbo].[AyohaUserStampCard_LoadBy_StampCampaignCode_EnterpriseAccNo_ShowHide_SubscriberAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaUserStampCard_LoadBy_StampCampaignCode_EnterpriseAccNo_ShowHide_SubscriberAccNo]  


      @EnterpriseAccNo varchar (150),
      @StampCampaignCode varchar (150),
	  @SubscriberAccNo varchar (150)
	   
    
    
    
   
	 
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
      ,[StampedDate] from [dbo].[AyohaUserStampCard] where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active' and ShowHide='Show' and SubscriberAccNo=@SubscriberAccNo

	END
