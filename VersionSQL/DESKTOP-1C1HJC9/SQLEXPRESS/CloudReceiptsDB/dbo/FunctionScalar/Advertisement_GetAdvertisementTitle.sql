/****** Object:  Function [dbo].[Advertisement_GetAdvertisementTitle]    Committed by VersionSQL https://www.versionsql.com ******/

create FUNCTION [dbo].[Advertisement_GetAdvertisementTitle](@EnterpriseAccNo varchar(100),@AdvertisementCode varchar (250))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @AdvertisementTitle VARCHAR(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @AdvertisementTitle = (select AdvertisementTitle from Advertisement where EnterpriseAccNo=@EnterpriseAccNo and AdvertisementCode=@AdvertisementCode)
    
    RETURN @AdvertisementTitle
END
