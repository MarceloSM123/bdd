
drop table compras

create table compras(
	id_compra int ,
	cedula char(10) not null ,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint compras_pk primary key(id_compra)
)
 

alter table compras 
add constraint compras_clientes_fk
foreign key (cedula)
references clientes(cedula)

insert into compras (id_compra,cedula,fecha_compra,monto)
values (10,'1234567891','2025-11-11',100.25)
insert into compras (id_compra,cedula,fecha_compra,monto)
values (11,'1787631258','2023-11-11',110.25)

select ci.nombre,ci.apellido from clientes ci, compras co where ci.cedula=co.cedula and( ci.cedula like '%7' or  ci.cedula like '%7%' or  ci.cedula like '7%')
select ci.* from clientes ci, compras co where ci.cedula=co.cedula and ci.nombre='Monica'
select * from clientes ci, compras co where ci.cedula=co.cedula
select count(monto),co.fecha_compra from clientes ci, compras co where ci.cedula=co.cedula and co.fecha_compra='2025-11-11' group by co.fecha_compra