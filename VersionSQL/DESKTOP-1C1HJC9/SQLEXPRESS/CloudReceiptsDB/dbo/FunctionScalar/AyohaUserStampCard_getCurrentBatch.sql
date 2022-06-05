/****** Object:  Function [dbo].[AyohaUserStampCard_getCurrentBatch]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[AyohaUserStampCard_getCurrentBatch](@SubscriberAccNo varchar(150),@StampCardCode varchar(250))
RETURNS int 
AS
BEGIN
 
    DECLARE @CurrentBatch int
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */


	
    SET @CurrentBatch = (select top 1 Batch from AyohaUserStampCard where SubscriberAccNo=@SubscriberAccNo and StampCardCode=@StampCardCode order by ID desc)

    RETURN @CurrentBatch
END
