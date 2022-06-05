/****** Object:  Procedure [dbo].[OneSignal_SendPushNotification]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[OneSignal_SendPushNotification]
@MyKad varchar (50)
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

 DECLARE @ID int

select top 1 bd.ID, b.CR_PlayerID,bd.FlatBillWorkshop,bd.FlatBillFinalAmount,bd.FlatBillPaymentType,bd.FlatBillPushNotificationSendStatus,bd.FlatBillShotDesc,bd.FlatBillCurrentPaid from CloudReceipts_MobileUser b inner join FlatBill bd
  on b.CR_MykadNo = bd.FlatBillNumberIC

  where b.CR_MykadNo=@MyKad and bd.FlatBillPushNotificationSendStatus='0'
  order by bd.ID desc

  --set @ID=(select fb.ID from flatBill fb inner join CloudReceipts_MobileUser cm on fb.FlatBillNumberIC = cm.CR_MykadNo and fb.FlatBillPushNotificationSendStatus='0')
 set @ID=(select top 1 fb.ID from flatBill fb where fb.FlatBillNumberIC=@MyKad and fb.FlatBillPushNotificationSendStatus='0' order by fb.ID desc)
 Exec dbo.OneSignal_UpdateSendStatusPushNotification @ID
    
END
