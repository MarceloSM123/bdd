drop table transacciones

create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key(codigo)
)

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1,'12345',12.12,'D','12/01/1999','12:12:12')
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2,'12245',11.33,'D','13/02/1999','13:12:12')
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (3,'13345',25.66,'D','14/03/1999','13:12:12')
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (4,'14345',88.99,'C','15/04/1999','14:12:12')
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (51,'12545',45.56,'C','18/05/1999','14:12:12')
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (6,'12645',88.00,'D','19/06/1999','15:12:12')
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (7,'12775',77.11,'C','11/07/1999','15:12:12')
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (8,'12885',55.66,'D','12/07/1999','16:12:12')
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (9,'12995',12.56,'D','13/08/1999','16:12:12')
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (10,'10305',89.78,'D','14/08/1999','17:12:12')

select * from transacciones

-- selecciones
select * from transacciones where tipo='D'
select * from transacciones where monto between money(200) and money(2000)
select codigo,monto, tipo,fecha from transacciones where fecha is not null 

--actualizacion 
update transacciones set tipo='T' where monto between '100' and '500' and fecha between '1/09/2025' and '30/09/2025' and hora between '14:00:00' and '20:00:00'

-- eliminacion 
delete from transacciones where hora between '14:00:00'and '18:00:00' and fecha between '1/08/2025' and '30/08/2025' 