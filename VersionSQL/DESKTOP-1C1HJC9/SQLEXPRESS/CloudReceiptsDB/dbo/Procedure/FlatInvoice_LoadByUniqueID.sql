/****** Object:  Procedure [dbo].[FlatInvoice_LoadByUniqueID]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FlatInvoice_LoadByUniqueID]  


 @UniqueID varchar (350)=null,
 @EnterpriseAccNo varchar (350)=null
     
	 
AS 
BEGIN 
     SET NOCOUNT ON 

	 select top 1 * from FlatInvoice where FlatInvoiceUniqueID=@UniqueID and CloudreceiptAccNo=@EnterpriseAccNo order by ID Desc

	END

	 --select top 1 * from FlatInvoice where FlatInvoiceNo ='QUO/CRKli-95115/3' order by ID Desc

	 	 --select top 1 * from FlatInvoice where FlatInvoiceUniqueID='c3231a70-4e75-4b20-6447-2512325250ee' and CloudreceiptAccNo='CRKli-95115' order by ID Desc
