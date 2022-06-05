/****** Object:  Table [dbo].[TemporaryStampQrCode]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[TemporaryStampQrCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TempStampQrCode] [uniqueidentifier] NULL CONSTRAINT [DF_TemporaryStampQrCode_TempStampQrCode]  DEFAULT (newid()),
	[StampCardCode] [varchar](250) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_TemporaryStampQrCode_CreatedDate]  DEFAULT (getdate()),
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_TemporaryStampQrCode_RowStatus]  DEFAULT ('Active'),
 CONSTRAINT [PK_TemporaryStampQrCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
