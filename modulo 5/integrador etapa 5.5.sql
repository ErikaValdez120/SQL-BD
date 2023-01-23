-- etapa 5.5 Integrador modulo 5 

use laboratorio ;
/*1- Generar un listado en la que se muestre el campo NOMBRECONTACTO de la tabla PROVEEDORES y los campos IDPRODUCTO, 
NOMBREPRODUCTO y PRECIOUNIDAD de la tabla PRODUCTOS NEPTUNO. Generar el JOIN a través de la cláusula FROM.*/

select p.nombreContacto,idProducto,nombreProducto,precioUnidad from proveedores p
join productos_neptuno pn on p.IdProveedor= pn.IdProveedor;

/*2- Modificar la consulta anterior para generar el JOIN a través de la cláusula WHERE.*/

select p.nombreContacto,idProducto,nombreProducto,precioUnidad from proveedores p,productos_neptuno pn
where  p.IdProveedor= pn.IdProveedor
order by pn.nombreContacto,nombreProducto;

/*3- Crear un listado en la que se muestre el campo EMPRESA de la tabla CLIENTES y los campos NUMERO_PEDIDO, FECHA_PEDIDO 
y FORMA_PAGO de la tabla PEDIDOS. Generar el JOIN a través de la cláusula FROM. Luego, ordenar el listado alfabéticamente por 
los nombres de las empresas.*/

select C.empresa, P.numero_Pedido,P.fecha_Pedido,P.forma_Pago from pedidos p
inner join Clientes C on C.cod_cliente = P.codigo_Cliente
order by empresa;

/*4- Modificar la consulta anterior para mostrar únicamente aquellos clientes que no hayan efectuado ningún pedido.*/ 

select C.empresa, P.numero_Pedido,P.fecha_Pedido,P.forma_Pago from pedidos p
inner join Clientes C on C.cod_cliente = P.codigo_Cliente
where NUMERO_PEDIDO is null
order by empresa;

/*5- Por último, modificar la consulta anterior para mostrar únicamente el campo EMPRESA*/

select C.empresa from pedidos p
inner join Clientes C on C.cod_cliente = P.codigo_Cliente
where NUMERO_PEDIDO is null
order by empresa;


/*6- ¿Existe algún proveedor que en este momento no le esté vendiendo ningún producto a nuestra empresa?
 Responder esta pregunta a través de una consulta en la que utilices las tablas PROVEEDORES y PRODUCTOS NEPTUNO.
 Mostrar todos los campos de ambas tablas en el resultado de la consulta. */
 
-- no existe proveedores que no vendan ningun producto
select * from proveedores p 
left join productos_neptuno pn 
on p.idProveedor = pn.idProveedor
where pn.IdProveedor is null;

/*7. ¿Existe algún producto que no se sepa quién es el proveedor que lo provee a nuestra empresa?
Responder esta pregunta a través de una consulta en la que utilices las tablas PROVEEDORES y PRODUCTOS NEPTUNO. 
Puedes mostrar todos los campos de ambas tablas en el resultado de la consulta*/

select * from productos_neptuno pn 
right join proveedores p
on p.idProveedor = pn.idProveedor
where p.idProveedor is null;
