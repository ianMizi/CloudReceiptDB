/****** Object:  Procedure [dbo].[StampCampaign_LoadByGetLoyaltyCard]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampCampaign_LoadByGetLoyaltyCard]  



      @EnterpriseAccNo varchar (150) 
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 

	 Declare @EnterpriseHQAccNo as varchar(250)

	 set @EnterpriseHQAccNo=(select EnterpriseHQAccNo from Enterprises where EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active')

  --select sc.StampCampaignCode,sc.StampCampaignName,sc.StartDate,sc.EndDate,sc.StampCardType,sc.isRequiredFee,sc.StampCampaignFees,sc.FeesCycle
  --    ,[dbo].[Enterprises_GetEnterpriseName](sc.EnterpriseAccNo) as EnterpriseName
  --,[dbo].[Enterprises_GetEnterpriseLogoPath](sc.EnterpriseAccNo) as EnterpriseLogo
  --,[dbo].[LoyaltyCardBackgroundImage_getPathImage] (sc.StampCampaignCode,sc.EnterpriseAccNo) as BackgroundImgOne 
  --,[dbo].[LoyaltyCardBackgroundImage_getPathImage_2] (sc.StampCampaignCode,sc.EnterpriseAccNo) as BackgroundImgTwo
  --,[dbo].[StampCard_NextRedeemItem_StampContentNote](sc.StampCampaignCode,sc.EnterpriseAccNo)  as NextRedeem
  --,[dbo].[StampCard_NextRedeemItem_StampContent](sc.StampCampaignCode,sc.EnterpriseAccNo) as NextRedeemContent
 
  --from StampCampaign sc   where sc.EnterpriseAccNo=@EnterpriseAccNo and sc.RowStatus='Active' and sc.EndDate >= getDate() 



  -- select sc.StampCampaignCode,sc.StampCampaignName,sc.StartDate,sc.EndDate,sc.StampCardType,sc.isRequiredFee,sc.StampCampaignFees,sc.FeesCycle
  --    ,[dbo].[Enterprises_GetEnterpriseName](@EnterpriseAccNo) as EnterpriseName
  --,[dbo].[Enterprises_GetEnterpriseLogoPath](@EnterpriseAccNo) as EnterpriseLogo
  --,[dbo].[LoyaltyCardBackgroundImage_getPathImage] (sc.StampCampaignCode,@EnterpriseHQAccNo) as BackgroundImgOne 
  --,[dbo].[LoyaltyCardBackgroundImage_getPathImage_2] (sc.StampCampaignCode,@EnterpriseHQAccNo) as BackgroundImgTwo
  --,[dbo].[StampCard_NextRedeemItem_StampContentNote](sc.StampCampaignCode,@EnterpriseHQAccNo)  as NextRedeem
  --,[dbo].[StampCard_NextRedeemItem_StampContent](sc.StampCampaignCode,@EnterpriseHQAccNo) as NextRedeemContent
 
  --from StampCampaign sc   where sc.EnterpriseAccNo=@EnterpriseHQAccNo and sc.RowStatus='Active' and sc.EndDate >= getDate() 



  select  sc.StampCampaignCode,sc.StampCampaignName,sc.StartDate,sc.EndDate,sc.StampCardType,sc.isRequiredFee,sc.StampCampaignFees,sc.FeesCycle,se.EnterpriseAccNo,E.EnterpriseAddress,E.SearchCol,E.BusinessMode
  ,[dbo].[Enterprises_GetEnterpriseName](se.EnterpriseAccNo) as EnterpriseName
  ,[dbo].[Enterprises_GetEnterpriseLogoPath](se.EnterpriseAccNo) as EnterpriseLogo
  ,[dbo].[LoyaltyCardBackgroundImage_getPathImage] (sc.StampCampaignCode,@EnterpriseHQAccNo) as BackgroundImgOne 
  ,[dbo].[LoyaltyCardBackgroundImage_getPathImage_2] (sc.StampCampaignCode,@EnterpriseHQAccNo) as BackgroundImgTwo
  ,[dbo].[StampCard_NextRedeemItem_StampContentNote](sc.StampCampaignCode,@EnterpriseHQAccNo)  as NextRedeem
  ,[dbo].[StampCard_NextRedeemItem_StampContent](sc.StampCampaignCode,@EnterpriseHQAccNo) as NextRedeemContent
  ,[dbo].[Enterprises_getEnterpriseType](se.EnterpriseAccNo) as EnterpriseType
   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](E.BusinessTypeGroupCode) as BusinessTypeIconPath 
   ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](E.BusinessTypeGroupCode) as BusinessTypeGroup 
  from StampCampaign sc inner join [StampCampaignEnterprises] Se
  on sc.EnterpriseAccNo=se.EnterpriseHQAccNo
  inner join Enterprises E
  on se.EnterpriseAccNo =E.EnterpriseAccNo
  where sc.EnterpriseAccNo=@EnterpriseHQAccNo and sc.RowStatus='Active'  and sc.EndDate >= getDate() 

	END
