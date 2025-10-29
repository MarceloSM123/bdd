drop table registros

create table registros(
	codigo_registro int not null,
	cedula_empleao char(10) not null,
	fecha date not null,
	hora time not null,
	constraint resgistros_pk primary key(codigo_registro)
)

insert into registros(codigo_registro,cedula_empleao,fecha,hora)
values (1,'1234567810','11/05/2000','12:12:12')
insert into registros(codigo_registro,cedula_empleao,fecha,hora)
values (2,'1234567820','12/06/2012','13:12:12')
insert into registros(codigo_registro,cedula_empleao,fecha,hora)
values (3,'1234567830','13/07/2022','14:12:12')
insert into registros(codigo_registro,cedula_empleao,fecha,hora)
values (4,'1234567840','14/08/2021','15:12:12')
insert into registros(codigo_registro,cedula_empleao,fecha,hora)
values (5,'1234567850','15/05/2022','16:12:12')
insert into registros(codigo_registro,cedula_empleao,fecha,hora)
values (6,'1234567860','16/09/2023','17:12:12')
insert into registros(codigo_registro,cedula_empleao,fecha,hora)
values (7,'1234567870','17/10/2024','11:12:12')
insert into registros(codigo_registro,cedula_empleao,fecha,hora)
values (8,'1234567880','18/01/2025','10:12:12')
insert into registros(codigo_registro,cedula_empleao,fecha,hora)
values (9,'1234567890','19/02/2012','10:12:12')
insert into registros(codigo_registro,cedula_empleao,fecha,hora)
values (10,'1234997890','20/03/2022','11:12:12')

select * from registros

-- SELECCIONES

select cedula_empleao, fecha, hora from registros
select * from registros where hora between '7:00:00' and '14:00:00'
select * from registros where hora>'8:00:00'

-- ACTUALIZACIONES
update registros set cedula_empleao='082345679' where fecha between '1/08/2025' and '30/08/2025'

-- eliminar 
delete from registros where fecha between '1/06/2025' and '30/06/2025' 