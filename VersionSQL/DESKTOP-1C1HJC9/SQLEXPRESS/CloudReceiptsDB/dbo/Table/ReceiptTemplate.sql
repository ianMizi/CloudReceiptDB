/****** Object:  Table [dbo].[ReceiptTemplate]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ReceiptTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateHeader] [varchar](max) NULL,
	[TemplateDescription] [varchar](max) NULL,
	[TemplateDetails] [varchar](max) NULL,
	[TemplateAdvertisement] [varchar](max) NULL,
	[TemplateFooter] [varchar](max) NULL,
	[TemplateType] [varchar](50) NULL,
	[Status] [varchar](50) NULL CONSTRAINT [DF_ReceiptTemplate_Status]  DEFAULT ('InActive'),
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_ReceiptTemplate_CreatedDate]  DEFAULT (getdate()),
	[TagNote] [varchar](50) NULL,
	[TemplateCode] [varchar](50) NULL,
 CONSTRAINT [PK_ReceiptTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
