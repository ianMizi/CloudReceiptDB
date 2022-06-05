/****** Object:  Table [dbo].[Companies]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Companies](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyNumber] [nvarchar](20) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
	[CompanyPhoneNumber] [nvarchar](20) NOT NULL,
	[CompanyAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Companies] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
Create TRIGGER [dbo].[FlatBillUpdateCompanyInfo] ON [dbo].[Companies]
  AFTER UPDATE
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 
  -- get the last id value of the record inserted or updated
 
  DECLARE @id INT
  SELECT @id = CompanyId
  FROM inserted
 

 Update F
 set F.FlatBillCompanyNumber=C.CompanyNumber,
 F.FlatBillImgLogo64=[dbo].[f_BinaryToBase64](FL.Content),
 F.FlatBillWorkshopPhoneNo=C.CompanyPhoneNumber,
 F.FlatBillWorkShopAddress=C.CompanyAddress,
 F.FlatBillWorkshop=C.CompanyName
 from FlatBill F inner join Companies C
 on F.FlatBillWorkshopID=C.CompanyId
 inner join Files FL on C.CompanyId =FL.CompanyId
 where F.FlatBillWorkshopID=@id
 
 
 
 
END
 
--select *  from FlatBill
