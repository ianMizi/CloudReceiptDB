/****** Object:  Function [dbo].[Enterprise_LoyaltyCardType]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Enterprise_LoyaltyCardType](@EnterpriseAccNo varchar(100))
RETURNS varchar(250)
AS
BEGIN
    DECLARE @CardType varchar(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    

	
    SET @CardType = (select top 1 LoyaltyCardType from Enterprise where EnterpriseAccNo=@EnterpriseAccNo  and RowStatus='Active')
    
    RETURN @CardType
END
