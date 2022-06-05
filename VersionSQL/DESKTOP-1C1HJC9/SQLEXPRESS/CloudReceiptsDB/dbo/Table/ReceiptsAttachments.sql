/****** Object:  Table [dbo].[ReceiptsAttachments]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ReceiptsAttachments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FlatBillID] [int] NULL,
	[Contents] [varchar](max) NULL,
	[FilesName] [varchar](150) NULL,
	[CloudReceiptAccNo] [varchar](150) NULL,
	[FlatBillReceiptNo] [varchar](150) NULL,
	[FlatReceiptsID] [varchar](250) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_ReceiptsAttachments_RowStatus]  DEFAULT ('Active'),
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_ReceiptsAttachments_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_ReceiptsAttachments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
