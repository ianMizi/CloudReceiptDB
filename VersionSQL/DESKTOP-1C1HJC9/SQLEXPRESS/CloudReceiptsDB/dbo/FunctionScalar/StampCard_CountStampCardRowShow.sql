/****** Object:  Function [dbo].[StampCard_CountStampCardRowShow]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[StampCard_CountStampCardRowShow](@StampCampaignCode varchar(100),@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @CountStampCardRowShow int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @CountStampCardRowShow = (select count (*) from StampCard where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and ShowHide='Show' and RowStatus='Active')
    
    RETURN @CountStampCardRowShow
END
