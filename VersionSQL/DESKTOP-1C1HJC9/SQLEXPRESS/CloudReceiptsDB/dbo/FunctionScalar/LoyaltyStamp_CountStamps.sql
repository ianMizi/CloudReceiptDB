/****** Object:  Function [dbo].[LoyaltyStamp_CountStamps]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[LoyaltyStamp_CountStamps](@EnterpriseAccNo varchar(100),@SubcriberAccNo varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @sumStamps int
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    

	
    SET @sumStamps = (select sum (CountsStamp) from LoyaltyStamp where EnterpriseAccNo=@EnterpriseAccNo and SubscriberAccNo=@SubcriberAccNo and RowStatus='Active')
    
    RETURN @sumStamps
END
