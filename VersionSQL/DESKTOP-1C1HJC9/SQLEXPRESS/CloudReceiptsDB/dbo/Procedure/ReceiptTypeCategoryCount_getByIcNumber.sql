/****** Object:  Procedure [dbo].[ReceiptTypeCategoryCount_getByIcNumber]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[ReceiptTypeCategoryCount_getByIcNumber]
@MykadID varchar (50)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT 
	COUNT(CASE WHEN FlatBill.FlatBillCategory = 'Partially-Paid' THEN FlatBill.FlatBillCategory END) AS 'PartiallyPaid', 
    COUNT(CASE WHEN FlatBill.FlatBillCategory = 'General' THEN FlatBill.FlatBillCategory END) AS 'General', 
    COUNT(CASE WHEN FlatBill.FlatBillCategory = 'Claimable' THEN FlatBill.FlatBillCategory END) AS 'Claimable', 
    COUNT(CASE WHEN FlatBill.FlatBillCategory = 'Warranty' THEN FlatBill.FlatBillCategory END) AS 'Warranty', 
    COUNT(CASE WHEN FlatBill.FlatBillCategory = 'Deposit' THEN FlatBill.FlatBillCategory END) AS 'Deposit',
	  COUNT(CASE WHEN FlatBill.FlatBillStatus = '1' THEN FlatBill.FlatBillStatus END) AS 'Confirm',
	    COUNT(CASE WHEN FlatBill.FlatBillStatus = '2' and FlatBill.FlatBillCategory not in ('Partially-Paid','General','Claimable','Warranty','Deposit')   THEN FlatBill.FlatBillStatus END) AS 'New',
		  COUNT(CASE WHEN FlatBill.FlatBillStatus = '3' THEN FlatBill.FlatBillStatus END) AS 'Reject'
	FROM FlatBill where FlatBill.FlatBillNumberIC=@MykadID
	and MONTH (FlatBill.FlatBillDate) = MONTH(getDate())
	and YEAR (FlatBill.FlatBillDate) = YEAR(getDate())



    
END
