-- ESTAS DOS TABLAS TIENEN UNA RELACIONES DE MUCHOS A MUCHOS

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

create table proveedores (
	codigo int not null, 
	nombre varchar(50) not null, 
	telefono char(10) not null,
	constraint proveedores_pk primary key (codigo)
	)

-- CREAMOS UNA TABLA DE ROMPIMIENTO PARA INTERMEDIAR 

-- PRODUCTOS (muchos) A (uno)PRODUCTOS_POR_PROVEEDOR(muchos) A (uno)PROVEEDOR 
create table productos_por_proveedor(
	pp_codigo_producto int not null,
	pp_codigo_proveedor int not null,
	pp_precio money not null,
-- vamos a relacionar codigo(pk) de producto con pp_codigo_producto de productos_por_proveedor
	constraint producto_fk foreign key (pp_codigo_producto) references productos(codigo),
-- AHORA VAMOS A RELACIONAR  pp_codigo_proveedor DE LA TABLA PROVEEDOR CON CODIGO(PK) DE LA TABLA PROVEEDOR	
	CONSTRAINT proveedor_fk foreign key(pp_codigo_proveedor) references proveedores(codigo),
-- creamos la clave primaria combinando las dos claves foraneas lo que me garantiza la unicidad
constraint productos_por_proveedor_pk primary key (pp_codigo_producto,pp_codigo_proveedor)
)

select* from productos
-- llenamos las tabla producto
insert into productos(codigo,nombre,stock)
values (100,'Doritos',100);
insert into productos(codigo,nombre,stock)
values (200,'Kchitos',200);
insert into productos(codigo,nombre,stock)
values (300,'Papas',300);
insert into productos(codigo,nombre,stock)
values (400,'Takis',400);

select * from proveedores

-- llenamos la tabla proveedores

insert into proveedores(codigo,nombre,telefono)
values(1, 'Snacks S.A', '1234657891');

insert into proveedores(codigo,nombre,telefono)
values(2, 'Distrisnacks', '1234657855');


select * from productos_por_proveedor
--ahora insertamos en la tabla de rompimiento

insert into productos_por_proveedor(pp_codigo_producto, pp_codigo_proveedor, pp_precio)
values(300,1,0.48);
insert into productos_por_proveedor(pp_codigo_producto, pp_codigo_proveedor, pp_precio)
values(300,2,0.49);
insert into productos_por_proveedor(pp_codigo_producto, pp_codigo_proveedor, pp_precio)
values(100,1,0.50);
insert into productos_por_proveedor(pp_codigo_producto, pp_codigo_proveedor, pp_precio)
values(200,1,0.51);
insert into productos_por_proveedor(pp_codigo_producto, pp_codigo_proveedor, pp_precio)
values(400,2,0.50);

-- consulta de datos entre las 3 tablas

select * from productos prod,proveedores prov, productos_por_proveedor pp where pp.pp_codigo_producto=prod.codigo and pp.pp_codigo_proveedor=prov.codigo

-- que proveedores traen papas

select prod.codigo, prod.nombre, prov.nombre, pp_precio from productos prod,proveedores prov, productos_por_proveedor pp where pp.pp_codigo_producto=prod.codigo and pp.pp_codigo_proveedor=prov.codigo and prod.codigo=300
