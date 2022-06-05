/****** Object:  Procedure [dbo].[Enterprise_UpdateStartedNo]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[Enterprise_UpdateStartedNo]
  
   
	@EnterpriseAccNo varchar (250)= null,
	@Jenis varchar (250)= null,
	@UpadateVal int
	
AS 
BEGIN 
     SET NOCOUNT ON 


	 if(@Jenis='Resit')
	  Update dbo.Enterprise          
    Set ReceiptNoStarted=@UpadateVal
	where EnterpriseAccNo =@EnterpriseAccNo
  if(@Jenis='Invoice')
	  Update dbo.Enterprise          
    Set InvoiceNoStarted=@UpadateVal
	where EnterpriseAccNo =@EnterpriseAccNo
	  if(@Jenis='Quotation')
	  Update dbo.Enterprise          
    Set QuotationNoStarted=@UpadateVal
	where EnterpriseAccNo =@EnterpriseAccNo

 
END
