/****** Object:  Table [dbo].[MembershipCard]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MembershipCard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MembershipCardCode] [varchar](250) NULL,
	[EnterpriseAccNo] [varchar](250) NULL,
	[MembershipCardFee] [decimal](18, 2) NULL,
	[MembershipCardType] [varchar](50) NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_MembershipCard_RowStatus]  DEFAULT ('Active'),
	[ExpiredDate] [datetime] NULL,
	[MembershipCardBackgroundImg] [varchar](550) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_MembershipCard_CreatedDate]  DEFAULT (getdate()),
	[CreatedBy] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[MembershipCardName] [varchar](250) NULL,
	[MembershipCardFeePaymentCycle] [varchar](50) NULL,
	[StrExpiredDate] [varchar](50) NULL,
	[isValidLifeTime] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[isRequiredApproval] [varchar](50) NULL CONSTRAINT [DF_MembershipCard_isRequiredApproval]  DEFAULT ('YES'),
 CONSTRAINT [PK_MembershipCard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[MembershipCard_GenerateMembershipCardCode] ON [dbo].[MembershipCard]
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
 
 
 
 DECLARE @Random varchar(50);
DECLARE @Upper INT;
DECLARE @Lower INT
Declare @StrID as varchar (100)
--Declare @StrImage as varchar (100)
 
---- This will create a random number between 1 and 999
SET @Lower = 1 ---- The lowest random number
SET @Upper = 999999 ---- The highest random number
SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

set @StrID=(SELECT CAST(@id as varchar(10)) as Num1)

 
 update MembershipCard
 set MembershipCardCode='MCC-'+@StrID+'-'+@Random
 where ID=@id



 --set @StrImage=(select MembershipCardBackgroundImg from MembershipCard where ID=@id)

 --if(@StrImage='http://42.1.63.57/AyohaImgCard/MembershipCardBackgroundImg/CRCom-71100/Default.png')
 --begin

 --update MembershipCard
 --set

 --end


END
 
--select *  from FlatBill
--select * from CloudReceipts_MobileUser

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
Create TRIGGER [dbo].[MembershipCard_UpdateMembershipsTemporaryOnly] ON [dbo].[MembershipCard]
  AFTER UPDATE
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 
 -- get the last id value of the record inserted or updated
 
  DECLARE @id INT
  SELECT @id = ID
  FROM INSERTED
 
 
 

Declare @MembershipCardCode as varchar (100)
Declare @MembershipFee as decimal (18,2)
Declare @MembershipLevel as varchar (100)
Declare @MembershipCardFeePaymentCycle as varchar (100)
Declare @StrExpiredDate as varchar (100)
Declare @isValidLifeTime as varchar (100)
--Declare @StrImage as varchar (100)

set @MembershipCardCode =(Select MembershipCardCode from MembershipCard where ID=@id)
set @MembershipFee =(Select MembershipCardFee from MembershipCard where ID=@id)
set @MembershipLevel =(Select MembershipCardType from MembershipCard where ID=@id)
set @MembershipCardFeePaymentCycle =(Select MembershipCardFeePaymentCycle from MembershipCard where ID=@id)
set @StrExpiredDate =(Select StrExpiredDate from MembershipCard where ID=@id)
set @isValidLifeTime =(Select isValidLifeTime from MembershipCard where ID=@id)

 
 update Memberships
 set MembershipFee=@MembershipFee,MembershipLevel=@MembershipLevel,MembershipCardFeePaymentCycle=@MembershipCardFeePaymentCycle,StrExpiredDate=@StrExpiredDate,isValidLifeTime=@isValidLifeTime
 where MembershipCardCode=@MembershipCardCode



 --set @StrImage=(select MembershipCardBackgroundImg from MembershipCard where ID=@id)

 --if(@StrImage='http://42.1.63.57/AyohaImgCard/MembershipCardBackgroundImg/CRCom-71100/Default.png')
 --begin

 --update MembershipCard
 --set

 --end


END

--select * from Memberships
--select * from MembershipCard
 
--select *  from FlatBill
--select * from CloudReceipts_MobileUser
