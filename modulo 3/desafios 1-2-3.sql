-- Desafio 1 - modulo 3 Mysql---------------------
use bonus_track;

-- 1
Select  concat(artista,'-',titulo) as cancion , genero from top_spotify order by cancion asc;
-- 2
Select  concat_ws('-',artista,titulo) as cancion , genero from top_spotify order by cancion asc;
-- 3
Select  concat_ws('-',artista,titulo) as cancion ,upper(genero) from top_spotify order by cancion asc;
-- 4
Select  concat_ws('-',artista,titulo) as cancion ,upper(genero), year(curdate()) - ano as 'años' from top_spotify order by cancion asc;
-- 5
Select count(*) as canciones from top_spotify;
-- 6
Select count(titulo) as cantidad_canciones, ano as año from top_spotify group by ano;
-- 7
Select count(titulo) as cantidad_canciones, ano as año from top_spotify  group by ano HAVING cantidad_canciones >= 50;


-- ----------------------------------------------------------------------------------------------------------------------
-- Desafio 2 - Modulo 3

use libreria ;

-- 1
Select concat(nombre,' - ',apellido)AUTOR , provincia  from autores order by autor;
-- 2 
Select concat_ws(' - ',nombre,apellido)AUTOR , provincia  from autores order by autor;
-- 3
Select upper(concat_ws(' - ',nombre,apellido))AUTOR , provincia  from autores order by autor; 
-- 4
Select upper(concat(apellido,',',left (nombre,1),'.'))AUTOR , provincia  from autores order by autor;
-- 5
Select concat(nombre,', ',apellido) as empleado ,year(fecha_ingreso) as ingreso  from empleados order by ingreso;

-- -------------------------------------------------------------------------------------------------------------------
-- Desafio 3 - modulo 3 mysql

-- 1 
Select concat(nombre,', ',apellido) as empleado ,year(fecha_ingreso) as ingreso, timestampdiff(year,fecha_ingreso,curdate()) as antiguerdad  from empleados order by ingreso;
-- 2
Select min(precio) as menor_precio  from libros;
-- 3
Select min(precio) as menor_precio , max(precio) as mayor_precio from libros;
-- 4
Select min(precio) as menor_precio , max(precio) as mayor_precio, round(avg(precio),2) as precio_promedio from libros;
-- 5
Select min(precio) as menor_precio , max(precio) as mayor_precio, round(avg(precio),2) as precio_promedio,categoria from libros group by categoria ;
-- 6
Select min(precio) as menor_precio , max(precio) as mayor_precio, round(avg(precio),2) as precio_promedio,categoria from libros group by categoria  having categoria <> 'sin asignar';






