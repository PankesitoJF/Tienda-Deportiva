create database TiendaDepotivaDeFutbol;

create table tbl_persona(
	id_persona int auto_increment,
    nombre_persona varchar(30) unique,
    apellido_persona varchar(20)not null,
    edad_persona int not null,
    telefono_persona int not null,
    id_tipo_persona int not null,
    primary key(id_persona),
    foreign key(id_tipo_persona) references tbl_tipo_persona(id_tipo_persona)
);

create table tbl_tipo_persona(
	id_tipo_persona int auto_increment,
    area_tipo_persona varchar(30) unique,
    descripcion_tipo_persona varchar(100) not null,
    primary key(id_tipo_persona)
);
    
insert into tbl_tipo_persona(area_tipo_persona,descripcion_tipo_persona) values('cliente uno','cliente de la tienda');
insert into tbl_tipo_persona(area_tipo_persona,descripcion_tipo_persona) values('trabajador uno','trabajador de la tienda');
insert into tbl_tipo_persona(area_tipo_persona,descripcion_tipo_persona) values('cliente dos','cliente de a  tienda');
insert into tbl_tipo_persona(area_tipo_persona,descripcion_tipo_persona) values('trabajador dos','trabajador de la tienda');
insert into tbl_tipo_persona(area_tipo_persona,descripcion_tipo_persona) values('cliente tres','cliente de la tienda');

select * from tbl_tipo_persona;

insert into tbl_persona(nombre_persona,apellido_persona,edad_persona,telefono_persona,id_tipo_persona) values('Enrique','Cruz',21,42252441,1);
insert into tbl_persona(nombre_persona,apellido_persona,edad_persona,telefono_persona,id_tipo_persona) values('Josue','Figueroa',20,54659815,2);
insert into tbl_persona(nombre_persona,apellido_persona,edad_persona,telefono_persona,id_tipo_persona) values('Angel','Garcia',19,65851269,3);
insert into tbl_persona(nombre_persona,apellido_persona,edad_persona,telefono_persona,id_tipo_persona) values('Jose','Juarez',22,85749865,4);
insert into tbl_persona(nombre_persona,apellido_persona,edad_persona,telefono_persona,id_tipo_persona) values('Daniel','Aguirre',18,98653264,5);

select * from tbl_persona;

select tbl_persona.nombre_persona, tbl_persona.apellido_persona, tbl_tipo_persona.area_tipo_persona from tbl_persona, tbl_tipo_persona where tbl_persona.id_tipo_persona = tbl_tipo_persona.id_tipo_persona;


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table tbl_producto(
	id_producto int auto_increment,
    nombre_producto varchar(30) unique,
    id_producto_categoria int not null,
    primary key(id_producto),
    foreign key(id_producto_categoria) references tbl_producto_categoria(id_producto_categoria)
);

create table tbl_producto_categoria(
	id_producto_categoria int auto_increment,
    categoria_producto_categoria varchar(30) unique,
    descripcion_producto_categoria varchar(100) not null,
    primary key(id_producto_categoria)
);

create table tbl_producto_existencia(
	id_producto_existencias int auto_increment,
    existencias_producto_existencias int not null,
    exis_min_producto_existencias int not null,
    exis_max_producto_existencias int not null , 
    id_producto int not null,
    primary key(id_producto_existencias),
    foreign key(id_producto) references tbl_producto(id_producto)    
);

insert into tbl_producto_categoria(categoria_producto_categoria,descripcion_producto_categoria) values('Nike','tienda deportiva');
insert into tbl_producto_categoria(categoria_producto_categoria,descripcion_producto_categoria) values('Adidas','tienda deportiva');
insert into tbl_producto_categoria(categoria_producto_categoria,descripcion_producto_categoria) values('Puma','tienda deportiva');
insert into tbl_producto_categoria(categoria_producto_categoria,descripcion_producto_categoria) values('umbro','tienda deportiva');
insert into tbl_producto_categoria(categoria_producto_categoria,descripcion_producto_categoria) values('diadora','tienda deportiva');

select * from tbl_producto_categoria;

