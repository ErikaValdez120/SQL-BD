-- EJERCICIO 1
create schema if not exists Bonus_Track;
use Bonus_Track;

create table if not exists agenda(
idContacto integer ,
nombre varchar(20) not null,
apellido varchar(15) not null,
domicilio varchar(50),
telefono integer not null,
primary key(idContacto)

);

show tables;
describe agenda;

alter table agenda add mail varchar(50) not null;

Insert into agenda values (1,"Carlos","Perez","Maximo paz 123",12348765,"perez@gmail.com");
Insert into agenda values (2,"Marta","Gutierrez","Mendoza 34",98762345,"mguti@yahoo.com");
Insert into agenda values (3,"Pedro","Kichner","San martin 433",78349823,"San123@hotmail.com");
Insert into agenda values (4,"Rocio","Splawsy","Camino general belgrano 123",1567364732,"Ochii@gmail.com");

-- EJERCICIO 2 ---------------------------------------------------------------------------------------------

create schema if not exists libreria;
use libreria;

create table if not exists autores(

autorId varchar(11),
apellido varchar(40),
nombre varchar(20),
telefono varchar(12),
direccion varchar(40),
ciudad varchar(20),
provincia char(2),
c_postal char(5),
estado tinyint(1)

);

create table if not exists ventas(

local_id char(4),
factura_nro varchar(20),
fecha datetime,
cantidad smallint,
forma_pago varchar(12),
libro_id varchar(6)

);

create table if not exists locales(

local_id char(4),
nombre varchar(40),
direccion VARCHAR(40),
ciudad VARCHAR(20),
provincia CHAR(2),
c_postal CHAR(5)

);

create table if not exists editoriales(

 editorial_id CHAR(4),
 nombre VARCHAR(40),
 ciudad VARCHAR(20),
 provincia CHAR(2),
 pais VARCHAR(30)
);


create table if not exists libros (
libro_id VARCHAR(6),
titulo VARCHAR(80),
categoria CHAR(12),
editorial_id CHAR(4),
precio DOUBLE,
comentarios VARCHAR(200),
fecha_publicacion DATETIME
);


create table if not exists libroautor(
autor_id varchar(11),
libro_id varchar(6)
);

create table if not exists empleados(
empleado_id CHAR(9),
nombre VARCHAR(20),
apellido VARCHAR(30),
puesto_id SMALLINT,
editorial_id CHAR(4),
fecha_ingreso DATETIME

);

create table if not exists puestos(
puesto_id SMALLINT,
descripcion VARCHAR(50)
);

show databases;
show tables;
describe autores;

-- EJERCICIO 3  


-- definir claves primarias
use libreria;

alter table autores add primary key (autorId) ;
alter table ventas add primary key (local_id,factura_nro,libro_id) ;
alter table editoriales add primary key (editorial_id) ; 
alter table libros add primary key (libro_id) ;
alter table libroautor add primary key (autor_id,libro_id) ;
alter table empleados add primary key (empleado_id);
alter table puestos add primary key (puesto_id);


insert into autores values ("1","Gomes","Juan","786552637","Capital Federal 123","Quilmes","BUENO",2932,1);
insert into autores values ("2","Leanza","Raul","87348372","9 de mayo 23","Quilmes","BS",2932,1);
insert into autores values ("3","Lisio","Julieta","38774322","Rio negro 232","Berazategui","PN",1322,2);


insert into ventas values ("1","1111","2023-01-02 12:06:12",11111,"efectivo",1);
insert into ventas values ("2","2222","2022-02-02 10:06:12",11111,"credito",2);
insert into ventas values ("1","3333","2020-03-12 11:06:12",11111,"efectivo",3);

insert into locales values("1","Libroland","29 de Septiembre 234","Lanus","BA",1824);
insert into locales values("2","Libreria San Jose"," Lavalle 299","Ezpeleta","BA",4322);
insert into locales values("3","Libreria Lerma","Avda Belgrano 635","Salta","Sa",4400);

insert into editoriales values(1,"Kennedy","Lomas de Zamora","BS","Argentina");
insert into editoriales values(2,"KeyWorld","Chacabuco 89","BS","Argentina");
insert into editoriales values(3,"Casandra"," Illianes 123","UR","Uruguay");

insert into libros values ("1","La ruta de los reyes","ficcion","1",99,"libro de aventuras","2020-04-12 11:06:12");
insert into libros values ("2","Cien años de soledad","drama","3",889.99,"clasicos","2023-10-18 12:06:12");
insert into libros values ("3","Mi planta naranja lima","drama","2",22.34,"cortos","2021-07-22 09:06:12");


insert into libroautor values ("1","1");
insert into libroautor values ("2","2");
insert into libroautor values ("3","1");

insert into empleados values ("1","Juan","Valdez",1,"1","2002-07-22 08:06:12");
insert into empleados values ("2","Carmen","Tantera",2,"2","2013-11-20 10:30:42");
insert into empleados values ("3","Sofia","Aguirre",3,"2","2019-09-29 14:16:00");

insert into puestos values (1,"recepcionista");
insert into puestos values (2,"gerente");
insert into puestos values (3,"limpieza");

