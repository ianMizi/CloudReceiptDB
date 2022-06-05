/****** Object:  Procedure [dbo].[ReceiptTemplate_getByTemplateCode]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[ReceiptTemplate_getByTemplateCode]  

	@TemplateCode varchar (50)= null
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


	
	 Select * from ReceiptTemplate where TemplateCode=@TemplateCode and Status='Active'
     


    

	  
	END



	  







		
