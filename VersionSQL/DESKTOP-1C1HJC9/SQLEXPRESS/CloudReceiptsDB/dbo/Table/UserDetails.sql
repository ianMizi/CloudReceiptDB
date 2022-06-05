/****** Object:  Table [dbo].[UserDetails]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[UserDetails](
	[UserDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](128) NULL,
	[UserStatusId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[AccountNo] [nvarchar](max) NULL,
	[WorkshopName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[ReferralPerson] [nvarchar](max) NULL,
	[ReferralPhoneNumber] [nvarchar](max) NULL,
	[ReferralEmail] [nvarchar](max) NULL,
	[UTCRegistration] [datetime] NULL,
	[UTCDeactivate] [datetime] NULL,
 CONSTRAINT [PK_dbo.UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IX_ApplicationUserId] ON [dbo].[UserDetails]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_CompanyId] ON [dbo].[UserDetails]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_UserStatusId] ON [dbo].[UserDetails]
(
	[UserStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserDetails_dbo.AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_dbo.UserDetails_dbo.AspNetUsers_ApplicationUserId]
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserDetails_dbo.Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([CompanyId])
ON DELETE CASCADE
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_dbo.UserDetails_dbo.Companies_CompanyId]
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserDetails_dbo.UserStatus_UserStatusId] FOREIGN KEY([UserStatusId])
REFERENCES [dbo].[UserStatus] ([UserStatusId])
ON DELETE CASCADE
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_dbo.UserDetails_dbo.UserStatus_UserStatusId]
