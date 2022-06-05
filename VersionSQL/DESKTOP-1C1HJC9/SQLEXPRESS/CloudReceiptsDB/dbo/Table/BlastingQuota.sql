/****** Object:  Table [dbo].[BlastingQuota]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BlastingQuota](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PreviousQuota] [int] NULL,
	[ExistingQuota] [int] NULL,
	[CurrentQuota] [int] NULL,
	[LimitQuota] [int] NULL,
	[EnterpriseAccNo] [varchar](350) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_BlastingQuota_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[QuotaType] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_BlastingQuota_RowStatus]  DEFAULT ('Active'),
 CONSTRAINT [PK_BlastingQuota] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
