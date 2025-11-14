delete from personas

alter table personas
add column estado_civil_codigo char(1) not null

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	Constraint estado_civil_pk primary key (codigo)
)

alter table personas 
add constraint personas_estado_civil_fk
foreign key (estado_civil_codigo)
references estado_civil(codigo)

select * from personas

insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values ('1718191520','Marcelo','Salcedo','S' )


insert into estado_civil(codigo,descripcion)
values ('U', 'UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values ('C', 'CASADO');
insert into estado_civil(codigo,descripcion)
values ('S', 'SOLTERO');

select * from estado_civil
select * from personas