drop table cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null ,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion,saldo)
values ('12345', '45678', '10/01/2022', 22.22)
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion,saldo)
values ('12355', '45688', '21/02/2020', 10.33)
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion,saldo)
values ('12365', '45698', '12/03/2021', 5.66)
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion,saldo)
values ('12375', '45608', '23/03/2022', 2.55)
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion,saldo)
values ('12385', '45618', '14/04/2023', 9.66)
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion,saldo)
values ('12395', '45672', '25/05/2024', 7.88)
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion,saldo)
values ('12305', '45673', '16/06/2025', 8.55)
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion,saldo)
values ('12341', '45671', '19/07/2020', 25.36)
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion,saldo)
values ('12342', '45675', '17/08/2021', 78.98)
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion,saldo)
values ('12343', '45676', '18/09/2022', 45.66)

select * from cuentas

-- selecciones 

select numero_cuenta, saldo from cuentas
select * from cuentas where fecha_creacion between '29/10/2025' and '29/8/2025'
select numero_cuenta, saldo from cuentas where fecha_creacion between '29/10/2025' and '29/8/2025'

-- actualizaciones
update cuentas set saldo=10 where cedula_propietario like '17%'

--eliminar
delete from cuentas where cedula_propietario like '10%'

-- nuevos datos 
--CUENTAS
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);

-- seleccion 2

select numero_cuenta, saldo from cuentas where saldo>money(100) and saldo<money(1000)
select * from cuentas where fecha_creacion between '01/01/2024' and '29/10/2025'
select * from cuentas where saldo='0' or cedula_propietario like '%2'