/*
----------------------
TP_Primera_parte.docx
----------------------
fecha de entrega: 24/01/2023

*/

/*1- Crear una conexión nueva (ejemplo VIDEOCLUB).*/
/*2- Crear un esquema (base de datos) con el nombre “videoclub” (realizarlo visualmente, sino se acuerdan lo hacen por código).
Luego realizamos la creación de las tablas (recuerden que anteriormente debemos aclarar que vamos a utilizar la base “videoclub”).*/

create schema videoclub;
use videoclub;

/*3- Crear la tabla PELICULA (para tener una información de las películas), la cual va a contener los campos:
  	.codigo_pelicula (es numérico, no puede ser nulo y tiene que ser auto incremental).
 	.titulo (es un campo texto y no puede ser nulo) .
 	.año (es un campo numérico y no puede ser nulo).
 	.duración (en te caso vamos a colocar que es un campo numérico y si puede nulo).
*/

create table if not exists pelicula (
codigo_pelicula int not null auto_increment primary key, -- le puse clave primaria porque de lo contrario no me permite crear la tabla
titulo varchar(45) not null,
ano int not null,
duracion int 
);

/*Para prestar las películas debemos crear otra tabla que tenga todos los datos de los contactos, en este caso le vamos 
a colocar AMIGO, la misma va a contener los siguientes campos:
.codigo_amigo(es numérico, no puede ser nulo y tiene que ser auto incremental). 
.nombre(es un campo texto y no puede ser nulo) .
.apellido(es un campo texto y no puede ser nulo) .
.teléfono(es un campo numérico y no puede ser nulo) .
.direccion(es un campo texto y no puede ser nulo) .
*/

create table if not exists amigo(
codigo_amigo int not null auto_increment primary key,
nombre text not null ,
apellido varchar(45) not null,
telefono int not null,
direccion varchar(45) not null
);

/*4) Agregar a la tabla “pelicula” 10 registros (utilizar la sentencia INSERT).
gregar a la tabla “amigo” 10 registros (utilizar la sentencia INSERT).*/

insert into pelicula values(0,"titanic",1997,195);
insert into pelicula values(0,"The cure for insomnia",1987,120);
insert into pelicula values(0,"La naranja mecanica",1967,136);
insert into pelicula values(0,"Amelie",2001,122);
insert into pelicula values(0,"Vertido(De entre los muertos)",1958,128);
insert into pelicula values(0,"Star Wars",1983,131);
insert into pelicula values(0,"Toy Story",2010,81);
insert into pelicula values(0,"Cantando bajo la lluvia",1952,113);
insert into pelicula values(0,"Requiem por un sueño",2000,112);
insert into pelicula values(0,"Top Gun",2022,131);


insert into amigo values(0,"Juan","Gomes",4345-3333,"AV. peron 234");
insert into amigo values(0,"Erik","Valdez",4345-2343,"Sitio de montevideo 234");
insert into amigo values(0,"Cristian","Perez",4225-3553,"nahuel huapi 432");
insert into amigo values(0,"Anna","Suarez",4545-3442,"Hector guidi 341");
insert into amigo values(0,"Monica","Gimenez",6754-1111,"calle falsa 123");
insert into amigo values(0,"Soledad","Dolores",4422-3123,"Lima 21");
insert into amigo values(0,"Arnold","Terminator",4345-4556,"La paz 123");
insert into amigo values(0,"Maximiliano","Principe",3003-3699,"Capital federal 1407");
insert into amigo values(0,"Micaela","Gomes",4345-3333,"Sarandi 2334");
insert into amigo values(0,"Leandro","Gutierrez",4345-3333,"Madariaga 234");

select * from amigo;

/*5) Modificar en la tabla película, el título que agregaron por el título “duro de matar” cuando el código de película sea 3 
(utilizar la sentencia UPDATE).update película set titulo ='Duro de Matar' where codigo_pelicula = 3;*/

update pelicula set titulo='Duro de Matar' where codigo_pelicula=3;

select * from pelicula;

/*6) Eliminar en la tabla pelicula los registros 6, 7 y 8 (eliminar de a uno, utilizando la sentencia DELETE).*/

Delete from pelicula where codigo_pelicula=6;
Delete from pelicula where codigo_pelicula=7;
Delete from pelicula where codigo_pelicula=8;

select * from pelicula;

/*7) Crear visualmente la tabla PRESTAMO, con los siguientes campos:
	numero_alquiler(es numérico, no puede ser nulo y tiene que ser auto incremental).
	fecha_fin(es fecha (date)).
	fecha_inicio(es fecha (date), no puede ser nulo).
	codigo_pelicula(numerico, no puede ser nulo ).
	codigo_amigo(numerico, no puede ser nulo).

En el código de película deben colocar un código existente (cargado) en la tabla que crearon.
En el código de amigo deben colocar un código existente (cargado) en la tabla que crearon.*/

create table prestamo (
numero_alquiler int not null auto_increment primary key,
fecha_fin date,
fecha_inicio date not null,
codigo_pelicula int not null default  1,
codigo_amigo int not null default 1
);

/*8- Cargar visualmente  10 registros en la tabla PRESTAMO.*/

