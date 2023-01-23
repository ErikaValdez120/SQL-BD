-- ----------------- DESAFIOS----------------------------------------------------
-- EJERCICIO 1------------------------------------------------------------
use bonus_track;
-- importe el svc top_spotify
desc top_spotify;
Select artista,titulo,genero from top_spotify order by genero;
Select artista,titulo,genero from top_spotify order by genero,artista;

-- ----------------EJERCICIO 2 ----------------------------------------------
Select artista,titulo,genero from top_spotify order by artista,titulo limit 10;
Select artista,titulo,genero from top_spotify order by artista,titulo limit 5 offset 10;
Select * from top_spotify where artista = 'Madonna'; -- NO HAY NADA CON MADONNA
SELECT * FROM TOP_SPOTIFY WHERE genero = 'pop' order by titulo;
SELECT * FROM TOP_SPOTIFY WHERE genero = 'pop' and ano = 2015 order by artista,titulo; -- no hay resultados
SELECT * FROM TOP_SPOTIFY WHERE genero = 'dance pop' and ano < 2011 order by titulo;

-- EJERCICIO 3 ----------------------------------------------------------------------------------------------
use libreria;


Select * from autores where ciudad="BUENOS AIRES"; 
Select * from libros where precio > 30 order by precio;
select * from autores where provincia <> 'BS' order by provincia;
Select * from libros where categoria ='cuentos' and precio < 20 order by titulo;
Select * from libros where categoria ='novela' or categoria= 'ensayo'order by titulo;
Select * from libros where precio between 20 and 35 order by precio;
Select * from autores where nombre in ('Jorge Luis','Victoria','Ernesto','Adolfo');
Select * from libros where titulo like '%mundo%' order by  titulo;
SELECT * FROM LIBROS WHERE TITULO LIKE '% DE %' ORDER BY TITULO;
Select * from libros where precio is null order by precio;
select * from libros;
