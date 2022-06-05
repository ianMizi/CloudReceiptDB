/****** Object:  Procedure [dbo].[Load_FlatInvoice]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Load_FlatInvoice]  


 @InvoiceNo varchar (150)=null
     
	 
AS 
BEGIN 
     SET NOCOUNT ON 

	 select * from FlatInvoice where FlatInvoiceNo=@InvoiceNo

	END
