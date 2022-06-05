/****** Object:  Procedure [dbo].[StampCampaign_Update]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampCampaign_Update]  

       @StampCampaignCode varchar (250)= null   
      ,@StampCampaignName varchar (250)= null   
      ,@StartDate varchar (250)= null
      ,@EndDate varchar (250)= null
      ,@EnterpriseAccNo varchar (250)= null
      ,@CreatedByAccNo varchar (250)= null
      ,@CreatedBy varchar (250)= null
      ,@isAnimated varchar (250)= null
      ,@AnimatedInterval int= null
	  ,@RowStatus varchar (50)= null

	  ,@StampRuleRemarks varchar (250)= null
	  ,@isStampRulePopUp varchar (50)= null
	  ,@LoyaltyCustomerType varchar (50)= null
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 

	
update StampCampaign
set   StampCampaignName=@StampCampaignName
,StartDate=@StartDate
,EndDate=@EndDate
,CreatedByAccNo=@CreatedByAccNo
,ModifiedBy=@CreatedBy
,ModifiedDate=getDate()
,isAnimated=@isAnimated
,AnimatedInterval=@AnimatedInterval
,RowStatus=@RowStatus
,StampRuleRemarks=@StampRuleRemarks
,isStampRulePopUp=@isStampRulePopUp
,LoyaltyCustomerType=@LoyaltyCustomerType
where StampCampaignCode=@StampCampaignCode and  EnterpriseAccNo=@EnterpriseAccNo






	END
