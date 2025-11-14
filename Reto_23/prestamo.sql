create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint prestamo_pk primary key(cedula)
)

drop table prestamo

alter table prestamo 
add constraint prestamo_persona_fk
foreign key (cedula)
references personas(cedula)