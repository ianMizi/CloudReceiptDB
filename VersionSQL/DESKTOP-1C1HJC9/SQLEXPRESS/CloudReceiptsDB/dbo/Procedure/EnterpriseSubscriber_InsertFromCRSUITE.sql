/****** Object:  Procedure [dbo].[EnterpriseSubscriber_InsertFromCRSUITE]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[EnterpriseSubscriber_InsertFromCRSUITE]
  
	@SubcriberAccNo varchar (250)= null,
	@EnterpriseAccNo varchar (250)= null,
	@SubscriberName varchar (250)= null,
	@UserOperator varchar (150)= null,	
	@SubscriberPhoneNo varchar (250)= null,
	@SubscriberEmail varchar (250)= null
AS 
BEGIN 
     SET NOCOUNT ON 

	 Declare @checkSubscriberAccNo varchar (250) 
	 --set @checkSubscriberAccNo=(select CR_AccountNo from CloudReceipts_MobileUser where CR_PhoneNumber=@SubscriberPhoneNo And CR_Email=@SubscriberEmail)
  set @checkSubscriberAccNo=(select CR_AccountNo from CloudReceipts_MobileUser where CR_PhoneNumber=@SubscriberPhoneNo or CR_Email=@SubscriberEmail)
  if @checkSubscriberAccNo is null
     set @checkSubscriberAccNo=@SubcriberAccNo
	 else
	set @checkSubscriberAccNo=@checkSubscriberAccNo

 
     INSERT INTO dbo.EnterpriseSubscriber
          ( 
          SubcriberAccNo ,
	EnterpriseAccNo,
	SubscribedDate,
	CreatedDate,
	CreatedBy,
	SubscribedCloudReceipt,
	SubscribedNewsAndPromotion,
	SubscribedEmailAndSMS,
	SearchCol
                         
          ) 
     VALUES 
          ( 
    @checkSubscriberAccNo ,
	@EnterpriseAccNo,
	GETDATE(),
	GETDATE(),
	@UserOperator,
	'1',
	'1',
	'1',
     @SubscriberName+'|'+@SubscriberPhoneNo+'|'+@SubscriberEmail
                             
          ) 

END


--select * from EnterpriseSubscriber


--SELECT *
--  FROM [CloudReceiptsDB].[dbo].[EnterpriseSubscriber]
--  order by id desc

--  SELECT *
--  FROM [CloudReceiptsDB].[dbo].[CloudReceipts_MobileUser]
--  order by id desc

  --delete  from [EnterpriseSubscriber]
  --where ID=84
