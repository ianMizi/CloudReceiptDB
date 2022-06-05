/****** Object:  Table [dbo].[CR_FeedbackMessage]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[CR_FeedbackMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CR_AccountNo] [varchar](550) NULL,
	[CR_Email] [varchar](550) NULL,
	[FeedbackMsg] [varchar](5050) NULL,
	[MsgDate] [datetime] NULL CONSTRAINT [DF_CR_FeedbackMessage_MsgDate]  DEFAULT (getdate()),
	[ServiceRate] [int] NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_CR_FeedbackMessage_RowStatus]  DEFAULT ('Active'),
	[MsgStatus] [varchar](50) NULL,
	[CR_EnterpriseAccountNo] [varchar](150) NULL,
 CONSTRAINT [PK_CR_FeedbackMessage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
