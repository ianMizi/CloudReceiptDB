/****** Object:  Procedure [dbo].[Load_FlatInvoiceItemsDetails]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Load_FlatInvoiceItemsDetails]  


 @InvoiceNo varchar (150)=null,
  @EnterPriseAccNo varchar (350)=null  
	 
AS 
BEGIN 
     SET NOCOUNT ON 

	  select ROW_NUMBER() over (order by FD.ID asc) AS No,FD.* from FlatInvoiceItemsDetails FD where FD.InvoiceNo=@InvoiceNo and FD.CloudReceiptNo=@EnterPriseAccNo

	END

	--select * from FlatInvoiceItemsDetails order by ID desc
