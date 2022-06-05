/****** Object:  Procedure [dbo].[StampCard_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampCard_Insert]
  
  --@StampCardCode varchar (250)= null,
   @StampCampaignCode varchar (250)= null,
      @StampCardType varchar (250)= null,   
	@EnterpriseAccNo varchar (250)= null,
	@CreatedByAccNo varchar (250)= null,
	@CreatedBy varchar (250)= null
	
	
AS 
BEGIN 
     SET NOCOUNT ON 

INSERT INTO [StampCard] (StampCampaignCode, StampContent,StampContentSequence,StampContentNote,StampCardType,EnterpriseAccNo,CreatedByAccNo,CreatedBy,TextOne,TextTwo,DivContent,DivContentTextTwo,StampContentDefaultTemplateID)
--SELECT @StampCardCode, @StampCampaignCode, st.StampContent,st.StampContentSequence,null,@StampCardType,@EnterpriseAccNo,@CreatedByAccNo,@CreatedBy,st.TextOne,Null,st.divContentFloatLoyaltyCardStamp,st.divContentFloatLoyaltyCardStampExt,st.ID
--FROM [dbo].[StampContentDefaultTemplate]  st
--WHERE st.RowStatus='Active'

SELECT @StampCampaignCode, st.StampContent,st.StampContentSequence,null,@StampCardType,@EnterpriseAccNo,@CreatedByAccNo,@CreatedBy,st.TextOne,Null,st.divContentFloatLoyaltyCardStamp,st.divContentFloatLoyaltyCardStampExt,st.ID
FROM [dbo].[StampContentDefaultTemplate]  st
WHERE st.RowStatus='Active'



--INSERT INTO [StampCard] (StampCardCode, StampCampaignCode, StampContent,StampContentSequence,StampContentNote,StampCardType,EnterpriseAccNo,CreatedByAccNo,CreatedBy)
--SELECT '228-5-CRCom-71100-ccc-ccc', '228-5-CRCom-71100-ccc-ccc', st.StampContent,st.StampContentSequence,null,'Custome','CRCom-71100','ccc','ccc'
--FROM [dbo].[StampContentDefaultTemplate]  st
--WHERE st.RowStatus='Active'

		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
