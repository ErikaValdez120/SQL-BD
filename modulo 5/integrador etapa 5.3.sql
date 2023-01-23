-- Etapa 5.3 -Integrador modulo 5

use laboratorio;
/*1- Obtener una lista de todos aquellos bebés nacidos con menos de 20 semanas de gestación. La lista mostrará los bebés de 
cualquier sexo, por lo tanto, la consulta se debe llevar a cabo en las tablas VARONES, MUJERES e INDETERMINADOS.*/

select * from varones where semanas <20 
UNION
select * from mujeres where semanas <20
UNION
select * from indeterminados where semanas <20;

/*2- Luego, obtener una lista de todos aquellos bebés nacidos durante el mes de septiembre, 
con más de 40 semanas de gestación y nacidos de madres chilenas casadas.
La lista debe mostrar los bebés de cualquier sexo, por lo tanto, debe llevar adelante la 
consulta en las tablas VARONES, MUJERES e INDETERMINADOS..
*/
select * from varones where semanas > 40 and fecha like '%/09%' and nacionalidad='chilena' and estado_civil_madre = 'casada' 
UNION
select * from mujeres where semanas > 40 and fecha like '%/09%' and nacionalidad='chilena' and estado_civil_madre = 'casada'
UNION
select * from indeterminados where semanas > 40 and fecha like '%/09%' and nacionalidad='chilena' and estado_civil_madre = 'casada';

/*3- Obtener una lista de todos aquellos productos (a la venta y suspendidos) cuyo precio supere los 80 dólares. La búsqueda se 
debe llevar a cabo en las tablas PRODUCTOS_NEPTUNO y PRODUCTOS_SUSPENDIDOS. Después, ordenar el resultado alfabéticamente según 
los nombres de los productos.*/

select * from productos_neptuno  where precioUnidad > 80
union
select * from productos_suspendidos  where precioUnidad > 80
order by nombreProducto;

/*4- Modificar la consulta anterior para agregar una columna llamada CONDICIÓN en la que se muestre el texto “A LA VENTA” en
 el caso de que el registro provenga de la tabla PRODUCTOS_NEPTUNO; o el texto SUSPENDIDO si el registro proviene de la tabla 
PRODUCTOS_SUSPENDIDOS.
*/

select *, 'a la venta' as condicion from productos_neptuno  where precioUnidad > 80
union
select * ,'suspendido' as condicion from productos_suspendidos  where precioUnidad > 80
order by nombreProducto;

/*5- Generar una lista de todos los productos que pertenezcan a la categoría BEBIDAS sin importar si los mismos se encuentran a la 
venta o suspendidos (la búsqueda se debe hacer en las tablas PRODUCTOS_NEPTUNO y la tabla PRODUCTOS_SUSPENDIDOS). 
Luego, ordenar la lista alfabéticamente según 
los nombres de los productos.*/

select * from productos_neptuno where nombreCategoria='bebidas'
union
select * from productos_suspendidos  where nombreCategoria='bebidas'
order by nombreProducto;


/*6- Duplicar el producto cuyo ID es el número 43 de la tabla PRODUCTOS_NEPTUNO en la tabla PRODUCTOS_SUSPENDIDOS a través de una 
consulta de datos anexados. */

insert into productos_suspendidos (idProducto,NombreProducto,NombreContacto,NombreCategoria,PrecioUnidad,Suspendido,IdProveedor)
select IdProducto,NombreProducto,NombreContacto,NombreCategoria,PrecioUnidad,Suspendido,IdProveedor from productos_neptuno 
where idProducto= 43;

/*7- Repetir la consulta generada en el paso 5 (cinco) para observar que la cantidad de productos obtenida siga 
siendo la misma.*/

select * from productos_neptuno where nombreCategoria='bebidas'
union
select * from productos_suspendidos  where nombreCategoria='bebidas'
order by nombreProducto;

/*8- Modificar la consulta del paso 5 (cinco) para mostrar el producto duplicado.*/

select * from productos_neptuno where nombreCategoria='bebidas'
union all
select * from productos_suspendidos  where nombreCategoria='bebidas'
order by nombreProducto;

/*9- Eliminar el producto cuyo ID es el número 43 de la tabla PRODUCTOS_SUSPENDIDOS.*/

set sql_safe_updates =0;
delete from productos_suspendidos where IdProducto= 43;