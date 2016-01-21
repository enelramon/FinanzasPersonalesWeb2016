create database FinanzasPersonalesWeb

use FinanzasPersonalesWeb

create table Egresos(
EgresoId int identity(1,1) primary key,
Fecha varchar(10),
CuentaId int references Cuentas(CuentaId),
Monto float,
MiembroId int references Miembros(MiembroId),
TipoEgresoId int references TiposEgresos(TipoEgresoId),
Observacion varchar(100)
)

insert into Cuentas(Descripcion) values('Cuenta de Ahorro')
insert into Miembros(Nombre) values('Melvin')
insert into TiposEgresos(Descripcion) values('Que movie')

select *from Egresos

