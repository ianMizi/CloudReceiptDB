/****** Object:  Table [dbo].[AdvertisementApprovalStatusLog]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AdvertisementApprovalStatusLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertisementID] [int] NULL,
	[AdvertisementCode] [varchar](150) NULL,
	[AdvertisementStatus] [varchar](50) NULL,
	[AdvertisementStatusRemarks] [varchar](550) NULL,
	[EnterpriseAccNo] [varchar](50) NULL,
	[EnterpriseHQAccNo] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_AdvertisementApprovalStatusLog_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_AdvertisementApprovalStatusLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
