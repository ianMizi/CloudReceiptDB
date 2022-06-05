﻿/****** Object:  Procedure [dbo].[FFlatInvoiceItemsDetails_RecentlyUsed]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FFlatInvoiceItemsDetails_RecentlyUsed]
@EnterpriseAccountNo varchar (150)

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
Select top 10 * from FlatInvoiceItemsDetails where CloudReceiptNo=@EnterpriseAccountNo  and isSent='YES' order by ID desc

END


--Select top 10 * from FlatReceiptsDetails where FlatReceiptsBSCloudreceiptAccountNo='CRKli-401586' order by ID desc
