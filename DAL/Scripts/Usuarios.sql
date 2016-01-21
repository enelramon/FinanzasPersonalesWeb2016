create database FinanzasPersonalesDb

use FinanzasPersonalesDb

create table Usuarios(
UsuarioId Int identity(1,1) primary key,
Nombres nvarchar(50),
TipoUsuarioId int,
Usuario nvarchar(15),
Contrasena nvarchar(10),
Email nvarchar(30))

drop table Usuarios
