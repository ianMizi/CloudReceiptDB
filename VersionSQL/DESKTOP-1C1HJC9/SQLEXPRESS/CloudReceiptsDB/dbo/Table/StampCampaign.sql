/****** Object:  Table [dbo].[StampCampaign]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[StampCampaign](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StampCampaignCode] [varchar](250) NULL,
	[StampCampaignName] [varchar](250) NULL,
	[StampCardType] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[StrEndDate] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_StampCampaign_RowStatus]  DEFAULT ('Active'),
	[EnterpriseAccNo] [varchar](50) NULL,
	[CreatedByAccNo] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_StampCampaign_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[StampCardBackground] [varchar](550) NULL CONSTRAINT [DF_StampCampaign_StampCardBackground]  DEFAULT ('Auto-Default'),
	[isAnimated] [varchar](50) NULL CONSTRAINT [DF_StampCampaign_isAnimated]  DEFAULT ('NO'),
	[AnimatedInterval] [int] NULL CONSTRAINT [DF_StampCampaign_AnimatedInterval]  DEFAULT ((2)),
	[StampRuleRemarks] [varchar](250) NULL CONSTRAINT [DF_StampCampaign_StampRuleRemark]  DEFAULT ('NA'),
	[isStampRulePopUp] [varchar](50) NULL CONSTRAINT [DF_StampCampaign_isStampRulePopUp]  DEFAULT ('NO'),
	[LoyaltyCustomerType] [varchar](50) NULL,
	[StampCampaignPremiumQRCode] [varchar](250) NULL CONSTRAINT [DF_StampCampaign_StampCampaignPremiumQRCode]  DEFAULT ('http://42.1.63.57/AyohaImgCard/PremiumStampCampaignQrCode/StampCampaigCodeQRSample.png'),
	[isRequiredFee] [varchar](50) NULL CONSTRAINT [DF_StampCampaign_isRequiredFee]  DEFAULT ('NO'),
	[StampCampaignFees] [decimal](18, 2) NULL CONSTRAINT [DF_StampCampaign_Fees]  DEFAULT ((0.00)),
	[FeesCycle] [varchar](50) NULL,
 CONSTRAINT [PK_StampCampaign] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[GenerateStampCampaignCode] ON [dbo].[StampCampaign]
  AFTER INSERT
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 
  -- get the last id value of the record inserted or updated
 
--  DECLARE @id INT
--  SELECT @id = ID
--  FROM INSERTED
 
 
--  Declare @StampCardCode varchar(200)
-- Declare @EnterpriseAccNo varchar(200)
-- Declare @CreatedByAccNo varchar(200)
-- DECLARE @Random int;
--DECLARE @Upper INT;
--DECLARE @Lower INT 
------ This will create a random number between 1 and 999
--SET @Lower = 1 ---- The lowest random number
--SET @Upper = 999 ---- The highest random number
--SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
--set @EnterpriseAccNo =(select EnterpriseAccNo from StampCampaign where ID=@id)
--set @CreatedByAccNo =(select CreatedByAccNo from StampCampaign where ID=@id)
--set @StampCardCode=(SELECT CAST(@Random AS varchar))+'-'+(SELECT CAST(@id AS varchar))+'-'+@EnterpriseAccNo+'-'+@CreatedByAccNo

 
-- update [StampCampaign]
-- set StampCampaignCode=@StampCardCode
-- where ID=@id


END
