/****** Object:  Procedure [dbo].[FlatBill_UpdateFlatBillStatus]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[FlatBill_UpdateFlatBillStatus]

@FlatBillID int,
@FlatBillUpdateBy varchar (50),
@FlatBillStatus varchar (50)

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
update FlatBill  
set FlatBillStatus=@FlatBillStatus,FlatBillUpdateBy=@FlatBillUpdateBy,FlatBillUpdateDate=GETDATE()


where FlatBillID =@FlatBillID


END
