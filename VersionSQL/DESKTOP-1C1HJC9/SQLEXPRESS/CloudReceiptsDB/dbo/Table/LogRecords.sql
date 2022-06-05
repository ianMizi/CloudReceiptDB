/****** Object:  Table [dbo].[LogRecords]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[LogRecords](
	[LogRecordId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](128) NULL,
	[UTCLogDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.LogRecords] PRIMARY KEY CLUSTERED 
(
	[LogRecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IX_ApplicationUserId] ON [dbo].[LogRecords]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[LogRecords]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogRecords_dbo.AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ALTER TABLE [dbo].[LogRecords] CHECK CONSTRAINT [FK_dbo.LogRecords_dbo.AspNetUsers_ApplicationUserId]
