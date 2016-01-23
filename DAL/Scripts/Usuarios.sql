create database FinanzasPersonalesWebDb

use FinanzasPersonalesWebDb

create table Usuarios(
UsuarioId Int identity(1,1) primary key,
Nombres nvarchar(50),
TipoUsuarioId int References TipoUsuarios(TipoUsuarioId),
Usuario nvarchar(15),
Contrasena nvarchar(10),
Email nvarchar(30))

