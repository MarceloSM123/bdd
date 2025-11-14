create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
    constraint empleado_pk primary key(codigo_empleado)
)

drop table empleado