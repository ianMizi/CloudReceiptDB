/****** Object:  Table [dbo].[AyohaEnterprisesUser]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AyohaEnterprisesUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountNo] [varchar](50) NULL,
	[AccountName] [varchar](50) NULL,
	[UseName] [varchar](50) NULL,
	[Password] [varchar](550) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Photo] [varchar](550) NULL,
	[RegisterDate] [datetime] NULL CONSTRAINT [DF_AyohaEnterprisesUser_RegisterDate]  DEFAULT (getdate()),
	[IsUserVerified] [varchar](50) NULL,
	[VerifyString] [varchar](500) NULL,
	[VeriyDate] [datetime] NULL,
	[ModifiedBy] [varchar](150) NULL,
	[ModifiedDate] [datetime] NULL,
	[RowActive] [varchar](50) NULL CONSTRAINT [DF_AyohaEnterprisesUser_RowActive]  DEFAULT ('Active'),
	[EnterpriseAccNo] [varchar](50) NULL,
	[UserType] [varchar](50) NULL,
	[UserStatus] [varchar](50) NULL,
	[LastLoginDate] [datetime] NULL,
	[PhotoName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[SerialPhoneNo] [varchar](150) NULL,
	[PlayerID] [varchar](250) NULL,
 CONSTRAINT [PK_AyohaEnterprisesUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
Create TRIGGER [dbo].[AyohaEnterprisesUser_GenerateVerifyString] ON [dbo].[AyohaEnterprisesUser]
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

 
 update AyohaEnterprisesUser
 set VerifyString=@Random
 where ID=@id


END
 
--select *  from FlatBill
--select * from CloudReceipts_MobileUser
