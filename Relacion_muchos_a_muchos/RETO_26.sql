-- 1.- RELACION MUCHO A MUCHOS ENTRE USUARIOS Y GRUPO 
-- tabla USUARIOS
drop table usuarios
create table usuarios(
	usuarios_id int ,--llave primaria
	nombre varchar(25) not null,
	apellido varchar(25) not null, 
	fecha_nacimiento date,
	constraint usuarios_pk primary key (usuarios_id)
	)
-- tabla GRUPOS
drop table grupo
create table grupo(
	grupo_id int,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key (grupo_id)
)

-- tabla de rompimiento usuario_a-grupo
drop table usuario_grupo
create table usuario_grupo (
	us_id int not null,
	gr_id int not null,

	constraint usuario_fk foreign key (us_id) references usuarios(usuarios_id),
	constraint grupo_fk foreign key (gr_id) references grupo(grupo_id),
	constraint usuario_grupo_pk primary key (us_id,gr_id)
)

--2.- RELACION MUCHO A MUCHOS ENTRE HABITACIONES Y HUESPEDES

-- tabla HABIACIONES

create table habitaciones(
	habitacion_numero int, --llave primaria
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key (habitacion_numero)
)

-- tabla HUESPEDES
drop table huespedes
create table huespedes (
	huespedes_id int,-- llave primaria
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key (huespedes_id)
)

-- tabla de rompimiento habitaciones a huespedes
drop table reservas

create table reservas(
	inicio_fecha date,
	fin_fecha date,
	habitacion int not null,-- llave foranea
	huesped_id int not null, --llave foranea
	constraint habitaciones_fk foreign key (habitacion) references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key (huesped_id) references huespedes(huespedes_id),
	constraint reservas_pk primary key (habitacion,huesped_id)
)

-- 3.- RELACION MUCHOS A MUCHOS ENTRE MUNICIPIO Y PROYECTO

-- tabla CIUDAD 

create table ciudad(
	id_ciudad int, --llave primaria
	nombre varchar(45) not null,
	constraint ciudad_pk primary key (id_ciudad)

)

-- tabla MUNICIPIO
drop table municipio
create table municipio(
	id_municipio int, -- llave primaria
	nombre varchar(45),
	ciudad_id int, -- llave foranea
	constraint municipio_pk primary key (id_municipio),
	constraint ciudad_fk foreign key (ciudad_id) references ciudad(id_ciudad)
)

-- tabla proyecto

create table proyecto(
	id_proyecto int, -- llave primaria
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyectos_pk primary key (id_proyecto)
	
)

-- tabla rompimiento proyecto_municipio
drop table proyecto_municipio
create table proyecto_municipio(
	municipio_id int not null, --llave foranea
	proyecto_id int not null,--llave foranea
	constraint proyecto_fk foreign key (proyecto_id) references proyecto(id_proyecto),
	constraint municipio_fk foreign key (municipio_id) references municipio(id_municipio),
	constraint proyecto_municipio_pk primary key (proyecto_id,municipio_id)

)

--QUERYS RELACION MUCHOS A MUCHOS

--RELACION muchos a muchos entre usuarios y grupo

-- consulta 1
select usu.nombre, gru.nombre from usuarios usu, usuario_grupo ug, grupo gru where ug.us_id=usu.usuarios_id and ug.gr_id=gru.grupo_id;

--subconsulta
select nombre from usuarios where usuarios_id in(select us_id from usuario_grupo where gr_id=1)

--funcion de agregacion
select gru.nombre,count(ug.us_id)  from grupo gru, usuario_grupo ug where gru.grupo_id=ug.gr_id group by gru.nombre  

-- consulta 2
select usu.nombre, gru.nombre from usuarios usu, usuario_grupo ug, grupo gru where ug.us_id=usu.usuarios_id and ug.gr_id=gru.grupo_id and gru.nombre like '%intensivo%';

