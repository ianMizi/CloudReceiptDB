/****** Object:  Table [dbo].[BusinessTypeGroup]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BusinessTypeGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessTypeGroupCode] [varchar](50) NULL,
	[BusinessTypeGroups] [varchar](50) NULL,
	[BusinessTypeGroupsIconPath] [varchar](550) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_BusinessTypeGroup_RowStatus]  DEFAULT ('Active'),
 CONSTRAINT [PK_BusinessTypeGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
