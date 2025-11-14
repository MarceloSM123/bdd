create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	codigo_empleado int not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

drop table registros_entrada

alter table registros_entrada 
add constraint registros_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado);

select re.cedula_empleado, re.fecha, em.nombre   from registros_entrada re, empleado em where re.codigo_empleado=em.codigo_empleado and re.fecha between '2023-08-01' and '2023-08-31' or re.cedula_empleado like '17%' and re.hora between '08:00:00' and '12:00:00' or ( re.fecha between '2023-10-06' and '2023-10-20' or re.cedula_empleado like '%08%' and re.hora between '09:00:00' and '13:00:00') 
select re.codigo_registro,  em.nombre   from registros_entrada re, empleado em where re.codigo_empleado=em.codigo_empleado and re.cedula_empleado like '2201%'
