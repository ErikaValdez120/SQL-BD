-- Desafios modulo 4 MySQL---------------------------------------------------------
use bonus_track;
-- 1
SET SQL_SAFE_UPDATES=0;

UPDATE top_spotify set titulo = upper(titulo), artista = upper(artista);
Select * from top_spotify;

-- 2 
alter table top_spotify add permanencia int;
update top_spotify set permanencia = year(curdate()) - ano;
Select * from top_spotify;

-- 3 
create table ultimos_lanzamientos select * from top_spotify where permanencia <= 3;
delete from top_spotify where permanencia <=3;
select * from top_spotify where permanencia <=3;

-- 4
INSERT INTO TOP_SPOTIFY VALUES (610, 'GOD CONTROL', 'MADONNA', 'POP', 2018, 3);

-- 5
insert into ultimos_lanzamientos (id,titulo,artista,genero,ano,permanencia) select id,titulo,artista,genero,ano,permanencia from top_spotify where permanencia <=3;
delete from top_spotify where permanencia <=3;

-- -----------------------------------------------------------------------------------------------------
-- Ejercicio 2 ------------------------

use libreria;

-- 1

set sql_safe_updates = 0;
update autores set nombre = 'esteban' where apellido= 'echeverria';

-- 2 
alter table empleados add permanencia int;
update empleados set permanencia = timestampdiff( year,fecha_ingreso,curdate());

-- 3
alter table libros add precio_publico float;
update libros set precio = round(precio * 1.21,2);

-- ----------------------------------------------------------------------------------------

-- EJERCICIO 3 Modulo 4----------------------------------

-- 1
create table empleados_anteriores select * from empleados where apellido= 'thomas' or apellido = 'pereira' or apellido = 'devo';
delete from empleados where apellido in ('thomas','pereira','devo');
select * from empleados;

-- 2
INSERT INTO empleados_anteriores (empleado_id, nombre, apellido, 
puesto_id, editorial_id, fecha_ingreso, permanencia)
SELECT EMPLEADO_ID, NOMBRE, APELLIDO, PUESTO_ID, EDITORIAL_ID, 
FECHA_INGRESO, PERMANENCIA FROM EMPLEADOS WHERE APELLIDO = 'CRUZ';
DELETE FROM EMPLEADOS WHERE APELLIDO = 'CRUZ';