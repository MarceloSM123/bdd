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

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1234567890', 1000, '2025-10-10','14:30:00', 'Luis')
insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1234567891', 500, '2024-10-10','16:30:00', 'Marcelo')

select * from personas pe, prestamo pr where pe.cedula=pr.cedula and pr.monto between '100' and '1000'
select pe.* from personas pe, prestamo pr where pe.cedula=pr.cedula and pe.nombre= 'Sean' 
--funcion de agregacion 1
select pe.cedula, sum(pr.monto) as monto_total_pretamos from personas pe, prestamo pr where pe.cedula=pr.cedula group by pe.cedula
--funcion de agregacion 2
select  count(pe.numero_hijos) as total_personas from personas pe, prestamo pr where pe.cedula=pr.cedula --group by pe.cedula

