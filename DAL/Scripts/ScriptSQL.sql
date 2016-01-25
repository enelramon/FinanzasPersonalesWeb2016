create database FinanzasPersonalesWebDb

use FinanzasPersonalesWebDb

--Script Darlin
Create table TiposUsuario (
TipoUsuarioId int primary key identity(1,1),
Descripcion Varchar(100))

--Script Christopher
create table Usuarios(
UsuarioId Int identity(1,1) primary key,
Nombres nvarchar(50),
TipoUsuarioId int References TiposUsuario(TipoUsuarioId),
Usuario nvarchar(15),
Contrasena nvarchar(10),
Email nvarchar(30))

--Script Yahaida
CREATE TABLE [dbo].[Cuentas](
	[CuentaId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NULL,
	[Descripcion] [varchar](100) NULL,
	[Balance] [float] NULL,
	[Porciento] [int] NULL,
 CONSTRAINT [PK_Cuentas] PRIMARY KEY CLUSTERED 
(
	[CuentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


--Script Melvin
create table Egresos(
EgresoId int identity(1,1) primary key,
Fecha varchar(10),
CuentaId int references Cuentas(CuentaId),
Monto float,
MiembroId int references Miembros(MiembroId),
TipoEgresoId int references TiposEgresos(TipoEgresoId),
Observacion varchar(100)
)

--Script Juan Alberto
create table Transferencias(
			TransferenciaId int primary key identity, 
			Fecha varchar(20), 
			CuentaOrigenId int,
			CuentaDestinoId int,
			Monto float,
			Observacion nvarchar(100),
			UsuarioId int References Usuarios(UsuarioId)
			);
			
			
--Script Francis
create table Metas
(
	MetaId int primary key identity(1,1),
	Descripcion nvarchar(100) not null,
	UsuarioId int References Usuarios(UsuarioId)
);

create table MetasDetalle
(
	MetaDetalleId int primary key identity(1,1),
	MetaId int References Metas(MetaId),
	TipoIngresoId int References TiposIngresos(TipoIngresoId),
	Monto float
);

--Script Miembros
create table Miembros (

MiembroId int primary key identity(1,1),
Nombre varchar(20),
esActivo int,
UsuarioId int foreign key References Usuarios(UsuarioId)


)
--Script Newlin
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

--Script Tipo Ingreso
create table TiposIngresos(
	TipoIngresoId int primary key identity(1,1),
	Descripcion varchar(50),
	EsActivo bit,
	UsuarioId int References Usuarios(UsuarioId)
);

--Script Tipo Egreso

Create Table TiposEgresos
(
	TipoEgresoId int Identity(1,1) Primary Key,
	Descripcion Varchar(70),
	EsActivo bit,
	UsuarioId Int
)