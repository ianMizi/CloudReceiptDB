/****** Object:  Table [dbo].[CloudReceipts_MobileUser]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[CloudReceipts_MobileUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CR_AccountNo] [varchar](50) NULL,
	[CR_MykadNo] [varchar](50) NULL,
	[CR_AccountName] [varchar](50) NULL,
	[CR_UseName] [varchar](50) NULL,
	[CR_Password] [varchar](max) NULL,
	[CR_Email] [varchar](50) NULL,
	[CR_PhoneNumber] [varchar](50) NULL,
	[CR_Photo] [varchar](max) NULL,
	[CR_RegisterDate] [datetime] NULL CONSTRAINT [DF_CR_MobileUser_CR_RegisterDate]  DEFAULT (getdate()),
	[CR_Status] [varchar](50) NULL CONSTRAINT [DF_CloudReceipts_MobileUser_CR_Status]  DEFAULT ('NotVerified'),
	[CR_LastLoginDate] [datetime] NULL,
	[CR_LoginOS] [varchar](50) NULL,
	[CR_LoginIP] [varchar](50) NULL,
	[CR_IsLogOut] [varchar](50) NULL,
	[CR_PhoneModel] [varchar](50) NULL,
	[CR_PhoneImeiNo] [varchar](550) NULL,
	[CR_LoginCount] [int] NULL,
	[CR_IsAutoLogin] [varchar](50) NULL,
	[CR_IsRememberPwd] [varchar](550) NULL,
	[CR_PhoneUniqueID] [varchar](max) NULL,
	[CR_IsUserVerified] [varchar](50) NULL CONSTRAINT [DF_CloudReceipts_MobileUser_CR_IsUserVerified]  DEFAULT ('N'),
	[CR_VerifyString] [varchar](max) NULL,
	[CR_VeriyDate] [datetime] NULL,
	[CR_PhonePlatform] [varchar](50) NULL,
	[CR_PhoneVersion] [varchar](50) NULL,
	[CR_PhoneManufacturer] [varchar](50) NULL,
	[CR_PhoneIsVirtual] [varchar](50) NULL,
	[CR_PhoneSerial] [varchar](50) NULL,
	[CR_RawPhoneInfo] [varchar](350) NULL,
	[CR_PlayerID] [varchar](350) NULL,
	[CR_InitalRegisterPhoneInfo] [varchar](max) NULL,
	[CR_ModifiedDate] [datetime] NULL,
	[CR_RowActive] [varchar](50) NULL CONSTRAINT [DF_CloudReceipts_MobileUser_CR_RowActive]  DEFAULT ('Active'),
	[CR_Version] [varchar](50) NULL CONSTRAINT [DF_CloudReceipts_MobileUser_CR_Version]  DEFAULT ('Standard 1.1'),
	[CR_EndDateVersion] [datetime] NULL,
	[CR_EndDateDay] [int] NULL CONSTRAINT [DF_CloudReceipts_MobileUser_CR_EndDateDay]  DEFAULT ((100)),
	[CR_VersionDayLeft] [int] NULL,
	[CR_OriginalPlayerID] [varchar](350) NULL,
	[CR_ModifiedBy] [varchar](150) NULL,
 CONSTRAINT [PK_CR_MobileUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[CloudReceipts_MobileUserGenerateVerifyString_AccountNo] ON [dbo].[CloudReceipts_MobileUser]
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
 
 
 DECLARE @Check varchar(100);
 DECLARE @Random varchar(50);
DECLARE @Upper INT;
DECLARE @Lower INT
 

 SET @Check =(SELECT CR_PlayerID from CloudReceipts_MobileUser where ID=@id)
---- This will create a random number between 1 and 999
SET @Lower = 1 ---- The lowest random number
SET @Upper = 999999 ---- The highest random number
SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

 if (@Check <> 'InsertFromCRSuite')
 update [CloudReceipts_MobileUser]
 set CR_VerifyString=@Random,CR_AccountNo=CR_MykadNo+'-'+@Random
 where ID=@id


END
 
--select *  from FlatBill
--select * from CloudReceipts_MobileUser
