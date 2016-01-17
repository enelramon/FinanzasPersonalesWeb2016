create database FinanzasPersonalesWebDb

use FinanzasPersonalesWebDb


create table Transferencias(
			TransferenciaId int primary key identity, 
			Fecha varchar(20), 
			CuentaOrigenId int,
			CuentaDestinoId int,
			Monto float,
			Observacion nvarchar(100),
			UsuarioId int References Usuarios(UsuarioId)
			);
			
