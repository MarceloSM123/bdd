drop table cuentas

create table cuentas (
	numero_cuenta char(5),
    cedula char(10) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas (numero_cuenta, cedula, fecha_creacion, saldo)
values('12345','1234567890','2022-11-14',500 );