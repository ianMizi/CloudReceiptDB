/****** Object:  Procedure [dbo].[LoyaltyStamp_CheckExistingStampQrCode]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[LoyaltyStamp_CheckExistingStampQrCode]
  
	
	@StampQrCode varchar (550)= null
	
AS 
BEGIN 
     SET NOCOUNT ON 
	-- select * from LoyaltyStamp where  EnterpriseAccNo=@EnterpriseAccNo and RowStatus='Active'

	Select StampQrCode from LoyaltyStamp where StampQrCode=@StampQrCode

END
