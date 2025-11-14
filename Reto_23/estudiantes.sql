create table estudiantes(
	cedula char(10),
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date,
	codigo_profesor int,
	constraint estudiantes_pk primary key(cedula)
)

drop table estudiantes

alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key (codigo_profesor)
references profesores(codigo)


insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1234567890','Marcelo', 'Salcedo', 'asd@gmail.com','23/05/1992');
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1232567890','Mariela', 'Cruz', 'cd@gmail.com','27/06/2000');
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1233567890','Marco', 'Espejo', 'esd@gmail.com','26/07/2021');
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1235567890','michele', 'velasquez', 'ved@gmail.com','25/08/1995');
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1236567890','Carla', 'Rodriguez', 'rad@gmail.com','24/09/1980');
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1237567890','Maria', 'smith', 'sbd@gmail.com','23/10/1992');
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1238567890','Diana', 'Salazar', 'sad@gmail.com','22/11/1990');
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1234597890','Fernanda', 'Ochoa', 'ocd@gmail.com','12/01/1991');

select * from estudiantes

-- selecciones
select nombre, cedula from estudiantes
select nombre from estudiantes where cedula like '17%'
select nombre from estudiantes where nombre like 'A%'

--actualizaciones 

update estudiantes set apellido='Hernandez' where cedula like '17%'

-- eliminar

delete from estudiantes where cedula like '%05'

--nuevos datos 
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');

--selecciones 2 
select nombre, apellido from estudiantes where nombre like 'm%' or apellido like '%z'
select nombre from estudiantes where (cedula like '%32' and cedula like '%39%') and cedula like '18%'
select nombre, apellido from estudiantes where cedula like '%06' or cedula like '%17'