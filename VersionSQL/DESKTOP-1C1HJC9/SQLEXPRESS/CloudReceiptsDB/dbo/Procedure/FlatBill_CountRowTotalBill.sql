/****** Object:  Procedure [dbo].[FlatBill_CountRowTotalBill]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FlatBill_CountRowTotalBill]
@CloudreceiptAccNo varchar (100)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


  --select top 1 FlatBillReceiptNo from FlatBill where CloudreceiptAccNo=@CloudreceiptAccNo order by ID desc

    SELECT MAX(LEFT(RIGHT(FlatBillReceiptNo,4),2))  AS FlatBillReceiptNo from FlatBill where CloudreceiptAccNo=@CloudreceiptAccNo

-- 		Select Top 1 FlatBillReceiptNo FROM
--(
-- SELECT ROW_NUMBER() OVER(ORDER BY ID) FlatBillReceiptNo from FlatBill  where CloudreceiptAccNo=@CloudreceiptAccNo
-- )as FlatBillReceiptNo order by FlatBillReceiptNo desc

END

--select ID,FlatBillReceiptNo from FlatBill where CloudreceiptAccNo='CRWAL-606992'
 --select top 1 FlatBillReceiptNo from FlatBill where CloudreceiptAccNo='CRKli-401586' order by ID desc





--   select  top 1 ROW_NUMBER() OVER(ORDER BY F.ID DESC) AS FlatBillReceiptNo  from FlatBill F where f.CloudreceiptAccNo='CRian-315297' order by ID desc

--      select  COUNT(*) from FlatBill F where f.CloudreceiptAccNo='CRian-315297' order by ID desc


--	    select top 1 FlatBillReceiptNo from FlatBill where CloudreceiptAccNo='CRian-315297' order by ID desc


--		Select Top 1 FlatBillReceiptNo FROM
--(
-- SELECT ROW_NUMBER() OVER(ORDER BY ID) FlatBillReceiptNo from FlatBill  where CloudreceiptAccNo='CRian-315297'
-- )as FlatBillReceiptNo order by FlatBillReceiptNo desc




   -- ni betui punya SELECT MAX(LEFT(RIGHT(FlatBillReceiptNo,4),2))   from FlatBill where CloudreceiptAccNo='CRian-315297'
   
   
   
   
   
   
   
  --  order by ID desc

  -- SELECT MAX(SELECT LEFT(RIGHT(FlatBillReceiptNo,4),2)) AS LargestPrice from FlatBill where CloudreceiptAccNo='CRian-315297' order by ID desc

  --SELECT LEFT(RIGHT('CRian-315297-83-1',4),2)


  --SELECT MAX(LEFT(RIGHT(FlatBillReceiptNo,4),2))  AS FlatBillReceiptNo from FlatBill where CloudreceiptAccNo='CRKli-401586'
