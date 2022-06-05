/****** Object:  Procedure [dbo].[Enterprise_geStartedNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Enterprise_geStartedNo]
  
   
	@EnterpriseAccNo varchar (250)= null
	
AS 
BEGIN 
     SET NOCOUNT ON 


	 select [dbo].[FlatReceipt_CountRow] (E.EnterpriseAccNo) AS ReceiptNoStarted,[dbo].[FlatInvoice_CountRow] (E.EnterpriseAccNo) AS InvoiceNoStarted,[dbo].[FlatQuotation_CountRow] (E.EnterpriseAccNo) AS QuotationNoStarted from Enterprise E where E.EnterpriseAccNo =@EnterpriseAccNo

	

 
END

	BEGIN

	Delete from FlatInvoiceItemsDetails
		where CloudReceiptNo=@EnterpriseAccNo and isSent='NO'


	END
