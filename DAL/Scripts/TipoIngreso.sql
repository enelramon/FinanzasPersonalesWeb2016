
create table TiposIngresos(
	TipoIngresoId int primary key identity(1,1),
	Descripcion varchar(50),
	EsActivo bit,
	UsuarioId int References Usuarios(UsuarioId)
);