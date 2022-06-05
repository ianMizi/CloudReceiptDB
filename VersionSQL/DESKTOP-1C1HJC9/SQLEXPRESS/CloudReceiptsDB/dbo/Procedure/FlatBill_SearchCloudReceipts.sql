/****** Object:  Procedure [dbo].[FlatBill_SearchCloudReceipts]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FlatBill_SearchCloudReceipts]
@query VARCHAR (MAX)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @querys NVARCHAR(MAX);
--SET @querys = 'SELECT  SUM(FlatBillTotalAmount) OVER () As TotalAmount, SUM(FlatBillTax) OVER () As TotalTax,ID,CloudreceiptAccNo,FlatBillDate,FlatBillWorkshop,FlatBillStatus,FlatBillPaymentType,FlatBillShotDesc,FlatBillID,FlatBillAccountNo,FlatBillTax,FlatBillTotalAmount,FlatBillFinalAmount FROM FlatBill Where 1=1  '+@query    
SET @querys = 'SELECT  SUM(cast(FlatBillTotalAmount as decimal (18,2))) OVER () As TotalAmount, SUM(cast(FlatBillTax as decimal (18,2))) OVER () As TotalTax,ID,CloudreceiptAccNo,FlatBillDate,FlatBillWorkshop,FlatBillStatus,FlatBillPaymentType,FlatBillShotDesc,FlatBillID,FlatBillAccountNo,FlatBillTax,FlatBillTotalAmount,FlatBillFinalAmount,FlatBillCurrentPaid, [dbo].[getReceiptTemplateCode] (CloudreceiptAccNo) AS ReceiptTemplateCode,FlatBillCategory FROM FlatBill Where 1=1  '+@query    


EXECUTE(@querys)
    
END
