create database TipoIngresosScrit

use TipoIngresosScrit

create table TipoIngresos(
TipodeIngresoId int identity(1,1) primary key,
Descripcion varchar(40),
EsActivo bit
UsuarioId int References Usuarios(UsuarioId)
);