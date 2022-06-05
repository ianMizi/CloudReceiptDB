/****** Object:  Function [dbo].[Memberships_isMembershipCodeExist]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[Memberships_isMembershipCodeExist](@SubscriberAccNo varchar(250),@MembershipCardCode varchar(250))
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @Result int
	DECLARE @isExist as varchar(50)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    

	Set @Result=(select count(MembershipCardCode) from Memberships where MembershipCardCode=@MembershipCardCode and SubscriberAccNo=@SubscriberAccNo and RowStatus='Active')

  
  if @Result >=1
  begin
  set @isExist='YES'
  end
  else
  begin
   set @isExist='NO'
   End


    
    RETURN @isExist
END
