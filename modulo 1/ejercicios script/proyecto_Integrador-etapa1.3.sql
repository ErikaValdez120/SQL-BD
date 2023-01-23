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
 describe facturas;
 


 
 
 INSERT INTO facturas values ("A",28,14,335,"2021-03-18",1589.50);
 INSERT INTO facturas values ("A",39,26,157,"2021-04-12",979.75);
 INSERT INTO facturas values ("B",8,17,95,"2021-04-25",513.35);
 INSERT INTO facturas values ("B",12,5,411,"2021-05-3",2385.70);
 INSERT INTO facturas values ("B",19,50,157,"2021-05-26",979.75);
 
 -- Cargar 4 registros en la tabla ARTICULOS, tal como se detallan a continuación:
 INSERT INTO articulos  values (95," Webcam con Micrófono Plug & Play",513.35,39);
 INSERT INTO articulos  values (157," Apple AirPods Pro",979.75,152);
 INSERT INTO articulos  values (335,"  Lavasecarropas Automático Samsung",1589.50,12);
 INSERT INTO articulos  values (411,"Gloria Trevi / Gloria / CD+DVD",2385.70,2);
 
 -- Cargar 5 registros en la tabla CLIENTES, tal como se detallan a continuación:
 INSERT INTO clientes values (5,"Santiago","Gonzales","23-24582359-9","Uriburu 558- 7°A","VIP");
 INSERT INTO clientes values (14,"Gloria","Fernandez","23-35965852-5","Constitucion 323","GBA");
 INSERT INTO clientes values (17,"Gonzalo","Lopez","23-33587416-9","Arias 2624","GBA");
 INSERT INTO clientes values (26,"Carlos","Garcia","23-42321230-9","Pasteur- 2°C","VIP");
 INSERT INTO clientes values (50,"Micaela","Altieri","23-22885566-5","Santamarina 1255","GBA");
 
