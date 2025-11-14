create table banco(
	codigo_banco int ,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco)
)

alter table banco 
add constraint banco_transacciones_fk
foreign key (codigo_transaccion)
references transacciones(codigo)

select * from banco

insert into banco(codigo_banco, codigo_transaccion, detalle)
values (1010,1,'detalle 1');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (1020,2,'detalle 2');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (1030,3,'detalle 3')

select rt.* from transacciones rt, banco ba where ba.codigo_transaccion=rt.codigo and rt.tipo='C' and rt.numero_cuenta between '22001' and '22004'

select rt.* from transacciones rt, banco ba where ba.codigo_transaccion=rt.codigo  and rt.codigo=1