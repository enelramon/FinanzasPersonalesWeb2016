
create table Metas
(
	MetaId int primary key identity(1,1),
	DescripcionId nvarchar(100),
	UsuarioId int References Usuarios(UsuarioId)
);

create table MetasDetalle
(
	MetaDetalleId int primary key identity(1,1),
	PresupuestoId int References Presupuestos(PresupuestoId),
	TipoIngresoId int References TiposIngresos(TipoIngresoId),
	Monto float
);