/****** Object:  Table [dbo].[AyohaUserProfileLoginLog]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AyohaUserProfileLoginLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountNo] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Katalaluan] [varchar](250) NULL,
	[LoginDate] [datetime] NULL,
	[LoginOS] [varchar](50) NULL,
	[LoginIP] [varchar](50) NULL,
	[PhoneModel] [varchar](50) NULL,
	[PhoneImeiNo] [varchar](550) NULL,
	[PhonePlatform] [varchar](50) NULL,
	[PhoneVersion] [varchar](50) NULL,
	[PhoneManufacturer] [varchar](50) NULL,
	[PhoneSerial] [varchar](50) NULL,
	[RawPhoneInfo] [varchar](350) NULL,
	[PlayerID] [varchar](350) NULL,
	[RowActive] [varchar](50) NULL,
 CONSTRAINT [PK_AyohaUserProfileLoginLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
