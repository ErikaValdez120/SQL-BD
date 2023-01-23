-- Ejercicio 3.5 integrador-------------------------------------
use laboratorio;

-- 1 
Select count(*)as cantidad_pedido from pedidos_neptuno ;
-- 2
Select count(Transportista)as 'entrega pedidas express' from pedidos_neptuno where Transportista = 'speedy express';
-- 3
Select count(empleado) as ventas from pedidos_neptuno where empleado like 'C%' ;  
-- 4
Select 	round (avg(PrecioUnidad),2) as 'precio promedio' from productos_neptuno;
-- 5
Select 	round (avg(PrecioUnidad),2) as 'precio promedio' , min(precioUnidad) as 'precio inferior' from productos_neptuno;
-- 6
Select 	round (avg(PrecioUnidad),2) as 'precio promedio' , min(precioUnidad) as 'precio inferior', max(precioUnidad) as 'precio maximo' from productos_neptuno;
-- 7
Select NombreCategoria as categoria ,max(precioUnidad) from productos_neptuno group by Nombrecategoria;
-- 8
Select count(IdPedido) as entrega,transportista from pedidos_neptuno group by  Transportista;
-- 9
Select count(sexo) ,sexo from nacimientos group by sexo;
-- 10
Select nombreCompania as cliente, round(sum(Cargo),2) as total_gastos from pedidos_neptuno group by cliente;
-- 11
Select count(*) as cantidad ,seccion from productos group by seccion order by cantidad desc;
-- 12
Select  nombreCompania as cliente, round(sum(cargo),2) as 'cargo total' from pedidos_neptuno group by cliente;
-- 13
Select count(*) as cantidad_productos, seccion  from productos group by seccion order by cantidad_productos desc;
-- 14
Select count(IdPedido) as cantidad_ventas, month(fechaPedido) as mes , year(fechaPedido) as año  from pedidos_neptuno  group by  mes,año order by  año ,mes;
-- 15
Select empleado,round(sum(cargo),2) facturacion, round(avg(cargo),2)as promedio,max(cargo) as mejor_venta, min(cargo) peor_venta,count(cargo) ventas from pedidos_neptuno group by Empleado;


