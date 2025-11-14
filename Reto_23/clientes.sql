drop table clientes

create table clientes (
	cedula char(10),
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key(cedula)
)

insert into clientes (cedula,nombre,apellido)
values ('1234567891','Marcelo','Salcedo')

select * from clientes