insert into tbl_producto(nombre_producto,id_producto_categoria) values('zapatos mercurial vapor',1);
insert into tbl_producto(nombre_producto,id_producto_categoria) values('zapatos predator',2);
insert into tbl_producto(nombre_producto,id_producto_categoria) values('camisola real madrid',1);
insert into tbl_producto(nombre_producto,id_producto_categoria) values('zapatos future',3);
insert into tbl_producto(nombre_producto,id_producto_categoria) values('zapatos umbro',4);

select * from tbl_producto;

insert into tbl_producto_existencia(existencias_producto_existencias,exis_min_producto_existencias,exis_max_producto_existencias,id_producto) values(55,5,150,1);
insert into tbl_producto_existencia(existencias_producto_existencias,exis_min_producto_existencias,exis_max_producto_existencias,id_producto) values(55,10,145,2);
insert into tbl_producto_existencia(existencias_producto_existencias,exis_min_producto_existencias,exis_max_producto_existencias,id_producto) values(55,5,150,1);
insert into tbl_producto_existencia(existencias_producto_existencias,exis_min_producto_existencias,exis_max_producto_existencias,id_producto) values(55,7,200,3);
insert into tbl_producto_existencia(existencias_producto_existencias,exis_min_producto_existencias,exis_max_producto_existencias,id_producto) values(55,8,140,4);

select * from tbl_producto_existencia;

select tbl_producto.nombre_producto, tbl_producto_categoria.categoria_producto_categoria, tbl_producto_existencia.existencias_producto_existencias from tbl_producto, tbl_producto_categoria, tbl_producto_existencia where tbl_producto.id_producto_categoria = tbl_producto_categoria.id_producto_categoria = tbl_producto_existencia.id_producto_existencias;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table tbl_contacto(
	id_contacto int auto_increment,
    ubicacion_tienda_contacto varchar(30) unique,
    id_telefono_contacto int not null,
    primary key(id_contacto),
    foreign key(id_telefono_contacto) references tbl_telefono_contacto(id_telefono_contacto)
);

create table tbl_telefono_contacto(
	id_telefono_contacto int auto_increment,
    contacto_telefono_contacto int unique,
    descripcion_telefono_contacto varchar(100) not null,
    primary key(id_telefono_contacto)
);

insert into tbl_telefono_contacto(contacto_telefono_contacto,descripcion_telefono_contacto) values(45987812, 'Contacto de Tienda');
insert into tbl_telefono_contacto(contacto_telefono_contacto,descripcion_telefono_contacto) values(96785236, 'Contacto de Tienda');
insert into tbl_telefono_contacto(contacto_telefono_contacto,descripcion_telefono_contacto) values(19862549, 'Contacto de Tienda');
insert into tbl_telefono_contacto(contacto_telefono_contacto,descripcion_telefono_contacto) values(59876245, 'Contacto de Tienda');
insert into tbl_telefono_contacto(contacto_telefono_contacto,descripcion_telefono_contacto) values(36945211, 'Contacto de Tienda');

select * from tbl_telefono_contacto;

insert into tbl_contacto(ubicacion_tienda_contacto,id_telefono_contacto) values('zona 6',1);
insert into tbl_contacto(ubicacion_tienda_contacto,id_telefono_contacto) values('zona 10',2);
insert into tbl_contacto(ubicacion_tienda_contacto,id_telefono_contacto) values('zona 5',3);
insert into tbl_contacto(ubicacion_tienda_contacto,id_telefono_contacto) values('zona 3',4);
insert into tbl_contacto(ubicacion_tienda_contacto,id_telefono_contacto) values('zona 7',5);

select * from tbl_contacto;

select tbl_contacto.ubicacion_tienda_contacto, tbl_telefono_contacto.contacto_telefono_contacto from tbl_contacto, tbl_telefono_contacto where tbl_contacto.id_telefono_contacto = tbl_telefono_contacto.id_telefono_contacto;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table tbl_formas_pago (
	id_formas_pago int auto_increment,
    forma_formas_pago varchar(30) unique,
    id_empresa_pago int not null,
    primary key(id_formas_pago),
    foreign key(id_empresa_pago) references tbl_empresa_pago(id_empresa_pago)
);

