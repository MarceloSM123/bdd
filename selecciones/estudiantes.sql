drop table estudiantes

create table estudiantes (
	cedula char(10) not null,
	nombre varchar(50) not null ,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1234567890','Marcelo', 'Salcedo', 'asd@gmail.com','23/05/1992')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1232567890','Mariela', 'Cruz', 'cd@gmail.com','27/06/2000')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1233567890','Marco', 'Espejo', 'esd@gmail.com','26/07/2021')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1235567890','michele', 'velasquez', 'ved@gmail.com','25/08/1995')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1236567890','Carla', 'Rodriguez', 'rad@gmail.com','24/09/1980')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1237567890','Maria', 'smith', 'sbd@gmail.com','23/10/1992')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1238567890','Diana', 'Salazar', 'sad@gmail.com','22/11/1990')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1234597890','Fernanda', 'Ochoa', 'ocd@gmail.com','12/01/1991')

select * from estudiantes

-- selecciones
select nombre, cedula from estudiantes
select nombre from estudiantes where cedula like '17%'
select nombre from estudiantes where nombre like 'A%'


