/****** Object:  Function [dbo].[StampCampaign_getStampCampaignName]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[StampCampaign_getStampCampaignName](@StampCampaignCode varchar(100),@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @StampCampaignName varchar (500)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @StampCampaignName = (select top 1 StampCampaignName from StampCampaign where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active')
    
    RETURN @StampCampaignName
END
