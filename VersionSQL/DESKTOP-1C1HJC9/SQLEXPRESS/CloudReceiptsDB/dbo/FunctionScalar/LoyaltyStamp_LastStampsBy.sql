/****** Object:  Function [dbo].[LoyaltyStamp_LastStampsBy]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[LoyaltyStamp_LastStampsBy](@EnterpriseAccNo varchar(100),@SubcriberAccNo varchar(100))
RETURNS varchar (250)
AS
BEGIN
    DECLARE @LastStampsBy varchar (250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    

	
    SET @LastStampsBy = (select top 1 StampedBy from LoyaltyStamp where EnterpriseAccNo=@EnterpriseAccNo and SubscriberAccNo=@SubcriberAccNo and RowStatus='Active' order by StampedByDate desc)
    
    RETURN @LastStampsBy
END
