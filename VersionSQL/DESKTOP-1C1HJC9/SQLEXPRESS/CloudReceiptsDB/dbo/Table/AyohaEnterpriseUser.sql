/****** Object:  Table [dbo].[AyohaEnterpriseUser]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AyohaEnterpriseUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountNo] [varchar](50) NULL,
	[MykadNo] [varchar](50) NULL,
	[AccountName] [varchar](50) NULL,
	[UseName] [varchar](50) NULL,
	[Password] [varchar](max) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Photo] [varchar](max) NULL,
	[RegisterDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[LastLoginDate] [datetime] NULL,
	[LoginOS] [varchar](50) NULL,
	[LoginIP] [varchar](50) NULL,
	[IsLogOut] [varchar](50) NULL,
	[PhoneModel] [varchar](50) NULL,
	[PhoneImeiNo] [varchar](550) NULL,
	[LoginCount] [int] NULL,
	[IsAutoLogin] [varchar](50) NULL,
	[IsRememberPwd] [varchar](550) NULL,
	[PhoneUniqueID] [varchar](max) NULL,
	[IsUserVerified] [varchar](50) NULL,
	[VerifyString] [varchar](max) NULL,
	[VeriyDate] [datetime] NULL,
	[PhonePlatform] [varchar](50) NULL,
	[PhoneVersion] [varchar](50) NULL,
	[PhoneManufacturer] [varchar](50) NULL,
	[PhoneIsVirtual] [varchar](50) NULL,
	[PhoneSerial] [varchar](50) NULL,
	[RawPhoneInfo] [varchar](350) NULL,
	[PlayerID] [varchar](350) NULL,
	[InitalRegisterPhoneInfo] [varchar](max) NULL,
	[ModifiedDate] [datetime] NULL,
	[RowActive] [varchar](50) NULL,
	[Version] [varchar](50) NULL,
	[EndDateVersion] [datetime] NULL,
	[EndDateDay] [int] NULL,
	[VersionDayLeft] [int] NULL,
	[OriginalPlayerID] [varchar](350) NULL,
	[ModifiedBy] [varchar](150) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[ConfirmationCode] [varchar](50) NULL,
	[IsConfirmed] [varchar](50) NULL,
 CONSTRAINT [PK_AyohaEnterpriseUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
