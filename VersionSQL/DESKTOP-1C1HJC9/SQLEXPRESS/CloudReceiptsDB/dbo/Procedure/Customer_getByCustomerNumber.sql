/****** Object:  Procedure [dbo].[Customer_getByCustomerNumber]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE Customer_getByCustomerNumber
@CustomerNumber varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

      select * from Customers  Where Customers.CustomerNumber=@CustomerNumber
    
END
