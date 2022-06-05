/****** Object:  Table [dbo].[MembershipCardPaymentCycle]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MembershipCardPaymentCycle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentCycle] [varchar](50) NULL,
	[Code] [int] NULL,
	[SequenceNo] [int] NULL,
 CONSTRAINT [PK_MembershipCardPaymentCycle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
