/****** Object:  Function [dbo].[StampCard_NextRedeemItem_StampContent]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[StampCard_NextRedeemItem_StampContent](@StampCampaignCode varchar(100),@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(550)
AS
BEGIN
    DECLARE @StampContent as varchar (550)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @StampContent = (select top 1 StampContent from [dbo].[StampCard] where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and StampCardType='Custome'
  and ShowHide='Show' and isRedeemItem='YES' and RowStatus='Active' order by ID ASC)

	--select top 1 StampContent,StampContentNote from [dbo].[StampCard] where StampCampaignCode='84938-CRCom-71100-0133376958-346273-Custome' and EnterpriseAccNo='CRCom-71100' and StampCardType='Custome'
 -- and ShowHide='Show' and isRedeemItem='YES' and RowStatus='Active' order by ID ASC
    
    RETURN @StampContent
END
