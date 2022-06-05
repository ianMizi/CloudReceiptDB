/****** Object:  Table [dbo].[CloudReceipts_CRSuiteUser]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[CloudReceipts_CRSuiteUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](250) NULL,
	[Password] [varchar](max) NULL,
	[MobilePhone] [varchar](50) NULL,
	[EnterpriseAccNo] [varchar](250) NULL CONSTRAINT [DF_CloudReceipts_CRSuiteUser_EnterpriseAccNo]  DEFAULT ('NA'),
	[ConfirmationCode] [varchar](50) NULL,
	[IsConfirmed] [varchar](50) NULL CONSTRAINT [DF_CloudReceipts_CRSuiteUser_IsConfirmed]  DEFAULT ('NO'),
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_CloudReceipts_CRSuiteUser_CreatedDate]  DEFAULT (getdate()),
	[Status] [varchar](50) NULL CONSTRAINT [DF_CloudReceipts_CRSuiteUser_Status]  DEFAULT ('Active'),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_CloudReceipts_CRSuiteUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[CloudReceipts_CRSuiteUserGenerateVerifyString] ON [dbo].[CloudReceipts_CRSuiteUser]
  AFTER INSERT
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 
  -- get the last id value of the record inserted or updated
 
  DECLARE @id INT
  SELECT @id = ID
  FROM INSERTED
 
 
 
 DECLARE @Random varchar(50);
DECLARE @Upper INT;
DECLARE @Lower INT
 
---- This will create a random number between 1 and 999
SET @Lower = 1 ---- The lowest random number
SET @Upper = 999999 ---- The highest random number
SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

 
 update CloudReceipts_CRSuiteUser
 set ConfirmationCode=@Random
 where ID=@id




Declare @EnterpriseAccNo as varchar(200)
Declare @EnterpriseRegistrationNo as varchar(200)

set @EnterpriseAccNo =(select EnterpriseAccNo from CloudReceipts_CRSuiteUser where ID=@id)
set @EnterpriseRegistrationNo=(select EnterpriseRegistrationNo from Enterprise where EnterpriseAccNo=@EnterpriseAccNo)


 INSERT INTO dbo.TaxTable
          ( 
		  EnterpriseAccNo,
           EnterpriseRegistrationNo,	
	   	 TaxName ,
	 TaxNo,
	 TaxRate,
	 RowStatus 	
	
		          ) 
     VALUES 
          ( 
		 @EnterpriseAccNo,	
   @EnterpriseRegistrationNo,	
	   	 'SST' ,
	 'NA',
	 0.00,
	 'Active' 	
	 )

END
 
--select *  from FlatBill