insert into prestamo values(0,'2019-01-01','2010-01-01',default,default);
insert into prestamo values(1,'2022-01-01','2010-12-01',default,default);
insert into prestamo values(2,'2011-01-01','2000-01-21',default,default);
insert into prestamo values(0,'2003-01-01','2001-02-12',default,default);
insert into prestamo values(0,'2023-01-18','2022-11-12',default,default);
insert into prestamo values(0,NULL,'2021-08-01',default,default);
insert into prestamo values(0,'2017-12-13','2015-04-05',default,default);
insert into prestamo values(0,'2018-09-23','2011-02-11',default,default);
insert into prestamo values(0,'2019-07-22','2010-04-10',default,default);
insert into prestamo values(0,'2012-02-20','2022-03-15',default,default);

select * from prestamo;

/*9 Modificar el nombre de las tres tablas: 
	* PELICULA por PELICULAS
	* AMIGO por AMIGOS
	* PRESTAMO por PRESTAMOS*/
    
    rename table pelicula  to peliculas;
    rename table amigo to amigos;
    rename table prestamo to prestamos;
    
/*10- Por código, realizar una consulta que traiga todos los datos de la tabla PRESTAMOS utilizando la sentencia SELECT.*/
select * from prestamos;

/*Realizar una consulta que nos muestre los nombres distintos de la tabla AMIGOS 
(además de SELECT se debe utilizar la sentencia DISTINCT).*/

select distinct  nombre from amigos a;         
         
/*Realizar una consulta de la tabla PELICULAS, la cual nos traiga nada más que el campo titulo y duración.
select  titulo, duracion from peliculas; */

select titulo,duracion  from peliculas;

-- ---------------------------------------------------------------------------------------------------------------------------
/*
----------------------------
TP-Segunda_parte
-----------------------------
fecha de entrega: 24/01/2023

*/

/*11- De la tabla PRESTAMOS traer los números de alquiler que estén entre 3 y 6 (utilizar el parámetro BETWEEN) */

Select * from prestamos where numero_alquiler between 3 and 6;

 /*De la tabla AMIGOS traer los códigos de amigo que no estén entre 2 y 5 (utilizar el parámetro NOT BETWEEN).*/
 
 select * from amigos where codigo_amigo not between 2 and 5;
 
/*12- Mostrar de la tabla PELICULAS los títulos que por lo menos  contenga “to” (ejemplo: relatos salvajes),
 utilizando el parámetro LIKE y el operador %.*/ 
 
 Select * from peliculas where titulo like '%to%';
 
/*13- Cargar (insertar los registros simultáneamente como lo vimos en la última clase) en la tabla AMIGOS 
los siguientes datos (nombre – apellido – teléfono - dirección):
.Marina – Fernandez – 45128956 – Parana 555   
.Lujan  – Tucci – 1137589612 – Lavalle 1100
.Gabriel – Dominguez – 41109956 – Carlos Calvo 100   
.Raul – Vazquez – 45120014 – Peru 1120   
.Martina – Perez – 113202044 – Uruguay 220   */

Insert into amigos values 
(0,"Marina","Fernandez",45128956,"Parana 555"),
(0,"Lujan","Tucci",41109956,"Lavalle 1100"),
(0,"Gabriel","Dominguez",45678999,"Carlos Calvo 100"),
(0,"Raul","Vazquez",45120014 ,"Peru 1120 "),
(0,"Martina","Perez",113202044 ,"Uruguay 220 ");

/*14- Actualizar varios registros de la tabla AMIGOS: Realicen un UPDATE del nombre y apellido, ejemplo:           
.Lujan por “LORENA”            
.Tucci por “MILONE”
Recuerden realizar siempre el WHERE, en este caso deben colocar también el código de amigo (coloquen el código que tiene LUJAN TUCCI).
*/

update amigos set nombre='Lorena',apellido='Milone' where codigo_amigo = 12;

--  borrar select * from amigos where codigo_amigo =12;


/*15- Crear tabla AUXILIAR, insertando datos de otra tabla.
En este caso insertar en la tabla AUXILIAR lo que contenga la tabla AMIGOS (codigo_amigo, nombre,apellido, telefono, direccion).*/

create table if not exists auxiliar select * from amigos;

/*16- Borrar la tabla AUXILIAR (borrar tabla completa, la vuelve crear y reinicia la secuencia automáticamente), 
borrando toda la tabla simultáneamente no uno por uno como el delete (no utilizar el delete para este ejercicio).*/

truncate table auxiliar;

/*17- Una vez realizado el ejercicio 16, borrar la tabla AUXILIAR completamente. */
Drop table auxiliar;

/*18- Traer la cantidad de nombres que tiene la tabla AMIGOS.*/

select count(nombre) as cantidad_nombres from amigos;

/*19- Traer de la tabla PELICULAS el máximo y el mínimo año que hay en dicha tabla*/

select max(ano) as 'año_maximo', min(ano) as 'año_minimo' from peliculas;

-- --------------------------------------------------------------------------------------------------
/*
----------------
TP-Tercera_parte
----------------
fecha :fecha de entrega: 24/01/2023
*/

/*21- Realizar el DER (Diagrama de Entidad Relacional) de las tablas, PELICULAS, PRESTAMOS y 
AMIGOS con sus correspondientes atributos.*/ 
 
# diagrama entidad relacion ✔

/*22- Finalizada las tablas hacer sus correspondientes relaciones.
En este caso es en ambos casos de uno a muchos, ya que una PELICULA puede tener 
muchos PRESTAMOS, y un AMIGO puede tener muchos PRESTAMOS.	*/

#SE ASIGNA A LAS TABLAS SUS CORRESPONDIENTES RELACIONES ✔

/*23- Realizar la exportación para obtener el código del DER finalizado con sus correspondientes FK 
y Relaciones.

FIN*/

# TP\DER_TP.sql ✔