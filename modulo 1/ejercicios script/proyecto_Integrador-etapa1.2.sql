create database if not exists laboratorio;
use laboratorio;

create table if not exists Facturas(
letra char ,
numero integer,
clienteId integer,
articuloId integer,
fecha date,
monto double,
primary key (letra,numero)

);

create table if not exists articulos(

articuloId integer,
nombre varchar(50),
precio double,
stock integer,
primary key(articuloId)

);

create table if not exists clientes(
	clienteId integer,
    nombre varchar(25),
    apellido varchar(25),
    cuit char(16),
    direccion varchar(50),
    comentarios varchar(50),
    primary key (clienteId)

);
-- show schemas;
-- show tables ;

 
 alter table clientes  change clienteId idCliente integer;
 alter table articulos change articuloId idArticulo integer;
 alter table facturas modify monto double unsigned;	
 alter table articulos modify nombre varchar(75);
 alter table articulos modify precio double unsigned not null;
 alter table articulos modify stock integer unsigned not null;
 alter table clientes modify apellido varchar(35) not null;
 alter table clientes modify nombre varchar(30) not null;
 alter table clientes change comentarios  observaciones varchar(255);
 
 describe clientes;
 describe articulos;