/****** Object:  Table [dbo].[AdvertisementApprovalStatus]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AdvertisementApprovalStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertisementStatus] [varchar](50) NULL,
	[AdvertisementStatusDesc] [varchar](250) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_AdvertisementApprovalStatus_RowStatus]  DEFAULT ('Active'),
 CONSTRAINT [PK_AdvertisementApprovalStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
