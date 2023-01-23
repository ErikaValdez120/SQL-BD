-- Integrador etapa 5.2 modulo 5
use laboratorio;

/*1- Utilizando la tabla CLIENTES_NEPTUNO, 
generar una consulta que muestre los campos 
IDCLIENTE, NOMBRECOMPANÍA, CIUDAD
y PAÍS. Agregar una columna cuyo nombre 
sea CONTINENTE, en la que se muestren los 
siguientes valores:
a. América del Norte si el cliente está 
radicado en México, Canadá o USA.
b. América del Sur si el cliente está radicado 
en Argentina, Brasil o Venezuela.
c. Europa en el caso de que no se cumplan 
ninguna de las condiciones anteriores.
Ordenar el resultado alfabéticamente por los 
campos CONTINENTE y PAÍS.
*/

select idCliente,nombreCompania,ciudad,pais,
case
when pais in('mexico','canada','usa') then 'America del Norte'
when pais in('argentina','brasil','venezuela')then 'America del sur'
else 'Europa' end as 'CONTINENTE'
from clientes_neptuno 
group by continente,pais;

/* 2- Utilizar la tabla PEDIDOS_NEPTUNO, 
generar una consulta que muestre los 
campos IDPEDIDO, NOMBRECOMPAÑÍA, 
FECHAPEDIDO y CARGO.
Luego, agregar una columna llamada 
EVALUACIÓN en la que se muestren los 
valores definidos en las condiciones. */

select idPedido,NombreCompania,fechaPedido,cargo ,
case 
when cargo > 700 then 'EXCELENTE'
when cargo >= 500 then 'MUY BUENO'
when cargo >= 250 then 'BUENO'
when cargo >= 50 then 'regular'
else 'malo' end as evaluacion
from pedidos_neptuno
order by cargo desc;

/*Utilizando la tabla PRODUCTOS_NEPTUNO, 
generar una consulta que muestre los campos 
IDPRODUCTO, NOMBREPRODUCTO, 
NOMBRECATEGORÍA y PRECIOUNIDAD. 
Agregar una columna con el nombre TIPO en 
la que se muestren los siguientes valores:
a. DELUXE si el precio del producto supera 
los 100 dólares.
b. REGULAR si el precio del producto oscila 
entre 10 y 100 dólares.
c. ECONÓMICO si el precio del producto es 
inferior a los 10 dólares.
Por último, ordenar los productos de mayor a 
menor según sus precios.
*/

select IdProducto,NombreProducto,NombreCategoria ,precioUnidad, 
case
when PrecioUnidad > 100 then 'DELUXE'
when PrecioUnidad > 10 then 'REGULAR'
when PrecioUnidad <10 then 'ECONOMICO' END as tipo
from productos_neptuno
order by precioUnidad;

