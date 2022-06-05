/****** Object:  Function [dbo].[StampCampaign_getStampRuleRemarks]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[StampCampaign_getStampRuleRemarks](@StampCampaignCode varchar(100),@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @StampRuleRemarks varchar (500)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @StampRuleRemarks = (select top 1 StampRuleRemarks from StampCampaign where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active')
    
    RETURN @StampRuleRemarks
END
