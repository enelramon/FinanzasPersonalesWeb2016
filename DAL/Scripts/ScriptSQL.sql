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
create table Cuentas(
CuentaId int identity(1,1) primary key,
UsuarioId int References Usuarios(UsuarioId),
Descripcion varchar(100),
Balance float,
Porciento int
)
select *from Cuentas
Select *from Egresos
Delete from Egresos
Delete From Ingresos
Delete From Cuentas
select *from Ingresos
Select *from Usuarios

select sum(e.Monto) as Egresos,c.Descripcion,c.Balance,sum(i.Monto) as Ingresos,c.CuentaId,(c.Balance + sum((i.Monto) - (e.Monto))) as NuevoBalance from Cuentas c
left join Egresos e on c.CuentaId = e.CuentaId left join Ingresos i on c.CuentaId = i.CuentaId left join Usuarios u on u.UsuarioId = c.UsuarioId where u.UsuarioId = 5
Group by c.CuentaId,c.Descripcion,c.Balance



select (c.Balance + sum((i.Monto) - (e.Monto))) as NuevoBalance from Cuentas c
left join Egresos e on c.CuentaId = e.CuentaId left join Ingresos i on c.CuentaId = i.CuentaId left join Usuarios u on c.UsuarioId = u.UsuarioId where u.UsuarioId = 5
group by c.Balance

--Script Edwin 2
create table Ingresos(
IngresoId int identity(1,1) primary key,
Fecha varchar(10),
CuentaId int references Cuentas(CuentaId),
Monto float,
MiembroId int references Miembros(MiembroId),
TipoIngresoId int references TiposIngresos(TipoIngresoId),
Observacion varchar(100)
);

Insert into Ingresos(Monto,CuentaId) values(3000,7)

Update Cuentas set UsuarioId = 5 where CuentaId = 7

Insert into Egresos(Monto,CuentaId) values(500,7)


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

Insert Into Transferencias (Fecha, CuentaOrigenId, CuentaDestinoId, Monto, Observacion, UsuarioId) values('28/2/2016', 3, 2, 80000, 'Transferencia', 1)
select *from Cuentas 
--Script Juan Alberto
create table Transferencias(
			TransferenciaId int primary key identity, 
			Fecha varchar(20), 
			CuentaOrigenId int References Cuentas(CuentaId),
			CuentaDestinoId int References Cuentas(CuentaId),
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

--Script Angel
create table Miembros (

MiembroId int primary key identity(1,1),
Nombres varchar(30),
Apelidos varchar(60),
Parentesco varchar(20),
esActivo int,
UsuarioId int foreign key References Usuarios(UsuarioId)

)
go
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


select * from Cuentas
insert into Cuentas(UsuarioId,Descripcion,Balance,Porciento) values(5,'Prueba 2',300,5.2)

go
create table Personas(
	PersonaId int identity(1,1) Primary key,
	Nombres varchar(50)
)
go
create table PersonasTelefonos(
	Id int identity(1,1) Primary key,
	PersonaId int foreign key References Personas(PersonaId),
	TipoId Int ,
	Telefono varchar(12)
)

go