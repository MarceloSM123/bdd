drop table personas
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null, 
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money, 
	numero_hijos int,
	constraint personas_pk primary key(cedula)
	
)

insert into personas(cedula, nombre, apellido, estatura,fecha_nacimiento)
values('1234567890','ASDASD','ljkljl',10.5,'20/05/2010')
-- cuidado con los not null si no se llenn generan errores, es decir son obligatorios
select cedula, nombre, apellido from personas
select cedula, nombre, apellido, estatura,fecha_nacimiento from personas
select * from personas