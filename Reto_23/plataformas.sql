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