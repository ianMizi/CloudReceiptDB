/****** Object:  Function [dbo].[MembershipCardCampaingEntitled_GetMembershipCardCode]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[MembershipCardCampaingEntitled_GetMembershipCardCode](@StampCampaignCode varchar(250))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @MembershipCardCode VARCHAR(250)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @MembershipCardCode = (select MembershipCardCode from MembershipCardCampaingEntitled where CampaignCode=@StampCampaignCode and RowStatus='Active')
    
    RETURN @MembershipCardCode
END


--select * from StampCampaign where StampCampaignCode='14955-25905-0193397961-NoEnterprise-25905-0193397961-Custome'
