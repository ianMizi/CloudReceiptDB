/****** Object:  Procedure [dbo].[OneSignal_UpdateSendStatusPushNotification]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[OneSignal_UpdateSendStatusPushNotification]
@ID int
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

update FlatBill
set FlatBillPushNotificationSendStatus='1'
where ID=@ID



    
END

--select * from CloudReceipts_MobileUser
--select * from FlatBill

--update FlatBill
--set FlatBillPaymentType='Cash',FlatBillPushNotificationSendStatus='0'
