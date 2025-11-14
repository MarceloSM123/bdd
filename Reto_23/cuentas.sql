create table cuentas (
	numero_cuenta char(5);
    cedula char(25) not null;
	fecha_creacion date not null;
	saldo money not null;
	constraint cuentas_pk primary key(numero_cuenta)
)
