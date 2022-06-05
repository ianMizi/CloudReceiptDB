/****** Object:  Procedure [dbo].[EnterpriseSubscriber_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[EnterpriseSubscriber_Insert]
  
	@SubcriberAccNo varchar (250)= null,
	@EnterpriseAccNo varchar (250)= null,
	@SubscribedCloudReceipt int= null,
	@SubscribedNewsAndPromotion int= null,
	@User varchar (250)= null
AS 
BEGIN 
     SET NOCOUNT ON 

	 Declare @SubscriberName  varchar (200)
	 Declare @SubscriberPhoneNo  varchar (200)
	  Declare @SubscriberEmail  varchar (200)
	   
	   set @SubscriberName = (select CR_AccountName from CloudReceipts_MobileUser where CR_AccountNo=@SubcriberAccNo)
	      set @SubscriberPhoneNo = (select CR_PhoneNumber from CloudReceipts_MobileUser where CR_AccountNo=@SubcriberAccNo)
		   set @SubscriberEmail = (select CR_Email from CloudReceipts_MobileUser where CR_AccountNo=@SubcriberAccNo)
 IF EXISTS (SELECT EnterpriseAccNo,SubcriberAccNo  FROM EnterpriseSubscriber WHERE EnterpriseAccNo=@EnterpriseAccNo and SubcriberAccNo=@SubcriberAccNo and 1=1)
 
 Update dbo.EnterpriseSubscriber
          
    Set
	ModifiedDate=GETDATE(),
	ModifiedBy=@User,
	SubscribedCloudReceipt=@SubscribedCloudReceipt,
	SubscribedNewsAndPromotion=@SubscribedNewsAndPromotion
	
	where EnterpriseAccNo =@EnterpriseAccNo and 1=1
 
 ELSE
 
     INSERT INTO dbo.EnterpriseSubscriber
          ( 
          SubcriberAccNo ,
	EnterpriseAccNo,
	SubscribedDate,
	CreatedDate,
	CreatedBy,
	SubscribedCloudReceipt,
	SubscribedNewsAndPromotion,
	SearchCol
                         
          ) 
     VALUES 
          ( 
    @SubcriberAccNo ,
	@EnterpriseAccNo,
	GETDATE(),
	GETDATE(),
	@User,
	@SubscribedCloudReceipt,
	@SubscribedNewsAndPromotion,
     @SubscriberName+'|'+@SubscriberPhoneNo+'|'+@SubscriberEmail
                             
          ) 

END
