/****** Object:  Table [dbo].[Memberships]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Memberships](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CampaignEnterpriseAccNo] [varchar](250) NULL,
	[CampaignRewardType] [varchar](250) NULL,
	[SubscriberAccNo] [varchar](250) NULL,
	[MembershipDate] [datetime] NULL,
	[MembershipByMethod] [varchar](250) NULL,
	[MembrshipApprovalDate] [datetime] NULL,
	[MembershipApprovalBy] [varchar](250) NULL,
	[ReferalSubscriberAccNo] [varchar](250) NULL,
	[MembershipFee] [decimal](18, 2) NULL,
	[MembershipLevel] [varchar](250) NULL,
	[IsRequiredMembershipFee] [varchar](250) NULL,
	[RowStatus] [varchar](250) NULL CONSTRAINT [DF_Memberships_RowStatus]  DEFAULT ('Active'),
	[MembershipNo] [varchar](250) NULL,
	[MembershipApprovalStatus] [varchar](250) NULL,
	[MembershipFeePaymentMethod] [varchar](250) NULL,
	[MembershipPaymentLink] [varchar](250) NULL,
	[MembershipPaymentPaidProof] [varchar](350) NULL,
	[MembershipCardCode] [varchar](250) NULL,
	[MembershipPaymentCode] [varchar](250) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_Memberships_CreatedDate]  DEFAULT (getdate()),
	[CreatedBy] [varchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](250) NULL,
	[MembershipCardFeePaymentCycle] [varchar](250) NULL,
	[StrExpiredDate] [varchar](250) NULL,
	[isValidLifeTime] [varchar](250) NULL,
	[CampaignEnterpriseHQAccNo] [varchar](250) NULL,
 CONSTRAINT [PK_Memberships] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[Memberships_GenerateMembershipNo] ON [dbo].[Memberships]
  AFTER INSERT
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 
 -- get the last id value of the record inserted or updated
 
  DECLARE @id INT
  SELECT @id = ID
  FROM INSERTED
 
 
 
 DECLARE @SubscriberAccNo as varchar(250);
DECLARE @MembershipCardCode as varchar(250);
DECLARE @IDs as varchar(250);
 


set @SubscriberAccNo=(select SubscriberAccNo from Memberships where ID=@id)
set @MembershipCardCode=(select MembershipCardCode from Memberships where ID=@id)
set @IDs=(SELECT CAST(@id as varchar(250)) as Num1)
 
 update Memberships
 set MembershipNo=@SubscriberAccNo+'-'+@MembershipCardCode+'-'+@IDS
 where ID=@id


END
 
--select *  from FlatBill
--select * from CloudReceipts_MobileUser
