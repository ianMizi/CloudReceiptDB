/****** Object:  Procedure [dbo].[EnterpriseSubscriberEmailAndSMS_getByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[EnterpriseSubscriberEmailAndSMS_getByEnterpriseAccNo]  

	@EnterpriseAccNo varchar (150)= null
	--@Type varchar (150)= null
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 
	 --if(@Type ='Push')

  --select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No, CM.ID, ES.SubcriberAccNo,ES.SubscribedDate, CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,CM.CR_PhonePlatform,[dbo].[getPlayerIDByCR_MobileUserAccountNo] (CM.CR_AccountNo) as PlayerID,ES.SearchCol from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo=@EnterpriseAccNo and Es.SubscribedNewsAndPromotion=1
 
 
  -- if(@Type ='EmailSMS')
   --Open to Enterprise Only
  --select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No, CM.ID, ES.SubcriberAccNo,ES.SubscribedDate, CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,CM.CR_PhonePlatform,[dbo].[getPlayerIDByCR_MobileUserAccountNo] (CM.CR_AccountNo) as PlayerID,ES.SearchCol from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo=@EnterpriseAccNo and Es.SubscribedEmailAndSMS=1

    select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No, CM.ID, ES.SubcriberAccNo,ES.SubscribedDate, CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,[dbo].[getPlayerIDByCR_MobileUserAccountNo] (CM.CR_AccountNo) as PlayerID,ES.SearchCol from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo=@EnterpriseAccNo and Es.SubscribedEmailAndSMS=1
    

	  
	END


	--select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No, CM.ID, ES.SubcriberAccNo,ES.SubscribedDate, CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,'NA' as PlayerID,ES.SearchCol from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
 -- on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo='CRWAL-606992' and Es.SubscribedEmailAndSMS=1
    

	

	  


	 -- select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No,    ES.SubcriberAccNo,ES.SubscribedDate,ES.SubscribedNewsAndPromotion,  CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,CM.CR_PhonePlatform,CM.CR_Version,[dbo].[getPlayerIDByCR_MobileUserAccountNo] (CM.CR_AccountNo) as PlayerID from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo='CRPRO-24141'



		--  select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No, CM.ID,   ES.SubcriberAccNo,ES.SubscribedDate, CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,CM.CR_PhonePlatform,[dbo].[getPlayerIDByCR_MobileUserAccountNo] (CM.CR_AccountNo) as PlayerID,ES.SearchCol from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo='CRWAL-606992' and Es.SubscribedEmailAndSMS=1

  --	 select * from EnterpriseSubscriber
	 --select * from CloudReceipts_MobileUser

	 --select * from CloudReceipts_MobileUser where CR_AccountNo in ('0122604435-472960','0133376958-346273','601113218926-45151')
