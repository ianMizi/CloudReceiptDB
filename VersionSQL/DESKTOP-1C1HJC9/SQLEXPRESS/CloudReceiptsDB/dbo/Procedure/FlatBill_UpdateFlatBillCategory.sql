/****** Object:  Procedure [dbo].[FlatBill_UpdateFlatBillCategory]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[FlatBill_UpdateFlatBillCategory]
@ID int,
@FlatBillID int,
@FlatBillUpdateBy varchar (50),
@FlatBillCategory varchar (250)

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
update FlatBill  
set [FlatBillCategory]=@FlatBillCategory,FlatBillUpdateBy=@FlatBillUpdateBy,FlatBillUpdateDate=GETDATE()


where FlatBillID =@FlatBillID and ID=@ID


END
