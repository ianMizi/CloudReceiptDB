/****** Object:  Procedure [dbo].[EnterpriseSubscriber_getByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[EnterpriseSubscriber_getByEnterpriseAccNo]  

	@EnterpriseAccNo varchar (150)= null
	
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 

  select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No,    ES.SubcriberAccNo,ES.SubscribedDate, CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,CM.CR_PhonePlatform,[dbo].[getPlayerIDByCR_MobileUserAccountNo] (CM.CR_AccountNo) as PlayerID,ES.SearchCol from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo=@EnterpriseAccNo and Es.SubscribedNewsAndPromotion=1


    

	  
	END





	 --select * from EnterpriseSubscriber
	  


	 -- select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No,    ES.SubcriberAccNo,ES.SubscribedDate,ES.SubscribedNewsAndPromotion,  CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,CM.CR_PhonePlatform,CM.CR_Version,[dbo].[getPlayerIDByCR_MobileUserAccountNo] (CM.CR_AccountNo) as PlayerID from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo='CRPRO-24141'



		
