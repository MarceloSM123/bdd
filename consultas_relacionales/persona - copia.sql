create table persona(
	cedula char(10) not null;
	nombre varchar(50) not null;
	apellido varchar(50) not null;
	estatura decimal(10,2);
	fecha_nacimiento date not null;
	hora_nacimiento time;
	cantidad_ahorrada money;
	numero_hijos int;
	constraint persona_pk primary key(cedula)
)