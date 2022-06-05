/****** Object:  Procedure [dbo].[StampContentDefaultTemplate_ResetByID]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampContentDefaultTemplate_ResetByID]
@ID int,
@StampCardRowID int

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
--select  b.PlateNumber,b.VehicleModel ,b.CustomerName,b.CustomerIdentity,b.Mileage,b.TotalAmount,b.UTCBillDate,bd.BillId,bd.Quantity,bd.Description,bd.Price,bd.Amount,ud.ReferralPerson,c.CompanyName from Bills b inner join BillDetails bd
--  on b.BillId = bd.BillId
--  inner join UserDetails ud on b.UserDetailId = ud.UserDetailId
--inner join Companies c on c.CompanyId = ud.CompanyId
--  where b.CustomerIdentity='1111111'
--  order by b.UTCBillDate desc


Select StampContent,TextOne from
[dbo].[StampContentDefaultTemplate]
where ID=@ID



Declare @StampContents as varchar(5500)
Declare @TextOnes as varchar(50)

set @StampContents = (Select StampContent from
[dbo].[StampContentDefaultTemplate]
where ID=@ID) 


set @TextOnes = (Select TextOne from
[dbo].[StampContentDefaultTemplate]
where ID=@ID) 

update StampCard set TextOne=@TextOnes where ID=@StampCardRowID

update StampCard set isRedeemItem='NO' where ID=@StampCardRowID

END
