/****** Object:  Function [dbo].[StampCampaign_getIsStampRulePopUp]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[StampCampaign_getIsStampRulePopUp](@StampCampaignCode varchar(100),@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @IsStampRulePopUp varchar (50)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @IsStampRulePopUp = (select top 1 IsStampRulePopUp from StampCampaign where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active')
    
    RETURN @IsStampRulePopUp
END
