create database FinanzasPersonalesWebDb


create table Transferencias(
			TranferenciaId int primary key identity, 
			Fecha varchar, 
			CuentacorigenId int,
			CuentaDestinoId int,
			Monto float,
			Observacion nvarchar,
			UsuarioId int References Usuarios(UsuarioId)
			);
