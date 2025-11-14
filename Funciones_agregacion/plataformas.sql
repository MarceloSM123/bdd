drop table plataformas

create table plataformas(
	id_plataforma int ,
	nombre_plataforma varchar(50) not null ,
	codigo_videojuego int,
	constraint plataformas_pk primary key(id_plataforma)
)

alter table plataformas 
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)

select * from plataformas

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(1,'nintendo',2 );
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(2,'pc',6 );
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(3,'play station',7 );

select vi.nombre, vi.descripcion, vi.valoracion, pl.nombre_plataforma from videojuegos vi, plataformas pl where pl.codigo_videojuego=vi.codigo and vi.descripcion='Guerra' and vi.valoracion>7 or vi.nombre like 'C%' and vi.valoracion>8 or vi.nombre like 'D%' 
select  pl.* from videojuegos vi, plataformas pl where pl.codigo_videojuego=vi.codigo and vi.nombre='God of war'