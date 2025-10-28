drop table videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)
-- Inserccion de todos los parametros de la tabla
insert into videojuegos(codigo, nombre, descripcion,valoracion)
values (1, 'mario','nintendo',10)
insert into videojuegos(codigo, nombre, descripcion,valoracion)
values (2,'contra','nintendo',9)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(3,'Mortal Combat', 'Play Station ',10)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (4,'assesins creed: Brotherhood', 'PC',9)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (5,'Resident Evil: Nemesis','PC',10)
--insercion solo de los parametros obligatorios
insert into videojuegos(codigo,nombre,valoracion)
values (6,'Starcraft',9)
insert into videojuegos(codigo,nombre,valoracion)
values (7,'Star Wars',8.5)
insert into videojuegos(codigo,nombre,valoracion)
values (8,'Quake arena',9)

select * from videojuegos
