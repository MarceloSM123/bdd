create table ventas(
	id_venta int,
	codigo_producto int not null ,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key(id_venta)
)

alter table ventas 
add constraint ventas_productos_fk
foreign key (codigo_producto)
references productos(codigo)

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values(2, 123, '2020-12-05', 10);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values(3, 124, '2025-12-05', 11);

select pr.nombre, pr.stock, ve.cantidad from ventas ve, productos pr where ve.codigo_producto=pr.codigo and pr.nombre like '%m%' or pr.descripcion='o'