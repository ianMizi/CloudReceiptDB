/****** Object:  Procedure [dbo].[FlatInvoice_LoadByEnterpriseAccNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FlatInvoice_LoadByEnterpriseAccNo]  


 @EnterpriseAccNo varchar (150)=null,
     @Month  as varchar (150),
	@Year  as varchar (150),
	@Typed as varchar (150)
	 
AS 
BEGIN 
     SET NOCOUNT ON 

	
	 -- select   ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,[dbo].[getCR_PlayerID](F.FlatInvoicEmailNo) AS CRPlayerID,   f.* from FlatInvoice F where F.CloudreceiptAccNo=@EnterpriseAccNo order By FlatInvoiceIssuedDate desc

	
	
	
			Declare @count as varchar (150)
			--Declare @EnterpriseAccNo as varchar (300)='CRKLI-36416'
		

	set @count=(select COUNT (distinct F.FlatInvoiceNo) from  FlatInvoice F where  F.CloudreceiptAccNo=@EnterpriseAccNo) 


Declare @SQL varchar(MAX)
--set @SQL = 'SELECT TOP ('+@count+') ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,[dbo].[getCR_PlayerID](F.FlatInvoicEmailNo) AS CRPlayerID,F.* 
set @SQL = 'SELECT TOP ('+@count+') ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,[dbo].[getCR_PlayerID](F.FlatInvoicEmailNo) AS CRPlayerID,[dbo].[CloudReceipts_MobileUser_getCRAccountNo](F.FlatInvoicEmailNo) AS CRAccountNo,[dbo].[FlatBill_CurrentOutStandingBalance](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS CurrentOutStandingBalance,[dbo].[FlatBill_LastPaymentStatus](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS LastPaymentStatus,[dbo].[FlatBill_LastPaymentDate](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS LastPaymentDate,[dbo].[FlatBill_LastPaymentAmount](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS LastPaymentAmount,[dbo].[FlatInvoice_RowStatus](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS FlatInvoiceRowStatus,[dbo].[FlatBill_LastPaymentStatus](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS LastPaymentStatusWithOutHtml,F.* 
from FlatInvoice F

inner join (
    select F.FlatInvoiceNo, max(F.ID) as MaxDate
    from FlatInvoice F
    group by F.FlatInvoiceNo
) tm on F.FlatInvoiceNo = tm.FlatInvoiceNo and F.ID = tm.MaxDate


 where  F.FlatInvoiceDocType='''+@Typed+'''  and F.CloudreceiptAccNo='''+@EnterpriseAccNo+'''   and  MONTH(F.FlatInvoiceDate) ='''+@Month+''' AND YEAR(F.FlatInvoiceDate) ='''+@Year+''''  
 
EXEC (@SQL)
	
	
	
	END























	 


	
	 -- select   ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,[dbo].[getCR_PlayerID](F.FlatInvoicEmailNo) AS CRPlayerID,   f.* from FlatInvoice F where F.CloudreceiptAccNo=@EnterpriseAccNo order By FlatInvoiceIssuedDate desc

	
	
--		Declare @EnterpriseAccNo varchar (150)='CRKli-95115'
--        Declare  @Month  as varchar (150) ='2'
--	Declare @Year  as varchar (150)='2019'
--	Declare @Typed as varchar (150)='Quotation'
--			Declare @count as varchar (50)
--			--Declare @EnterpriseAccNo as varchar (300)='CRKLI-36416'
		

--	set @count=(select COUNT (distinct F.FlatInvoiceNo) from  FlatInvoice F where  F.CloudreceiptAccNo=@EnterpriseAccNo) 
--	print @count


--Declare @SQL varchar(MAX)
----set @SQL = 'SELECT TOP ('+@count+') ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,[dbo].[getCR_PlayerID](F.FlatInvoicEmailNo) AS CRPlayerID,F.* 
--set @SQL = 'SELECT TOP ('+@count+') ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,[dbo].[getCR_PlayerID](F.FlatInvoicEmailNo) AS CRPlayerID,[dbo].[CloudReceipts_MobileUser_getCRAccountNo](F.FlatInvoicEmailNo) AS CRAccountNo,[dbo].[FlatBill_CurrentOutStandingBalance](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS CurrentOutStandingBalance,[dbo].[FlatBill_LastPaymentStatus](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS LastPaymentStatus,[dbo].[FlatBill_LastPaymentDate](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS LastPaymentDate,[dbo].[FlatBill_LastPaymentAmount](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS LastPaymentAmount,[dbo].[FlatInvoice_RowStatus](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS FlatInvoiceRowStatus,[dbo].[FlatBill_LastPaymentStatus](F.FlatInvoiceNo ,'''+@EnterpriseAccNo+''') AS LastPaymentStatusWithOutHtml,F.* 
--from FlatInvoice F

--inner join (
--    select F.FlatInvoiceNo, max(F.ID) as MaxDate
--    from FlatInvoice F
--    group by F.FlatInvoiceNo
--) tm on F.FlatInvoiceNo = tm.FlatInvoiceNo and F.ID = tm.MaxDate


-- where  F.FlatInvoiceDocType='''+@Typed+'''  and F.CloudreceiptAccNo='''+@EnterpriseAccNo+'''   and  MONTH(F.FlatInvoiceDate) ='''+@Month+''' AND YEAR(F.FlatInvoiceDate) ='''+@Year+''''  
-- print @SQL
--EXEC (@SQL)
	






























	--select F.FlatInvoiceDocType from FlatInvoice F order by ID desc 




--		Declare @counti as int
--	set @counti=(select COUNT (distinct F.FlatInvoiceNo) from  FlatInvoice F where  F.CloudreceiptAccNo='CRKli-549241') 
--	print @counti


----set @SQL = 'SELECT TOP ('+@count+') ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,[dbo].[getCR_PlayerID](F.FlatInvoicEmailNo) AS CRPlayerID,F.* 
--SELECT TOP (@counti) ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,[dbo].[getCR_PlayerID](F.FlatInvoicEmailNo) AS CRPlayerID,[dbo].[CloudReceipts_MobileUser_getCRAccountNo](F.FlatInvoicEmailNo) AS CRAccountNo,F.* 
--from FlatInvoice F

--inner join (
--    select F.FlatInvoiceNo, max(F.ID) as MaxDate
--    from FlatInvoice F
--    group by F.FlatInvoiceNo
--) tm on F.FlatInvoiceNo = tm.FlatInvoiceNo and F.ID = tm.MaxDate


-- where F.CloudreceiptAccNo='CRKli-549241' order By F.FlatInvoiceIssuedDate desc

	--select distinct(F.FlatInvoiceNo),f.* from FlatInvoice F where F.CloudreceiptAccNo='CRian-315297'


	-- select   ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,   f.* from FlatInvoice F where F.CloudreceiptAccNo=@EnterpriseAccNo order By FlatInvoiceIssuedDate desc

	
	--	Declare @count as varchar (50)
	--set @count=(select COUNT (distinct F.FlatInvoiceNo) from  FlatInvoice F where  F.CloudreceiptAccNo=@EnterpriseAccNo) 
	--select * from FlatInvoice order by id desc

--Declare @SQL varchar(MAX)
--set @SQL = 'SELECT TOP ('+@count+') ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,F.* 
--from FlatInvoice F

--inner join (
--    select F.FlatInvoiceNo, max(F.ID) as MaxDate
--    from FlatInvoice F
--    group by F.FlatInvoiceNo
--) tm on F.FlatInvoiceNo = tm.FlatInvoiceNo and F.ID = tm.MaxDate


-- where F.CloudreceiptAccNo='''+@EnterpriseAccNo+''' order By F.FlatInvoiceIssuedDate desc'
 
--EXEC (@SQL)


--select* from FlatInvoice
	
--			Declare @count as varchar (50)
--	set @count=(select COUNT (distinct F.FlatInvoiceNo) from  FlatInvoice F where  F.CloudreceiptAccNo='CRWAL-606992') 


--Declare @SQL varchar(MAX)
--set @SQL = 'SELECT TOP ('+@count+') ROW_NUMBER() over (order by F.ID desc) AS No,[dbo].[FlatInvoiceItemsDetails_getBillItems] (F.FlatInvoiceNo) As Descriptions,[dbo].[getCR_PlayerID](F.FlatInvoicEmailNo) AS CRPlayerID,[dbo].[CloudReceipts_MobileUser_getCRAccountNo](F.FlatInvoicEmailNo) AS CRAccountNo,F.* 
--from FlatInvoice F

--inner join (
--    select F.FlatInvoiceNo, max(F.ID) as MaxDate
--    from FlatInvoice F
--    group by F.FlatInvoiceNo
--) tm on F.FlatInvoiceNo = tm.FlatInvoiceNo and F.ID = tm.MaxDate


-- where F.CloudreceiptAccNo=''CRWAL-606992'' order By F.FlatInvoiceIssuedDate desc'
 
--EXEC (@SQL)
	
-- select * from CloudReceipts_MobileUser
