create database if not exists laboratorio;
use laboratorio;

-- drop database laboratorio;

create table if not exists Facturas(
letra char ,
numero integer,
clienteId integer,
articuloId integer,
fecha date,
monto double,
primary key (letra,numero)

);

-- describe facturas;

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
 describe clientes;