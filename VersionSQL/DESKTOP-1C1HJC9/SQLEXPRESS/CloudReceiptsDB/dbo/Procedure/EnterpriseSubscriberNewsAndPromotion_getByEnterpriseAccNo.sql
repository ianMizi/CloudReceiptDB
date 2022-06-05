/****** Object:  Procedure [dbo].[EnterpriseSubscriberNewsAndPromotion_getByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[EnterpriseSubscriberNewsAndPromotion_getByEnterpriseAccNo]  

	@EnterpriseAccNo varchar (150)= null,
	@Type varchar (150)= null
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 




	
   
  
  --Import_ExternalClients EnterpriseAccNo is COMPANY ACCOUNT NO






	 if(@Type ='Push')

  --select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No, CM.ID,CM.CR_AccountNo as SubcriberAccNo,ES.SubscribedDate, CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,CM.CR_PhonePlatform,[dbo].[getPlayerIDByCR_MobileUserAccountNo] (CM.CR_AccountNo) as PlayerID,ES.SearchCol,CM.CR_PhoneImeiNo as CompanyName,CM.CR_IsRememberPwd as CompanyAddress from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo=@EnterpriseAccNo and Es.SubscribedNewsAndPromotion=1 AND CM.CR_PlayerID <>'InsertFromCRSuite'
 
 

 
 --select ROW_NUMBER() OVER (ORDER BY IM.ID DESC) AS No,IM.ID,IM.ClientAccountNo as SubcriberAccNo,IM.CreatedDate As SubscribedDate,IM.Name as CR_AccountName,IM.Email as CR_Email,IM.MobilePhone as CR_PhoneNumber,IM.Name as CR_PhonePlatform,IM.PlayerID,IM.SearchCol,[dbo].[getEnterpriseNameByEnterpriseAccNo](IM.ProjectAccountNo) as CompanyName,[dbo].[getEnterpriseAddressByEnterpriseAccNo](IM.ProjectAccountNo) as CompanyAddress from  Import_ExternalClients IM
 --where IM.ProjectAccountNo=@EnterpriseAccNo and IM.PN_Status='Y' and IM.RowStatus='Active'


   select ROW_NUMBER() OVER (ORDER BY IM.ID DESC) AS No,IM.ID,IM.ClientAccountNo as SubcriberAccNo,IM.CreatedDate As SubscribedDate,IM.Name as CR_AccountName,IM.Email as CR_Email,IM.MobilePhone as CR_PhoneNumber,IM.Name as CR_PhonePlatform,IM.PlayerID,IM.SearchCol,IE.EnterpriseName as CompanyName,IE.EnterpriseAddress as CompanyAddress,IE.EnterpriseAccNo as CompanyAccNo from  Import_ExternalClients IM left join
	 Import_ExternalClients_Enterprise IE on IM.EnterpriseAccNo=IE.EnterpriseAccNo
     where IM.ProjectAccountNo=@EnterpriseAccNo and  IM.RowStatus='Active' and IM.PN_Status='Y'
   
   
   --if(@Type ='EmailSMS')
   --Open to Enterprise Only
  --select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No, CM.ID, ES.SubcriberAccNo,ES.SubscribedDate, CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,CM.CR_PhonePlatform,[dbo].[getPlayerIDByCR_MobileUserAccountNo] (CM.CR_AccountNo) as PlayerID,ES.SearchCol from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo=@EnterpriseAccNo and Es.SubscribedEmailAndSMS=1


  else
    if(@Type ='EmailSMS')
	-- select ROW_NUMBER() OVER (ORDER BY IM.ID DESC) AS No,IM.ID,IM.ClientAccountNo as SubcriberAccNo,IM.CreatedDate As SubscribedDate,IM.Name as CR_AccountName,IM.Email as CR_Email,IM.MobilePhone as CR_PhoneNumber,IM.Name as CR_PhonePlatform,IM.PlayerID,IM.SearchCol,[dbo].[getEnterpriseNameByEnterpriseAccNo](IM.ProjectAccountNo) as CompanyName,[dbo].[getEnterpriseAddressByEnterpriseAccNo](IM.ProjectAccountNo) as CompanyAddress from  Import_ExternalClients IM
 --where IM.ProjectAccountNo=@EnterpriseAccNo and  IM.RowStatus='Active'


  select ROW_NUMBER() OVER (ORDER BY IM.ID DESC) AS No,IM.ID,IM.ClientAccountNo as SubcriberAccNo,IM.CreatedDate As SubscribedDate,IM.Name as CR_AccountName,IM.Email as CR_Email,IM.MobilePhone as CR_PhoneNumber,IM.Name as CR_PhonePlatform,IM.PlayerID,IM.SearchCol,IE.EnterpriseName as CompanyName,IE.EnterpriseAddress as CompanyAddress,IE.EnterpriseAccNo as CompanyAccNo from  Import_ExternalClients IM left join
	 Import_ExternalClients_Enterprise IE on IM.EnterpriseAccNo=IE.EnterpriseAccNo
     where IM.ProjectAccountNo=@EnterpriseAccNo and  IM.RowStatus='Active'



 --select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No, CM.ID, ES.SubcriberAccNo,ES.SubscribedDate, CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,CM.CR_PhonePlatform,[dbo].[getPlayerIDByCR_MobileUserAccountNo] (CM.CR_AccountNo) as PlayerID,ES.SearchCol from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
 -- on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo=@EnterpriseAccNo and Es.SubscribedEmailAndSMS=1





  -- select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS No, CM.ID, CM.CR_AccountNo as SubcriberAccNo,ES.SubscribedDate, CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,CM.CR_PhonePlatform,'NA' as PlayerID,ES.SearchCol,CM.CR_PhoneImeiNo as CompanyName,CM.CR_IsRememberPwd as CompanyAddress from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  --on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo=@EnterpriseAccNo and Es.SubscribedEmailAndSMS=1

 --ELSE


 -- if(@EnterpriseAccNo = 'CRInt-51958')
 --select ROW_NUMBER() OVER (ORDER BY IM.ID DESC) AS No,IM.ID,IM.ClientAccountNo as SubcriberAccNo,IM.CreatedDate As SubscribedDate,IM.Name as CR_AccountName,IM.Email as CR_Email,IM.MobilePhone as CR_PhoneNumber,IM.Name as CR_PhonePlatform,IM.PlayerID,IM.SearchCol,[dbo].[getEnterpriseNameByEnterpriseAccNo](IM.ProjectAccountNo) as CompanyName,[dbo].[getEnterpriseAddressByEnterpriseAccNo](IM.ProjectAccountNo) as CompanyAddress from  Import_ExternalClients IM
   
  
	  
	END


	--	 select ROW_NUMBER() OVER (ORDER BY IM.ID DESC) AS No,IM.ID,IM.ClientAccountNo as SubcriberAccNo,IM.CreatedDate As SubscribedDate,IM.Name as CR_AccountName,IM.Email as CR_Email,IM.MobilePhone as CR_PhoneNumber,IM.Name as CR_PhonePlatform,IM.PlayerID,IM.SearchCol,IM.AccountOwner as CompanyName,[dbo].[getEnterpriseAddressByEnterpriseAccNo](IM.ProjectAccountNo) as CompanyAddress from  Import_ExternalClients IM
 --where IM.ProjectAccountNo='CRInt-51958' and  IM.RowStatus='Active'





 --	 select ROW_NUMBER() OVER (ORDER BY IM.ID DESC) AS No,IM.ID,IM.ClientAccountNo as SubcriberAccNo,IM.CreatedDate As SubscribedDate,IM.Name as CR_AccountName,IM.Email as CR_Email,IM.MobilePhone as CR_PhoneNumber,IM.Name as CR_PhonePlatform,IM.PlayerID,IM.SearchCol,IE.EnterpriseName as CompanyName,IE.EnterpriseAddress as CompanyAddress from  Import_ExternalClients IM left join
	-- Import_ExternalClients_Enterprise IE on IM.EnterpriseAccNo=IE.EnterpriseAccNo
 --    where IM.ProjectAccountNo='CRInt-51958' and  IM.RowStatus='Active'


 --select * from Import_ExternalClients_Enterprise order by id desc
 --select * from Import_ExternalClients
 
 -- where ProjectName='Attract'


 --update Import_ExternalClients
 --set EnterpriseAccNo='NA'
 --where ID Not in (1,87,79)

 --1,87,79
