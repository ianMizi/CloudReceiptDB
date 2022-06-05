/****** Object:  Function [dbo].[Memberships_CalculateExpiredDate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[Memberships_CalculateExpiredDate](@StrExpiredDate varchar(100),@isValidLifeTime varchar(100),@MembershipApprovalDate datetime)
RETURNS datetime
AS
BEGIN
    DECLARE @ExpiredDate as datetime
    Declare @Month as int
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */


	if @isValidLifeTime='YES'
	begin


	RETURN '1983-02-19 18:04:13.820'
	end



	set @Month =(SELECT CAST(@StrExpiredDate AS INT))

	if @MembershipApprovalDate is null
	begin

	set @ExpiredDate='1983-02-20 18:04:13.820'
	end
    if @MembershipApprovalDate is not null
	begin

	

	set @ExpiredDate=(SELECT DATEADD(month, @Month, @MembershipApprovalDate) AS ExpiredDate)
	end
  
    
    RETURN @ExpiredDate
END


--select * from Memberships
--select * from MembershipCard
