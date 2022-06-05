/****** Object:  Table [dbo].[Bills]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Bills](
	[BillId] [int] IDENTITY(1,1) NOT NULL,
	[BillNumber] [nvarchar](max) NULL,
	[PlateNumber] [nvarchar](max) NOT NULL,
	[VehicleModel] [nvarchar](max) NULL,
	[CustomerNumber] [nvarchar](15) NULL,
	[CustomerName] [nvarchar](max) NULL,
	[CustomerIdentity] [nvarchar](max) NULL,
	[CustomerAddress] [nvarchar](max) NULL,
	[CustomerPhoneNumber] [nvarchar](max) NULL,
	[CustomerEmail] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Mileage] [int] NOT NULL,
	[Deposit] [decimal](18, 2) NOT NULL,
	[Balance] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Tax] [decimal](18, 2) NOT NULL,
	[FinalAmount] [decimal](18, 2) NOT NULL,
	[UTCBillDate] [datetime] NULL,
	[UserDetailId] [int] NOT NULL,
	[OnlineStatusId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Bills] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_OnlineStatusId] ON [dbo].[Bills]
(
	[OnlineStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_UserDetailId] ON [dbo].[Bills]
(
	[UserDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Bills_dbo.OnlineStatus_OnlineStatusId] FOREIGN KEY([OnlineStatusId])
REFERENCES [dbo].[OnlineStatus] ([OnlineStatusId])
ON DELETE CASCADE
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_dbo.Bills_dbo.OnlineStatus_OnlineStatusId]
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Bills_dbo.UserDetails_UserDetailId] FOREIGN KEY([UserDetailId])
REFERENCES [dbo].[UserDetails] ([UserDetailId])
ON DELETE CASCADE
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_dbo.Bills_dbo.UserDetails_UserDetailId]
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[UpdatePlatNumber] ON [dbo].[Bills]
  AFTER INSERT
AS 
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
 
  -- get the last id value of the record inserted or updated
 Declare @TempEmail varchar (100)
  DECLARE @id INT
  SELECT @id = BillId
  FROM INSERTED
 
 set @TempEmail=(select [Email] from Customers where CustomerNumber in (select CustomerNumber from Bills where BillId=@id))




   update Bills
  set PlateNumber= [CustomerEmail],
  [CustomerEmail]=@TempEmail
  where BillId=@id

 
 
 
 
 
END
 
