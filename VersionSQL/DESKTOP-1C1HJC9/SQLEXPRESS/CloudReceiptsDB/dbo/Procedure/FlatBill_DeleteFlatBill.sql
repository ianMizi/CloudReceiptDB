/****** Object:  Procedure [dbo].[FlatBill_DeleteFlatBill]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FlatBill_DeleteFlatBill]
@ID int,
@FlatBillBillNo  varchar (250),
@FlatBillUpdateBy varchar (50),
@FlatBillReceiptNo varchar (150),
@Rowstatus varchar (150)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
update FlatBill  
set RowStatus=@Rowstatus,FlatBillUpdateDate=GETDATE(),FlatBillUpdateBy=@FlatBillUpdateBy


where FlatBillBillNo =@FlatBillBillNo and FlatBillReceiptNo=@FlatBillReceiptNo


END
