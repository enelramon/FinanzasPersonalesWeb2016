create table Miembros (

MiembroId int primary key identity(1,1),
Nombre nvarchar(20),
esActivo int,
UsuarioId int foreign key References Usuarios(UsuarioId)


);