
drop table profesores

create table profesores(
	codigo int ,
	nombre varchar(50) not null ,
	constraint profesores_pk primary key(codigo)
)

select * from profesores

insert into profesores (codigo, nombre)
values (1,'Luis');
insert into profesores (codigo, nombre)
values (2,'Marta');
insert into profesores (codigo, nombre)
values (3,'Carla');
insert into profesores (codigo, nombre)
values (4,'Marco');
insert into profesores (codigo, nombre)
values (5,'mia');
insert into profesores (codigo, nombre)
values (6,'Tito');
insert into profesores (codigo, nombre)
values (7,'Pablo');
insert into profesores (codigo, nombre)
values (8,'Lucas');
