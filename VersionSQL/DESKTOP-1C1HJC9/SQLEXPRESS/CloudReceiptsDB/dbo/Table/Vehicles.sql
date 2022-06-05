/****** Object:  Table [dbo].[Vehicles]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Vehicles](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[PlateNumber] [nvarchar](20) NOT NULL,
	[VehicleModelId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[VehicleImage] [varchar](max) NULL,
 CONSTRAINT [PK_dbo.Vehicles] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Vehicles]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_VehicleModelId] ON [dbo].[Vehicles]
(
	[VehicleModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vehicles_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON DELETE CASCADE
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_dbo.Vehicles_dbo.Customers_CustomerId]
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vehicles_dbo.VehicleModels_VehicleModelId] FOREIGN KEY([VehicleModelId])
REFERENCES [dbo].[VehicleModels] ([VehicleModelId])
ON DELETE CASCADE
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_dbo.Vehicles_dbo.VehicleModels_VehicleModelId]
