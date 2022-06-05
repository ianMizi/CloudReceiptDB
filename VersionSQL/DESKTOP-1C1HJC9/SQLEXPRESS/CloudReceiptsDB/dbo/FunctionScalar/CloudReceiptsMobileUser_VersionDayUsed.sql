/****** Object:  Function [dbo].[CloudReceiptsMobileUser_VersionDayUsed]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[CloudReceiptsMobileUser_VersionDayUsed](@CR_AccountNo varchar(100))
RETURNS int
AS
BEGIN
   
    


	DECLARE     @IDay  int
set @IDay= (SELECT DATEDIFF(DAY, GETDATE(), [CloudReceipts_MobileUser].CR_RegisterDate) from CloudReceipts_MobileUser where CR_AccountNo=@CR_AccountNo)



   
    
    RETURN @IDay
END
