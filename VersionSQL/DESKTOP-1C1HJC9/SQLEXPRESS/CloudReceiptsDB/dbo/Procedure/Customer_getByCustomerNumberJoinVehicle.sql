/****** Object:  Procedure [dbo].[Customer_getByCustomerNumberJoinVehicle]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Customer_getByCustomerNumberJoinVehicle]
@CustomerNumber varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

      select * from Customers  inner join Vehicles
  on Customers.CustomerId = Vehicles.CustomerId
  inner join VehicleModels on  Vehicles.VehicleModelId= VehicleModels.VehicleModelId
  inner join VehicleTypes on VehicleModels.VehicleTypeId= VehicleTypes.VehicleTypeId
  Where Customers.CustomerNumber=@CustomerNumber
    
END
