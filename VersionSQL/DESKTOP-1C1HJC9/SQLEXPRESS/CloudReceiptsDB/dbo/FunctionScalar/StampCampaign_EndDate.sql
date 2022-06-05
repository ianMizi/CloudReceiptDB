/****** Object:  Function [dbo].[StampCampaign_EndDate]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[StampCampaign_EndDate](@StampCampaignCode varchar(100))
RETURNS datetime
AS
BEGIN
    DECLARE @EndDate datetime
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @EndDate = (select EndDate from StampCampaign where StampCampaignCode=@StampCampaignCode and RowStatus='Active')
    
    RETURN @EndDate
END
