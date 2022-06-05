/****** Object:  Procedure [dbo].[FlatInvoice_Cancel]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FlatInvoice_Cancel]
@ID int,
@EnterpriseAccNo varchar (250),
@Rowstatus varchar (250),
@UpdateBy varchar (250),
@CancelNote varchar (750)
AS

BEGIN
  
	SET NOCOUNT ON;
update FlatInvoice  
set RowStatus=@Rowstatus,FlatInvoiceUpdateDate=GETDATE(),FlatInvoiceUpdateby=@UpdateBy,FlatInvoiceNote=@CancelNote


where ID =@ID and CloudreceiptAccNo=@EnterpriseAccNo


END
