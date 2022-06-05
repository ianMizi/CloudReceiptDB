/****** Object:  Procedure [dbo].[ReceiptTemplate_getByTemplateEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[ReceiptTemplate_getByTemplateEnterpriseAccNo]  

	@EnterpriseAccNo varchar (50)= null
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 

	 declare @TRCode as varchar (50)
	 set @TRCode =(select TemplateCode from ReceiptTemplateMaster where EnterpriseAccNo=@EnterpriseAccNo)
	
	 Select * from ReceiptTemplate where TemplateCode=@TRCode and Status='Active'
     


    

	  
	END



	  







		
