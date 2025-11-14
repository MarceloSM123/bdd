drop table videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null ,
	descripcion varchar(100),
	valoracion int not null;
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

-- SELECCIONES
select * from videojuegos where nombre like 'c%'
select * from videojuegos where valoracion between 9 and 10
select * from videojuegos where descripcion is null

--ACTUALIZACIONES

update videojuegos set descripcion='mejor puntuado' where valoracion>9

--ELIMINAR

delete from videojuegos where valoracion <7

--nuevos datos 
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);

-- selecciones 2 

select * from videojuegos where nombre like 'c%' or nombre like '%c' or nombre like '%c%' or valoracion=7
select * from videojuegos where codigo between 3 and 7 or valoracion=7
select * from videojuegos where descripcion='juego de guerra' and valoracion>7 and nombre like 'c%' or valoracion>8 and nombre like 'd%'