create table tbl_empresa_pago(
	id_empresa_pago int auto_increment,
    nombre_empresa_pago varchar(30) unique,
    descripcion_empresa_pago varchar(100) not null,
    primary key(id_empresa_pago)
);

insert into tbl_empresa_pago(nombre_empresa_pago,descripcion_empresa_pago) values('BI','Banco de pago');
insert into tbl_empresa_pago(nombre_empresa_pago,descripcion_empresa_pago) values('BAM','Banco de pago');
insert into tbl_empresa_pago(nombre_empresa_pago,descripcion_empresa_pago) values('billetes','pago en efectivo');
insert into tbl_empresa_pago(nombre_empresa_pago,descripcion_empresa_pago) values('BAC','Banco de pago');
insert into tbl_empresa_pago(nombre_empresa_pago,descripcion_empresa_pago) values('Banrural','Banco de pago');

select * from tbl_empresa_pago;

insert into tbl_formas_pago(forma_formas_pago,id_empresa_pago) values('tarjeta de credito',1);
insert into tbl_formas_pago(forma_formas_pago,id_empresa_pago) values('tarjea de debito',2);
insert into tbl_formas_pago(forma_formas_pago,id_empresa_pago) values('efectivo',3);
insert into tbl_formas_pago(forma_formas_pago,id_empresa_pago) values('cheque',4);
insert into tbl_formas_pago(forma_formas_pago,id_empresa_pago) values('tarjeta de puntos',1);

select * from tbl_formas_pago;

select tbl_formas_pago.forma_formas_pago, tbl_empresa_pago.nombre_empresa_pago from tbl_formas_pago, tbl_empresa_pago where tbl_formas_pago.id_empresa_pago = tbl_empresa_pago.id_empresa_pago;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table tbl_facturacion (
	id_facturacion int auto_increment,
    codigo_factura_facturacion int unique,
    nombre_cliente_facturacion varchar (30),
    id_nit_facturacion int not null,
    primary key(id_facturacion),
    foreign key(id_nit_facturacion) references tbl_nit_facturacion(id_nit_facturacion)
);

create table tbl_nit_facturacion(
	id_nit_facturacion int auto_increment,
    numero_nit_facturacion int unique,
    descripcion_compra_nit_facturacion varchar(100) not null,
    costo_compra_nit_facturacion int not null,
    primary key(id_nit_facturacion)
);

insert into tbl_nit_facturacion(numero_nit_facturacion,descripcion_compra_nit_facturacion,costo_compra_nit_facturacion) values(947219, 'dos pares de zapatos adidas predator talla 39', 1200.00);
insert into tbl_nit_facturacion(numero_nit_facturacion,descripcion_compra_nit_facturacion,costo_compra_nit_facturacion) values(654872, 'tres pelotas adidas de la champions league tamaño 4', 1350.00);
insert into tbl_nit_facturacion(numero_nit_facturacion,descripcion_compra_nit_facturacion,costo_compra_nit_facturacion) values(358951, 'una camsola adidas del FCBarcelona tamaño M', 675.50);
insert into tbl_nit_facturacion(numero_nit_facturacion,descripcion_compra_nit_facturacion,costo_compra_nit_facturacion) values(169863, 'dos pares de zapatos nike hypervenom talla 38', 1050.50);
insert into tbl_nit_facturacion(numero_nit_facturacion,descripcion_compra_nit_facturacion,costo_compra_nit_facturacion) values(886537, 'sudadera puma talla S', 550.00);

select * from tbl_nit_facturacion;

insert into tbl_facturacion(codigo_factura_facturacion,nombre_cliente_facturacion,id_nit_facturacion) values(13464, 'Enrique Cruz',1);
insert into tbl_facturacion(codigo_factura_facturacion,nombre_cliente_facturacion,id_nit_facturacion) values(24589, 'Josue Figueroa',2);
insert into tbl_facturacion(codigo_factura_facturacion,nombre_cliente_facturacion,id_nit_facturacion) values(98464, 'Angel Garcia',3);
insert into tbl_facturacion(codigo_factura_facturacion,nombre_cliente_facturacion,id_nit_facturacion) values(56245, 'Daniel Estrada',4);
insert into tbl_facturacion(codigo_factura_facturacion,nombre_cliente_facturacion,id_nit_facturacion) values(79648, 'Samuel Alvizures',5);

