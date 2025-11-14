create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	codigo_empleado int not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

drop table registros_entrada

alter table registros_entrada 
add constraint registros_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado);