/****** Object:  Procedure [dbo].[Enterprise_getDetails]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Enterprise_getDetails]

@ID as int,
@EnterpriseAccNo as varchar(250),
@SubcriberAccNo as varchar(250)

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

--Select E.* , ES.SubscribedCloudReceipt,ES.SubscribedNewsAndPromotion  from Enterprise E inner join EnterpriseSubscriber ES on E.EnterpriseAccNo=ES.EnterpriseAccNo where E.EnterpriseAccNo=@EnterpriseAccNo
--and ES.SubcriberAccNo=@SubcriberAccNo

Select E.* , [dbo].[Notification_isCloudReceiptSubscribed] (@SubcriberAccNo,@EnterpriseAccNo) as SubscribedCloudReceipt , [dbo].[Notification_isNewsAndAdvertisementSubscribed] (@SubcriberAccNo,@EnterpriseAccNo) as SubscribedNewsAndPromotion from Enterprise E  where E.EnterpriseAccNo=@EnterpriseAccNo

END


--select * from [dbo].[EnterpriseSubscriber] ES inner join Enterprise E on E.EnterpriseAccNo = ES.EnterpriseAccNo where E.EnterpriseAccNo ='CRKli-401586'
--and ES.SubcriberAccNo='830219085057-346273'

--SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
--FROM Orders
--RIGHT JOIN Employees
--ON Orders.EmployeeID = Employees.EmployeeID
--Where Orders.OrderID is null


--Select E.* , ES.SubscribedCloudReceipt,ES.SubscribedNewsAndPromotion  from Enterprise E inner  join EnterpriseSubscriber ES on E.EnterpriseAccNo=ES.EnterpriseAccNo where E.EnterpriseAccNo='CRASTRO-004'
--and ES.SubcriberAccNo='811103105614-472960'



--select SubscribedCloudReceipt from EnterpriseSubscriber where SubcriberAccNo='811103105614-472960' and EnterpriseAccNo='CRASTRO-004'

--Select E.* , [dbo].[Notification_isNewsAndAdvertisementSubscribed] ('811103105614-472960','CRASTRO-004' ) as SubscribedNewsAndPromotion  from Enterprise E  where E.EnterpriseAccNo='CRASTRO-004'
--Select E.* , [dbo].[Notification_isCloudReceiptSubscribed] ('811103105614-472960','CRASTRO-004' ) as SubscribedCloudReceipt , [dbo].[Notification_isNewsAndAdvertisementSubscribed] ('811103105614-472960','CRASTRO-004' ) as SubscribedNewsAndPromotion from Enterprise E  where E.EnterpriseAccNo='CRASTRO-004'
