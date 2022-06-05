/****** Object:  Procedure [dbo].[ReceiptCalculationInfo_ByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[ReceiptCalculationInfo_ByEnterpriseAccNo]
@EnterpriseAccNo varchar (50)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT 
	SUM(CASE WHEN FlatBill.RowStatus = 'Active' THEN FlatBill.FlatBillCurrentPaidDecimal END) AS 'CollectionAmount', 
   SUM(CASE WHEN FlatBill.RowStatus = 'InActive' THEN FlatBill.FlatBillCurrentPaidDecimal END) AS 'CancelAmount', 
     SUM(CASE WHEN FlatBill.RowStatus = 'Refund' THEN FlatBill.FlatBillCurrentPaidDecimal END) AS 'RefundAmount', 
	 SUM(CASE WHEN FlatBill.FlatBillCategory = 'Deposit' THEN FlatBill.FlatBillDeposit END) AS 'Deposite'
	FROM FlatBill where FlatBill.CloudreceiptAccNo=@EnterpriseAccNo
	



    
END
