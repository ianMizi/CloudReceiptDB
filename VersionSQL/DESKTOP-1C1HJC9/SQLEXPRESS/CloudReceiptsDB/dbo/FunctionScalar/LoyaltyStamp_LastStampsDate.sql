/****** Object:  Function [dbo].[LoyaltyStamp_LastStampsDate]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[LoyaltyStamp_LastStampsDate](@EnterpriseAccNo varchar(100),@SubcriberAccNo varchar(100))
RETURNS datetime
AS
BEGIN
    DECLARE @LastStampsDate datetime
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    

	
    SET @LastStampsDate = (select top 1 StampedByDate from LoyaltyStamp where EnterpriseAccNo=@EnterpriseAccNo and SubscriberAccNo=@SubcriberAccNo and RowStatus='Active' order by StampedByDate desc)
    
    RETURN @LastStampsDate
END
