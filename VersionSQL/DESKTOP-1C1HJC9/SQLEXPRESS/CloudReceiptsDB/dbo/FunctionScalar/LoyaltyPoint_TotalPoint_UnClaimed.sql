/****** Object:  Function [dbo].[LoyaltyPoint_TotalPoint_UnClaimed]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[LoyaltyPoint_TotalPoint_UnClaimed](@SubcriberAccNo varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @sumPoint int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    

	
    SET @sumPoint = (select sum (CountsPoint) from LoyaltyPoint where SubscriberAccNo=@SubcriberAccNo and RowStatus='Active' and PointClaimStatus='UnClaimed')
    
    RETURN @sumPoint
END
