/****** Object:  Table [dbo].[TermNCondition]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[TermNCondition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Term_N_Condition] [varchar](max) NULL,
	[Jenis] [varchar](50) NULL,
	[EnterpriseAcc] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_TermNCondition_RowStatus]  DEFAULT ('Active'),
	[CreatedBy] [varchar](150) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_TermNCondition_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](150) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_TermNCondition] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
