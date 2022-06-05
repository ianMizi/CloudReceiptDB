/****** Object:  Function [dbo].[FlatBill_getRefundStatus]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION [dbo].[FlatBill_getRefundStatus](@ReceiptNo varchar(100))
RETURNS varchar (350)
AS
BEGIN

    DECLARE @TotalAmountPaid as decimal (18,2)
    DECLARE @TotalAmountRefund as decimal (18,2)
	  DECLARE @Result as varchar(50)
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @TotalAmountPaid = (select sum(FlatBillCurrentPaidDecimal)from FlatBill where FlatBillReceiptNo=@ReceiptNo and RowStatus <> 'Refund' and RowStatus <> 'Resend' )
	   SET @TotalAmountRefund = (select sum(FlatBillCurrentPaidDecimal)from FlatBill where FlatBillReceiptNo=@ReceiptNo and RowStatus = 'Refund')
	
	if(@TotalAmountRefund = @TotalAmountPaid)
	SET @Result='Full Refund'
	if(@TotalAmountRefund <  @TotalAmountPaid)
	SET @Result='Partial Refund'
	if(@TotalAmountRefund >  @TotalAmountPaid)
	SET @Result='Over Refund'


	--print @Result
   
   

    RETURN @Result
END



--select sum(cast(FlatBillCurrentPaid as decimal(18,2)))from FlatBill where FlatBillReceiptNo='CRian-315297-46-1' 
