/****** Object:  Function [dbo].[Memberships_GetMembershipNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[Memberships_GetMembershipNo](@SubscriberAccNo varchar(100),@MembershipCardCode varchar(100))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @MembershipNo VARCHAR(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @MembershipNo = (select MembershipNo from Memberships where SubscriberAccNo=@SubscriberAccNo and MembershipCardCode=@MembershipCardCode and RowStatus='Active')
    
    RETURN @MembershipNo
END
