/****** Object:  Table [dbo].[BillDetailsBackup]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BillDetailsBackup](
	[BillDetailId] [int] IDENTITY(1,1) NOT NULL,
	[BillId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
