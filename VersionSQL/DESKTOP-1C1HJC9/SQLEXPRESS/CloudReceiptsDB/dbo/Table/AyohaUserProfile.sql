/****** Object:  Table [dbo].[AyohaUserProfile]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AyohaUserProfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountNo] [varchar](250) NULL,
	[AccountName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[Photo] [varchar](250) NULL,
	[Gender] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[RowStatus] [varchar](50) NULL CONSTRAINT [DF_AyohaUserProfile_RowStatus]  DEFAULT ('Active'),
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_AyohaUserProfile_CreatedDate]  DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
	[UserName] [varchar](50) NULL,
	[Katalaluan] [varchar](50) NULL,
	[LastLoginDate] [datetime] NULL,
	[PhotoName] [varchar](150) NULL,
	[GUID] [uniqueidentifier] NULL CONSTRAINT [DF_AyohaUserProfile_GUID]  DEFAULT (newid()),
	[isUserVerified] [varchar](50) NULL CONSTRAINT [DF_AyohaUserProfile_isUserVerified]  DEFAULT ('NO'),
	[VerifyString] [varchar](50) NULL,
	[AyohaVersion] [varchar](50) NULL CONSTRAINT [DF_AyohaUserProfile_AyohaVersion]  DEFAULT ('Ayoha Reward v 1.0'),
 CONSTRAINT [PK_AyohaUserProfile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
Create TRIGGER [dbo].[AyohaUserProfile_GenerateVerifyString] ON [dbo].[AyohaUserProfile]
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
 
---- This will create a random number between 1 and 999
SET @Lower = 1 ---- The lowest random number
SET @Upper = 999999 ---- The highest random number
SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

 
 update AyohaUserProfile
 set VerifyString=@Random
 where ID=@id


END
 
--select *  from FlatBill
--select * from CloudReceipts_MobileUser
