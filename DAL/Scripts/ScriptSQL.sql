create database FinanzasPersonalesWebDb

use FinanzasPersonalesWebDb

--Script Darlin
Create table TiposUsuario (
TipoUsuarioId int primary key identity(1,1),
Descripcion Varchar(100))

--Script Christopher
create table Usuarios(
UsuarioId Int identity(1,1) primary key,
Nombre nvarchar(20),
Apellidos nvarchar(20),
TipoUsuarioId int References TiposUsuario(TipoUsuarioId),
Usuario nvarchar(15),
Contrasena nvarchar(10),
Email nvarchar(30))
select *from Usuarios
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

select * from Metas

--Script Miembros
create table Miembros (

MiembroId int primary key identity(1,1),
Nombre varchar(20),
esActivo int,
UsuarioId int foreign key References Usuarios(UsuarioId)


)
--Script Newlin

/****** Object:  Table [dbo].[Presupuestos]    Script Date: 1/18/2016 8:54:42 PM ******/

GO
CREATE TABLE Presupuestos(
	PresupuestoId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	UsuarioId int REFERENCES Usuarios(UsuarioId),
	Descripcion varchar(100)
)

GO


/****** Object:  Table [dbo].[PresupuestoDetalle]    Script Date: 1/18/2016 9:08:04 PM ******/
GO
CREATE TABLE [dbo].[PresupuestosDetalle](
	PresupuestoDetalleId int PRIMARY KEY IDENTITY(1,1),
	PresupuestoId int REFERENCES Presupuestos(PresupuestoId) NOT NULL,
	TipoEgresoId int REFERENCES TiposEgresos(TipoEgresoId),
	Monto float NOT NULL
)
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