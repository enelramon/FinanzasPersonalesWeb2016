/** Faltan algunos FK por falta de las otras tablas los agrego cuando se crean las tablas **/

/****** Object:  Table [dbo].[Presupuestos]    Script Date: 1/18/2016 8:54:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Presupuestos](
	[PresupuestoId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_Presupuesto] PRIMARY KEY CLUSTERED 
(
	[PresupuestoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[PresupuestoDetalle]    Script Date: 1/18/2016 9:08:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PresupuestoDetalle](
	[PresupuestoDetalleId] [int] IDENTITY(1,1) NOT NULL,
	[PresupuestoId] [int] NOT NULL,
	[TipoEgresosId] [int] NULL,
	[Monto] [float] NOT NULL,
 CONSTRAINT [PK_PresupuestoDetalle] PRIMARY KEY CLUSTERED 
(
	[PresupuestoDetalleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PresupuestoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_PresupuestoDetalle_Presupuestos] FOREIGN KEY([PresupuestoId])
REFERENCES [dbo].[Presupuestos] ([PresupuestoId])
GO

ALTER TABLE [dbo].[PresupuestoDetalle] CHECK CONSTRAINT [FK_PresupuestoDetalle_Presupuestos]
GO

ALTER TABLE [dbo].[PresupuestoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_PresupuestoDetalle_TiposEgresos] FOREIGN KEY([TipoEgresosId])
REFERENCES [dbo].[TiposEgresos] ([TipoEgresoId])
GO

ALTER TABLE [dbo].[PresupuestoDetalle] CHECK CONSTRAINT [FK_PresupuestoDetalle_TiposEgresos]
GO

