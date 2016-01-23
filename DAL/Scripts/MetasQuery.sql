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

select * from Metas where 1=1 Order by MetaId

select * from MetasDetalle

select * from MetasDetalle where MetaId = 18