select * from tbl_facturacion;

select tbl_facturacion.codigo_factura_facturacion, tbl_nit_facturacion.numero_nit_facturacion, tbl_facturacion.nombre_cliente_facturacion from tbl_facturacion, tbl_nit_facturacion where tbl_facturacion.id_nit_facturacion = tbl_nit_facturacion.id_nit_facturacion;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table tbl_pedidos (
	id_pedidos int auto_increment,
    numero_pedido_pedidos int unique,
	direccion_pedido_pedidos varchar(40)not null,
	id_descripcion_pedidos int not null ,
    primary key(id_pedidos),
    foreign key(id_descripcion_pedidos) references tbl_descripcion_pedidos(id_descripcion_pedidos)
);

create table tbl_descripcion_pedidos(
	id_descripcion_pedidos int auto_increment,
    nombre_cliente_descripcion_pedidos varchar(30) unique,
    pedido_descripcion_pedidos varchar(100) not null,
    costo_pedido_descripcion_pedidos varchar(20)not null,
    primary key(id_descripcion_pedidos)
);

insert into tbl_descripcion_pedidos(nombre_cliente_descripcion_pedidos,pedido_descripcion_pedidos,costo_pedido_descripcion_pedidos) values('David Lopez','3 pares de zapatos nike mercurial y 1 camisola Barcelona','Q 1850.00');
insert into tbl_descripcion_pedidos(nombre_cliente_descripcion_pedidos,pedido_descripcion_pedidos,costo_pedido_descripcion_pedidos) values('Emmanuel Castillo','3 sudaderos adidas talla M','Q 1300.50');
insert into tbl_descripcion_pedidos(nombre_cliente_descripcion_pedidos,pedido_descripcion_pedidos,costo_pedido_descripcion_pedidos) values('Carlos Chavez','2 pares de zapatos adidas nemeziz ','Q 975.00');
insert into tbl_descripcion_pedidos(nombre_cliente_descripcion_pedidos,pedido_descripcion_pedidos,costo_pedido_descripcion_pedidos) values('Manuel Colindres','4 playeras de entrenamiento puma talla S','Q 1200.75');
insert into tbl_descripcion_pedidos(nombre_cliente_descripcion_pedidos,pedido_descripcion_pedidos,costo_pedido_descripcion_pedidos) values('Spencer Ortiz','1 camisola del real madrid talla M y 2 pelotas futbol adidas','Q 1425.99');

select * from tbl_descripcion_pedidos;

insert into tbl_pedidos(numero_pedido_pedidos,direccion_pedido_pedidos,id_descripcion_pedidos) values(50,'zona 6, 17 avenida 21-13 calle',1);
insert into tbl_pedidos(numero_pedido_pedidos,direccion_pedido_pedidos,id_descripcion_pedidos) values(150,'zona 3, 7 avenida 5-12 calle',2);
insert into tbl_pedidos(numero_pedido_pedidos,direccion_pedido_pedidos,id_descripcion_pedidos) values(78,'zona 1, 6 avenida 7-10 calle',3);
insert into tbl_pedidos(numero_pedido_pedidos,direccion_pedido_pedidos,id_descripcion_pedidos) values(35,'zona 2, 8 avenida 12-8 calle',4);
insert into tbl_pedidos(numero_pedido_pedidos,direccion_pedido_pedidos,id_descripcion_pedidos) values(120,'zona 5, 21 avenida 24-17 calle',5);

select * from tbl_pedidos;

select tbl_pedidos.numero_pedido_pedidos, tbl_descripcion_pedidos.nombre_cliente_descripcion_pedidos, tbl_pedidos.direccion_pedido_pedidos from tbl_pedidos, tbl_descripcion_pedidos where tbl_pedidos.id_descripcion_pedidos = tbl_descripcion_pedidos.id_descripcion_pedidos;





