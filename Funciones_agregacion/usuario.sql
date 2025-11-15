create table usuario (
	cedula char(10),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	cuenta varchar(20),
	limite_credito decimal(10,2),
	constraint usuario_pk primary key(cedula)
)

alter table usuario 
add constraint usuario_cuentas_fk
foreign key (cedula)
references usuario(cedula)

insert into usuario(cedula, nombre, apellido, cuenta, limite_credito)
values ('45678', 'Marcelo','Salcedo','123456',10000.23);
--values('12345','1234567890','2025-11-14',50.25 );
insert into usuario(cedula, nombre, apellido, cuenta, limite_credito)
values ('1234567890', 'Luis','Saenz','11121314151617181920',10000.23);
select * from usuario
select * from cuentas

select us.cuenta, cu.numero_cuenta from usuario us, cuentas cu where us.cedula=cu.cedula and (cu.saldo>'100' and cu.saldo<'1000') 
select us.cuenta, cu.numero_cuenta from usuario us, cuentas cu where us.cedula=cu.cedula and cu.fecha_creacion between '2022-09-21' and '2023-09-21'

select * from usuario us, cuentas cu