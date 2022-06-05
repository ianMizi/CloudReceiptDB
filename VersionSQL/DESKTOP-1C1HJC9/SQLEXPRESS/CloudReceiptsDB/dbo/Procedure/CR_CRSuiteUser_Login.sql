/****** Object:  Procedure [dbo].[CR_CRSuiteUser_Login]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_CRSuiteUser_Login]  
	
	

	@UserName varchar(250)=null,
	@Password varchar (Max)=null


	

AS 
BEGIN 
     SET NOCOUNT ON 
     
  
 --Select ID, UserName,Password,MobilePhone,EnterpriseAccNo,ConfirmationCode,IsConfirmed,CreatedDate,Status,ModifiedDate,[dbo].[getEnterpriseNameByEnterpriseAccNo] (EnterpriseAccNo) As EnterpriseName ,[dbo].[getEnterpriseLogoByEnterpriseAccNo] (EnterpriseAccNo) As EnterpriseLogo,[dbo].[getEnterpriseDescriptionsByEnterpriseAccNo] (EnterpriseAccNo) As EnterpriseDescriptions,[dbo].[getEnterpriseAddressByEnterpriseAccNo] (EnterpriseAccNo) As EnterpriseAddress,[dbo].[getReceiptNoStartedByEnterpriseAccNo] (EnterpriseAccNo) As ReceiptNoStarted,[dbo].[getInvoiceNoStartedByEnterpriseAccNo] (EnterpriseAccNo) As InvoiceNoStarted,[dbo].[getQuotationNoStartedByEnterpriseAccNo] (EnterpriseAccNo) As QuotationNoStarted,[dbo].[getReceiptNoFormatByEnterpriseAccNo] (EnterpriseAccNo) As ReceiptNoFormat,[dbo].[getInvoiceNoFormatByEnterpriseAccNo] (EnterpriseAccNo) As InvoiceNoFormat,[dbo].[getQuotationNoFormatByEnterpriseAccNo] (EnterpriseAccNo) As QuotationNoFormat,[dbo].[getEnterpriseTaxNoByEnterpriseAccNo] (EnterpriseAccNo) As EnterpriseGSTNo,[dbo].[getEnterpriseSumTaxRateByEnterpriseAccNo] (EnterpriseAccNo) As SumTaxRate from CloudReceipts_CRSuiteUser where UserName=@UserName and Password=@Password and Status='Active' and 1=1
  --Select CR.ID, CR.UserName,CR.Password,CR.MobilePhone,CR.EnterpriseAccNo,CR.ConfirmationCode,CR.IsConfirmed,CR.CreatedDate,
  --CR.Status,CR.ModifiedDate,[dbo].[getEnterpriseNameByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseName ,
  --[dbo].[getEnterpriseLogoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseLogo,
  --[dbo].[getEnterpriseDescriptionsByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseDescriptions,
  --[dbo].[getEnterpriseAddressByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseAddress,
  --[dbo].[getReceiptNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoStarted,
  --[dbo].[getInvoiceNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoStarted,[dbo].[getQuotationNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoStarted,
  --[dbo].[getReceiptNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoFormat,[dbo].[getInvoiceNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoFormat,
  --[dbo].[getQuotationNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoFormat,[dbo].[getEnterpriseTaxNoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseGSTNo,
  --[dbo].[getEnterpriseSumTaxRateByEnterpriseAccNo] (CR.EnterpriseAccNo) As SumTaxRate,
  --E.EnterprisePhoneNo,E.EnterpriseEmail,E.EnterpriseWebsite,E.EnterpriseFacebook,E.EnterpriseTwiter,E.EnterpriseInstagram 
  --from CloudReceipts_CRSuiteUser CR inner join Enterprise E on   CR.EnterpriseAccNo =E.EnterpriseAccNo  
  --where CR.UserName=@UserName and CR.Password=@Password and CR.Status='Active' and 1=1




  	 Select CR.ID, CR.UserName,CR.Password,CR.MobilePhone,CR.EnterpriseAccNo,CR.ConfirmationCode,CR.IsConfirmed,CR.CreatedDate,
  CR.Status,CR.ModifiedDate,[dbo].[getEnterpriseNameByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseName ,
  [dbo].[getEnterpriseLogoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseLogo,
  [dbo].[getEnterpriseDescriptionsByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseDescriptions,
  [dbo].[getEnterpriseAddressByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseAddress,
  [dbo].[getReceiptNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoStarted,
  [dbo].[getInvoiceNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoStarted,[dbo].[getQuotationNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoStarted,
  [dbo].[getReceiptNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoFormat,[dbo].[getInvoiceNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoFormat,
  [dbo].[getQuotationNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoFormat,[dbo].[getEnterpriseTaxNoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseGSTNo,
  [dbo].[getEnterpriseSumTaxRateByEnterpriseAccNo] (CR.EnterpriseAccNo) As SumTaxRate,
  E.EnterprisePhoneNo,E.EnterpriseEmail,E.EnterpriseWebsite,E.EnterpriseFacebook,E.EnterpriseTwiter,E.EnterpriseInstagram,
  B.SMSQuota,B.PushNotificationQuota,B.EmailQuota,B.WhatAppsQuota,B.FacebookQuota,B.TelegramQuota   
  from CloudReceipts_CRSuiteUser CR inner join Enterprise E on   CR.EnterpriseAccNo =E.EnterpriseAccNo
   inner join BlastingMsgQuota B on E.EnterpriseAccNo = B.EnterpriseAccountNo
 where CR.UserName=@UserName and CR.Password=@Password and CR.Status='Active' and 1=1

	  
	END













	  --Select CR.ID, CR.UserName,CR.Password,CR.MobilePhone,CR.EnterpriseAccNo,CR.ConfirmationCode,CR.IsConfirmed,CR.CreatedDate,CR.Status,CR.ModifiedDate,[dbo].[getEnterpriseNameByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseName ,[dbo].[getEnterpriseLogoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseLogo,[dbo].[getEnterpriseDescriptionsByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseDescriptions,[dbo].[getEnterpriseAddressByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseAddress,[dbo].[getReceiptNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoStarted,[dbo].[getInvoiceNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoStarted,[dbo].[getQuotationNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoStarted,[dbo].[getReceiptNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoFormat,[dbo].[getInvoiceNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoFormat,[dbo].[getQuotationNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoFormat,[dbo].[getEnterpriseTaxNoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseGSTNo,[dbo].[getEnterpriseSumTaxRateByEnterpriseAccNo] (CR.EnterpriseAccNo) As TotalTaxRate,E.EnterprisePhoneNo,E.EnterpriseEmail,E.EnterpriseWebsite from CloudReceipts_CRSuiteUser CR inner join Enterprise E on   CR.EnterpriseAccNo =E.EnterpriseAccNo    where CR.UserName='iSmile'  and CR.Password='123' and CR.Status='Active' and 1=1
	 --Select CR.ID, CR.UserName,CR.Password,CR.MobilePhone,CR.EnterpriseAccNo,CR.ConfirmationCode,CR.IsConfirmed,CR.CreatedDate,CR.Status,CR.ModifiedDate,[dbo].[getEnterpriseNameByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseName ,[dbo].[getEnterpriseLogoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseLogo,[dbo].[getEnterpriseDescriptionsByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseDescriptions,[dbo].[getEnterpriseAddressByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseAddress,[dbo].[getReceiptNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoStarted,[dbo].[getInvoiceNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoStarted,[dbo].[getQuotationNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoStarted,[dbo].[getReceiptNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoFormat,[dbo].[getInvoiceNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoFormat,[dbo].[getQuotationNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoFormat,[dbo].[getEnterpriseTaxNoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseGSTNo,[dbo].[getEnterpriseSumTaxRateByEnterpriseAccNo] (CR.EnterpriseAccNo) As TotalTaxRate,E.EnterprisePhoneNo,E.EnterpriseEmail,E.EnterpriseWebsite from CloudReceipts_CRSuiteUser CR inner join Enterprise E on   CR.EnterpriseAccNo =E.EnterpriseAccNo    where CR.UserName='iSmile' and CR.Password='123' and CR.Status='Active' and 1=1


	 --select * from CloudReceipts_CRSuiteUser
	  --select * from Enterprise

	  --27  
	  
	  
	  
	  --Select
	  --1 CR.ID,
	  --2 CR.UserName,
	  --3 CR.Password,
	  --4 CR.MobilePhone,
	  --5 CR.EnterpriseAccNo,
	  --6 CR.ConfirmationCode,
	  --7 CR.IsConfirmed,
	  --8 CR.CreatedDate,
	  --9 CR.Status,
	  --10 CR.ModifiedDate,
	  --11 [dbo].[getEnterpriseNameByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseName ,
	  --12 [dbo].[getEnterpriseLogoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseLogo,
	  --13 [dbo].[getEnterpriseDescriptionsByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseDescriptions,
	  --14 [dbo].[getEnterpriseAddressByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseAddress,
	  --15 [dbo].[getReceiptNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoStarted,
	  --16 [dbo].[getInvoiceNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoStarted,
	  --17 [dbo].[getQuotationNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoStarted,
	  --18 [dbo].[getReceiptNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoFormat,
	  --19 [dbo].[getInvoiceNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoFormat,
	  --20 [dbo].[getQuotationNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoFormat,
	  --21 [dbo].[getEnterpriseTaxNoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseGSTNo,
	  --22 [dbo].[getEnterpriseSumTaxRateByEnterpriseAccNo] (CR.EnterpriseAccNo) As SumTaxRate,
	  --23 E.EnterprisePhoneNo,
	  --24 E.EnterpriseEmail,
	  --25 E.EnterpriseWebsite,
	  --26 E.EnterpriseFacebook,
	  --27 E.EnterpriseTwiter,
	  --28 E.EnterpriseInstagram 
	  -- from CloudReceipts_CRSuiteUser CR inner join Enterprise E on   CR.EnterpriseAccNo =E.EnterpriseAccNo    where CR.UserName='walaun' and CR.Password='12345' and CR.Status='Active' and 1=1
	  
	  



	 -- Select
	 --  CR.ID,
	 --   CR.UserName,
		--CR.Password,
		--CR.MobilePhone,
		--CR.EnterpriseAccNo,
		--CR.ConfirmationCode,
		--CR.IsConfirmed,
		--CR.CreatedDate,
		--CR.Status,
		--CR.ModifiedDate,
		--[dbo].[getEnterpriseNameByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseName ,
		--[dbo].[getEnterpriseLogoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseLogo,
		--[dbo].[getEnterpriseDescriptionsByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseDescriptions,[dbo].[getEnterpriseAddressByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseAddress,[dbo].[getReceiptNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoStarted,[dbo].[getInvoiceNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoStarted,[dbo].[getQuotationNoStartedByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoStarted,[dbo].[getReceiptNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As ReceiptNoFormat,[dbo].[getInvoiceNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As InvoiceNoFormat,[dbo].[getQuotationNoFormatByEnterpriseAccNo] (CR.EnterpriseAccNo) As QuotationNoFormat,[dbo].[getEnterpriseTaxNoByEnterpriseAccNo] (CR.EnterpriseAccNo) As EnterpriseGSTNo,[dbo].[getEnterpriseSumTaxRateByEnterpriseAccNo] (CR.EnterpriseAccNo) As SumTaxRate,E.EnterprisePhoneNo,E.EnterpriseEmail,E.EnterpriseWebsite,E.EnterpriseFacebook,E.EnterpriseTwiter,E.EnterpriseInstagram from CloudReceipts_CRSuiteUser CR inner join Enterprise E on   CR.EnterpriseAccNo =E.EnterpriseAccNo    where CR.UserName=@UserName and CR.Password=@Password and CR.Status='Active' and 1=1

	  
--	  select * from 
--[dbo].[Enterprise]

--update Enterprise
--set EnterpriseDescriptions='Workshop'
--where ID=29



		
--		@ID int= null,
		
--	@TrackItem varchar (550)= null,	
--	   	@TrackID varchar (550)= null,
--	@AccountNo varchar (150)= null,
	
--	@FencePath varchar (MAX)= null,
--	@ShapeType varchar (150)= null,

--	@FenceAreaName varchar (250)= null,
--	@TimeFrom varchar (150)= null,

--	@TimeTo varchar (150)= null,
--	@DaySetting varchar (150)= null,
--	@Status varchar (150)= null,
--	@FenceLength varchar (150)= null
--AS 
--BEGIN 
--     SET NOCOUNT ON 
     
--     DECLARE @TrackingName varchar(350)
--    SET @TrackingName = (select TrackItem from TrackingItems where TrackID = @TrackID)
     
--      IF Not EXISTS (SELECT ID FROM AutoFenceTimer WHERE  ID=@ID)

--	   INSERT INTO dbo.AutoFenceTimer
--          ( 
--           TrackItem,	
--	   	 TrackID ,
--	 AccountNo ,
	
--	 FencePath ,
--	 ShapeType ,

--	 FenceAreaName ,
--	 TimeFrom ,

--	 TimeTo  ,
--	 DaySetting ,
--	 Status ,
--	FenceLength
		  
--          ) 
--     VALUES 
--          ( 
--  @TrackingName,	
--	   	@TrackID ,
--	@AccountNo ,	
--	@FencePath ,
--	@ShapeType ,
--	@FenceAreaName ,
--	@TimeFrom ,
--	@TimeTo  ,
--	@DaySetting ,
--	@Status ,
--	@FenceLength
	
--          ) 


--  ELSE


  

--      Update dbo.AutoFenceTimer
--     set
--	 TrackItem=@TrackingName,
--	   	 TrackID =@TrackID,
--	 AccountNo =@AccountNo,
	
--	 FencePath=@FencePath ,
--	 ShapeType =@ShapeType,

--	 FenceAreaName =@FenceAreaName,
--	 TimeFrom=@TimeFrom ,

--	 TimeTo =@TimeTo ,
--	 DaySetting=@DaySetting  ,
--      Status  =  @Status ,
--	  FenceLength=@FenceLength 
         
	
--	where 
--	 ID=@ID

	
	  






	  
--    IF(@Status = 'InActive')
--    BEGIN
		
		
--		Delete from Geofences where TrackID=@TrackID and AccountNo =@AccountNo
	    
	  
							
--	END
   
	

    
