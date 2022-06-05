/****** Object:  Procedure [dbo].[InvoiceSetting_getByInvoiceNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[InvoiceSetting_getByInvoiceNo]  

 @InvoiceNo varchar(150)
     
   
	 
AS 
BEGIN 
     SET NOCOUNT ON 
     
  select * from InvoiceSetting
	  where InvoiceNo =@InvoiceNo

	END
