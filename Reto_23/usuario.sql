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

select * from usuario
select * from cuentas


