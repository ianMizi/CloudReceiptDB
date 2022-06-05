/****** Object:  Table [dbo].[MerchantStoreIconType]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MerchantStoreIconType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[MerchantStoreIconName] [varchar](50) NULL,
	[MerchantStoreIconPath] [varchar](250) NULL,
 CONSTRAINT [PK_MerchantStoreIconType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
