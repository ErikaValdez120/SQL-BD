-- Etapa 5.4 - Integrador modulo 5

use laboratorio;
/*1- Generar una tabla con el nombre EQUIPOS, en la que sólo se cree un campo cuyo nombre sea EQUIPO. Este campo debe ser de tipo 
VARCHAR, almacenar hasta 20 caracteres y debe ser PRIMARY KEY de la tabla.*/ 

create table equipos (
equipo varchar(20) not null primary key);

/*2- Luego, cargar los nombres de las siguientes selecciones en la tabla EQUIPOS: 
ARGENTINA, BRASIL, PARAGUAY, CHILE,URUGUAY, COLOMBIA, ECUADOR, PERÚ, BOLIVIA, VENEZUELA.*/

insert into equipos values ('argentina'),('brasil'),('paraguay'), ('chile'), ('uruguay'),('colombia'),('ecuador'),('perú'),('bolivia')
,('venezuela');

/*3- Generar un producto cartesiano en base a la misma tabla para lograr un fixture en el cual cada selección 
juegue con las otras selecciones (un partido como local y otro como visitante). Ordenar alfabéticamente el 
resultado, según el nombre del equipo local.*/

select * from equipos L cross join equipos V
where L.equipo <> V.equipo	
order by L.equipo;

