/****** Object:  Function [dbo].[LoyaltyStamp_TotalStamps_UnClaimed]    Committed by VersionSQL https://www.versionsql.com ******/

Create  FUNCTION [dbo].[LoyaltyStamp_TotalStamps_UnClaimed](@SubcriberAccNo varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @sumStamps int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    

	
    SET @sumStamps = (select sum (CountsStamp) from LoyaltyStamp where SubscriberAccNo=@SubcriberAccNo and RowStatus='Active' and StampClaimStatus='UnClaimed' )
    
    RETURN @sumStamps
END