--subconsulta 
select nombre from usuarios where usuarios_id in(select us_id from usuario_grupo where gr_id=2 )
-- Funcion de agregacion
select  gru.nombre, max(ug.us_id),min(ug.us_id) from usuario_grupo ug, grupo gru where ug.gr_id=gru.grupo_id group by gru.nombre;

-- consulta 3
select usu.nombre, gru.fecha_creacion from usuarios usu, usuario_grupo ug, grupo gru where ug.us_id=usu.usuarios_id and ug.gr_id=gru.grupo_id and gru.fecha_creacion between '2020-03-08' and '2022-03-08';
--subconsulta 3
select nombre from usuarios where usuarios_id in(select us_id from usuario_grupo where gr_id=3 )
--funcion de agregacion 3 
select gru.descripcion, count(ug.us_id) from usuario_grupo ug, grupo gru where  ug.gr_id=gru.grupo_id and gru.descripcion like '%matutino%' group by gru.descripcion;


--RELACION MUCHOS A MUCHOS ENTE HABITACIONES Y HUESPEDES


--consulta 1
select ha.habitacion_numero, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re where ha.habitacion_numero =re.habitacion and hu.huespedes_id=re.huesped_id

--subconsulta 1
select nombres, apellidos from huespedes where huespedes_id in(select huesped_id from reservas where habitacion =2)

--funcon de agregacion
select ha.habitacion_numero, count(re.huesped_id) from habitaciones ha, reservas re where ha.habitacion_numero =re.habitacion group by ha.habitacion_numero


--consulta 2 
select ha.habitacion_numero, ha.piso, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re where ha.piso=4 and  ha.habitacion_numero =re.habitacion and hu.huespedes_id=re.huesped_id

-- subconsulta 2
select nombres, apellidos from huespedes where huespedes_id in(select huesped_id from reservas where habitacion=3)

--funcion de agregacion 2
select ha.habitacion_numero, avg(re.huesped_id) from habitaciones ha, reservas re where ha.piso=4 and  ha.habitacion_numero =re.habitacion group by ha.habitacion_numero

-- consulta 3
select ha.habitacion_numero, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re where   ha.habitacion_numero =re.habitacion and hu.huespedes_id=re.huesped_id
-- subconsulta 3
select nombres, apellidos from huespedes where huespedes_id in(select huesped_id from reservas where habitacion=4  )


--RELACION MUCHOS A MUCHOS ENTRE MUNICIPIO Y PROYECTOS

--CONSULTA 1
SELECT mu.nombre, pro.proyecto FROM municipio mu, proyecto pro, proyecto_municipio pm where mu.id_municipio=pm.municipio_id and pro.id_proyecto=pm.proyecto_id

--SUBCONSULTA 1
select proyecto from proyecto where id_proyecto in(select proyecto_id from proyecto_municipio where municipio_id=1)

--FUNCION DE AGREGACION 1
SELECT mu.nombre, COUNT(pm.proyecto_id) FROM municipio mu, proyecto_municipio pm where mu.id_municipio=pm.municipio_id group by mu.nombre


--CONSULTA 2
SELECT mu.nombre, pro.proyecto FROM municipio mu, proyecto pro, proyecto_municipio pm where mu.id_municipio=pm.municipio_id and pro.id_proyecto=pm.proyecto_iD AND mu.nombre like '%GAD%' 

--SUBCONSULTA 2
SELECT mu.nombre, min(pm.proyecto_id) FROM municipio mu, proyecto_municipio pm where mu.id_municipio=pm.municipio_id group by mu.nombre

--CONSULTA 3
SELECT mu.nombre, ci.nombre FROM municipio mu, ciudad ci where mu.ciudad_id=ci.id_ciudad  

--SUBCONSULTA 3
select proyecto from proyecto where id_proyecto in (select proyecto_id from proyecto_municipio where municipio_id=3 )

-- FUNCION DE AGREGACION 3
SELECT mu.nombre, max(pm.proyecto_id) FROM municipio mu, proyecto_municipio pm where mu.id_municipio=pm.municipio_id group by mu.nombre

