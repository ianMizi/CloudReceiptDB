/****** Object:  Function [dbo].[Memberships_GetMembershipNo_NonMembership]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Memberships_GetMembershipNo_NonMembership](@SubscriberAccNo varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @MembershipNo VARCHAR(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @MembershipNo = @SubscriberAccNo
    
    RETURN @MembershipNo+'AY'
END
