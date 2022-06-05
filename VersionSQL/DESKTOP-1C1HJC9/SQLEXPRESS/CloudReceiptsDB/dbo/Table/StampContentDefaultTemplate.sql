/****** Object:  Table [dbo].[StampContentDefaultTemplate]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[StampContentDefaultTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StampContent] [varchar](5500) NULL,
	[StampContentSequence] [int] NULL,
	[RowStatus] [varchar](50) NULL,
	[TextOne] [varchar](50) NULL,
	[TextTwo] [varchar](50) NULL,
	[divContentFloatLoyaltyCardStamp] [varchar](50) NULL,
	[divContentFloatLoyaltyCardStampExt] [varchar](50) NULL,
 CONSTRAINT [PK_StampContentDefaultTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
