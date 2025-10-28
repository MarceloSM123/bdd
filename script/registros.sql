drop table registros

create table registros(
	codigo_registro int not null,
	cedula_empleao char(10) not null,
	fecha date not null,
	hora time not null,
	constraint resgistros_pk primary key(codigo_registro)
)