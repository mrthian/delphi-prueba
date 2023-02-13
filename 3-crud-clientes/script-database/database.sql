drop table if exists facturas_detalles;
drop table if exists facturas;
drop table if exists productos;
drop table if exists clientes;


create table if not exists clientes (
	codigo    varchar(10 ) not null,
	nombre    varchar(255) not null,
	direccion varchar(255) default null,
	constraint cliente_pk primary key (codigo)
);

insert into clientes (codigo, nombre, direccion)
values 
  ('001', 'cliente 1', ''),
  ('002', 'cliente 2', ''),
  ('003', 'cliente 3', '');

create table if not exists productos (
	codigo varchar(10 ) not null,
	nombre varchar(255) not null,
	valor  float default 0,
	constraint producto_pk primary key (codigo)
);

insert into productos (codigo, nombre, valor)
values
  ('001', 'producto 1', 100),
  ('002', 'producto 2', 150),
  ('003', 'producto 3', 200);

create table if not exists facturas (
	numero  serial      not null,
	fecha   timestamp   default now(),
	cliente varchar(10) not null, 
	total   float default 0,
	constraint factura_pk     primary key (numero),
	constraint factura_fk_001 foreign key (cliente)
	  references clientes (codigo)
	  on delete restrict
	  on update restrict
);

create table if not exists facturas_detalles (
	id       serial      not null,
	factura  integer     not null,
	producto varchar(10) not null,
	cantidad integer     default 0,
	constraint factura_detalle_pk    primary key (id),
	constraint factura_detalle_fk001 foreign key (factura)
	  references facturas (numero)
	  on delete restrict
	  on update restrict,
	constraint factura_detalle_fk002 foreign key (producto)
	  references productos (codigo)
	  on delete restrict
	  on update restrict
);