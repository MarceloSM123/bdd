drop table productos

create table productos(
	codigo int not null,
	nombre varchar(50) not null ,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)
-- inserciones con todos los campos de la tabla
insert into productos(codigo, nombre, descripcion, precio,stock)
values (123,'celular','nokia',20.12, 10);
insert into productos(codigo, nombre, descripcion, precio,stock)
values (124,'laptop','asus',1250.22, 5);
insert into productos(codigo, nombre, descripcion, precio,stock)
values (125,'camara','canon',250.99, 60);
insert into productos(codigo, nombre, descripcion, precio,stock)
values (126,'teclado','genius',10.55, 7);
insert into productos(codigo, nombre, descripcion, precio,stock)
values (127,'microfono','el gato',329.50, 100);
-- inserciones solo con los campos obligatorios
insert into productos(codigo, nombre,  precio,stock)
values (128,'flash memory',50.32, 1)
insert into productos(codigo, nombre,  precio,stock)
values (129,'microSD',10.22, 10)
insert into productos(codigo, nombre, precio,stock)
values (130,'mouse',9.33, 99)
select * from productos

-- inserciones

select * from productos where nombre like 'q%'
select * from productos where descripcion is null
select * from productos where stock between 2 and 3

-- actualizaciones
update productos set stock=0 where descripcion is null

-- eliminaciones

delete from productos where descripcion is null

--nuevos datos
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);

-- nuevas inserciones 
select * from productos where stock=10 and precio<money(10)
select nombre,stock from productos where (nombre like 'm%' or nombre like '%m' or nombre like '%m%')and descripcion like '% %'
select nombre from productos where descripcion is null or stock=0
