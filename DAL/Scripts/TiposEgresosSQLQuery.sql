
Create Table TiposEgresos
(
	TipoEgresoId int Identity(1,1) Primary Key,
	Descripcion Varchar(70),
	EsActivo bit,
	UsuarioId Int
)