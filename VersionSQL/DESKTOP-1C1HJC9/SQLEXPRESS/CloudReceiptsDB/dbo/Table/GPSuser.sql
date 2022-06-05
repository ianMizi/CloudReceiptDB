/****** Object:  Table [dbo].[GPSuser]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[GPSuser](
	[ID] [float] NULL,
	[UserName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Version] [nvarchar](255) NULL,
	[Status] [float] NULL,
	[AccountNo] [nvarchar](255) NULL,
	[RegisterBy] [nvarchar](255) NULL,
	[UpdateBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [nvarchar](255) NULL,
	[ExpiredDate] [nvarchar](255) NULL,
	[LoginIP] [nvarchar](255) NULL,
	[LoginType] [float] NULL,
	[LastLoginDate] [datetime] NULL,
	[LoginCount] [float] NULL,
	[LastLogOutDate] [nvarchar](255) NULL,
	[Browser] [nvarchar](255) NULL,
	[OS] [nvarchar](255) NULL,
	[EmailReg] [nvarchar](255) NULL,
	[PlayerID] [nvarchar](255) NULL
) ON [PRIMARY]
