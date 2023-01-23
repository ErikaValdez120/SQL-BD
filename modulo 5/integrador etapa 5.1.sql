-- Etapa 5.1 - Proyecto integrador modulo 5 Mysql 

/* 1- Utilizando la tabla PRODUCTOS_NEPTUNO, 
obtener una lista de todos aquellos productos 
cuyo precio supere el precio promedio. Esta 
debe contener todos los campos de la tabla. 
Por último, ordenar alfabéticamente el 
resultado según los nombres de los productos.*/

use laboratorio;

Select *  from productos_neptuno  where 	precioUnidad > (select avg(precioUnidad)from productos_neptuno ) order by NombreProducto;

/*2. Toma la tabla PRODUCTOS_NEPTUNO y obtén 
una lista de todos aquellos productos cuyo precio
sea superior al producto más caro de la tabla 
PRODUCTOS_SUSPENDIDOS. Esta debe contener
todos los campos de la tabla. Luego, ordenar el 
resultado de mayor a menor de acuerdo con los 
precios obtenidos.*/

select * from productos_neptuno where precioUnidad > (select max(precioUnidad) from productos_suspendidos order by precioUnidad );

/*3- Utilizando la tabla VARONES, obtener una 
lista de todos aquellos bebés que hayan 
nacido con una cantidad de semanas de 
gestación menor que el bebé de sexo 
indeterminado con menor gestación. La lista 
debe mostrar todos los campos de la tabla*/

select * from varones where semanas < (select min(semanas) from indeterminados);

/*4- Dada la tabla PRODUCTOS_NEPTUNO, 
obtener una lista de todos los productos cuyo 
nombre comience con la inicial del apellido 
del empleado cuyo IDEMPLEADO es el 
número 8. Esta debe mostrar todos los 
campos de la tabla PRODUCTOS_NEPTUNO
y se debe ordenar alfabéticamente según los 
nombres de los productos.
*/

select * from productos_neptuno 
where left (nombreProducto,1) = (select left( nombre_empleado, 1) from empleados where idEmpleado = 8) 
order by nombreProducto;


/*5- Utilizando la tabla PRODUCTOS_NEPTUNO, 
obtener una lista de todos los productos que 
pertenezcan al proveedor con el ID más alto. 
La lista debe mostrar todos los campos de la 
tabla PRODUCTOS_NEPTUNO y debe 
ordenarse alfabéticamente por los nombres 
de los productos.*/

select * from productos_neptuno where idProveedor = (select max(idProveedor) from proveedores) order by nombreProducto;	

/*6-  Dada la tabla PRODUCTOS_NEPTUNO, 
extraer una lista de todos aquellos productos 
que pertenezcan a la categoría BEBIDAS y 
cuyo precio sea superior al producto más 
caro de la categoría CONDIMENTOS. La lista 
debe mostrar todos los campos de la tabla.*/

select * from productos_neptuno where NombreCategoria = 'bebidas' and precioUnidad > (select max(precioUnidad) from productos_neptuno where Nombrecategoria = 'condimentos');

/*.7- A partir de la tabla MUJERES, obtener una 
lista de todas aquellas bebas que hayan 
nacido de madres con una edad superior a 
la madre más longeva que figure en la tabla 
VARONES. La lista debe mostrar todos los 
campos de la tabla MUJERES.
*/
select * from mujeres where  edad_madre > (select max(edad_madre) from varones);

/*8- Utilizando la tabla CLIENTES_NEPTUNO, extraer una 
lista de todos los clientes que hayan realizado compras 
por un cargo superior a 500 dólares. La lista debe 
mostrar los campos NOMBRECOMPANIA, CIUDAD y 
PAÍS y debe estar ordenada alfabéticamente por los 
nombres de las compañías*/

-- EN MI TABLA CLIENTES_NEPTUNO NO EXISTE NINGUN CAMPO 'CARGO'
-- procedo hacerlo como si realmente existiera ese campo

select nombreCompania,ciudad,pais from clientes_neptuno where cargo > 500 order by NombreCompania ;
