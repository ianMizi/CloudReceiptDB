/****** Object:  Function [dbo].[FlatInvoice_RowStatus]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[FlatInvoice_RowStatus](@InvoiceNo  varchar(100),@EnterpriseAccNo varchar(100))
RETURNS VARCHAR(500)
AS
BEGIN
  
	    DECLARE @RowStatus as varchar (300)
		   --DECLARE @Result as varchar
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */

     SET @RowStatus = (select top 1 RowStatus  from FlatInvoice where FlatInvoiceNo=@InvoiceNo and CloudreceiptAccNo=@EnterpriseAccNo order by ID desc)
	--print @CurrentOutStandingBalance
	-- SET @Result=(select convert(varchar,convert(decimal(8,2),@TotalPaidBalance)))

    RETURN @RowStatus
END

--Select * From FlatInvoice
