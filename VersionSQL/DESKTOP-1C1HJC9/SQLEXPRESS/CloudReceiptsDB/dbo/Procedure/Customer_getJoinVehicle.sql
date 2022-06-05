/****** Object:  Procedure [dbo].[Customer_getJoinVehicle]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE Customer_getJoinVehicle
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

      select * from Customers  inner join Vehicles
  on Customers.CustomerId = Vehicles.CustomerId
    
END
