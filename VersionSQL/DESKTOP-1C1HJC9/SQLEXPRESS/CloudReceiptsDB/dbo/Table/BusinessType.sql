/****** Object:  Table [dbo].[BusinessType]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BusinessType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessType] [varchar](250) NULL,
	[BusinessTypeCode] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_BusinessType_RowStatus]  DEFAULT ('Active'),
	[BusinessTypeGroup] [varchar](50) NULL,
	[BusinessTypeIconPath] [varchar](250) NULL,
	[BusinessTypeGroupCode] [varchar](50) NULL,
 CONSTRAINT [PK_BusinessType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
