/****** Object:  Function [dbo].[LoyaltyCardBackgroundImage_getPathImage]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[LoyaltyCardBackgroundImage_getPathImage] (@StampCampaignCode varchar(150),@EnterpriseAccNo varchar(250))
RETURNS varchar (500) 
AS
BEGIN
 
    DECLARE @PathImage varchar(500)
	DECLARE @Idx int
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
	

	
    SET @PathImage = (select top (1) ImgPath from [LoyaltyCardBackgroundImage] where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active'
	and ShowHide='Show' order by ID desc)

    RETURN @PathImage
END
