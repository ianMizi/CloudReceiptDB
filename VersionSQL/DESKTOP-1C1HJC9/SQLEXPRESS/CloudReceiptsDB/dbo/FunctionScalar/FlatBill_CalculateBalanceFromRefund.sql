/****** Object:  Function [dbo].[FlatBill_CalculateBalanceFromRefund]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[FlatBill_CalculateBalanceFromRefund](@ReceiptNo varchar(100))
RETURNS  decimal (18,2)
AS
BEGIN
    DECLARE @FlatBillOutStandingBalancedCheck  as varchar(100)
	DECLARE @FlatBillOutStandingBalanceDecimal as decimal (18,2)=0.00
	DECLARE @FlatBillOutStandingBalanced as decimal (18,2)=0.00
    DECLARE @RefundAmount as decimal (18,2)=0.00
	    DECLARE @TotalOutStandingBalanceForRefund as decimal (18,2)=0.00
		DECLARE @TotalOutStandingBalanceForRefunds as varchar(100)

	--	if(@RowStatus='Refund')
	SET	@FlatBillOutStandingBalancedCheck =(select top 1 FlatBillOutStandingBalance  from FlatBill where FlatBillReceiptNo=@ReceiptNo and RowStatus ='Active' order by ID desc)

 

Set @FlatBillOutStandingBalanced =(SELECT CASE WHEN @FlatBillOutStandingBalancedCheck = 'NaN' THEN '0' ELSE @FlatBillOutStandingBalancedCheck END)
--print @FlatBillOutStandingBalanced
 
	SET @RefundAmount=( select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo  and RowStatus ='Refund' )


	

--SET	@FlatBillOutStandingBalanced =(select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo  and RowStatus ='Active')
--SET @RefundAmount=(select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo=@ReceiptNo  and RowStatus ='Refund')


  if @RefundAmount is null
     set @RefundAmount=0.0
  --if @FlatBillOutStandingBalanced='NaN'
  --   set @FlatBillOutStandingBalanced=0.0

--print @RefundAmount
--print @FlatBillOutStandingBalanced
SET @TotalOutStandingBalanceForRefund=(@FlatBillOutStandingBalanced-@RefundAmount)

--print @TotalOutStandingBalanceForRefund


    RETURN @TotalOutStandingBalanceForRefund
END




--select top 1 FlatBillOutStandingBalance  from FlatBill where FlatBillReceiptNo='CRWAL-606992-72-1' and RowStatus ='Active' order by ID desc
--select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo='CRWAL-606992-72-1'  and RowStatus ='Active' 
--select SUM(FlatBillCurrentPaidDecimal)  from FlatBill where FlatBillReceiptNo='CRWAL-606992-72-1'  and RowStatus ='Refund' 
