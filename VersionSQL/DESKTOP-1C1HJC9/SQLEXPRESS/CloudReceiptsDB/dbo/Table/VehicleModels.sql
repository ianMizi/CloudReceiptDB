/****** Object:  Table [dbo].[VehicleModels]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[VehicleModels](
	[VehicleModelId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleTypeId] [int] NOT NULL,
	[Model] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.VehicleModels] PRIMARY KEY CLUSTERED 
(
	[VehicleModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_VehicleTypeId] ON [dbo].[VehicleModels]
(
	[VehicleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[VehicleModels]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VehicleModels_dbo.VehicleTypes_VehicleTypeId] FOREIGN KEY([VehicleTypeId])
REFERENCES [dbo].[VehicleTypes] ([VehicleTypeId])
ON DELETE CASCADE
ALTER TABLE [dbo].[VehicleModels] CHECK CONSTRAINT [FK_dbo.VehicleModels_dbo.VehicleTypes_VehicleTypeId]
