/****** Object:  Table [dbo].[OnlineStatus]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[OnlineStatus](
	[OnlineStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Online] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.OnlineStatus] PRIMARY KEY CLUSTERED 
(
	[OnlineStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
