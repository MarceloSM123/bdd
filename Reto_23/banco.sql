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