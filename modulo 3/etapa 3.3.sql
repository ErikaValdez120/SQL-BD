-- Ejercicio  3.3 -------------------------------------------------
use laboratorio;

Select * from pedidos_neptuno where year(fechaPedido) = 1998;
Select * from pedidos_neptuno where year (fechaPedido) = 1997 and month(fechaPedido)between 8 and 9;
Select * from pedidos_neptuno where day(fechaPedido) =1;
Select * , datediff(curdate(),fechaPedido)as 'dias_transcurridos'from pedidos_neptuno ;
Select * , datediff(curdate(),fechaPedido)as 'dias_transcurridos' , dayname(fechaPedido) as 'dia'from pedidos_neptuno ;
Select * , datediff(curdate(),fechaPedido)as 'dias_transcurridos' , dayname(fechaPedido) as 'dia' , dayofyear(fechaPedido) as 'dia del AÑO' from pedidos_neptuno ;
Select * , datediff(curdate(),fechaPedido)as 'dias_transcurridos' , dayname(fechaPedido) as 'dia' , dayofyear(fechaPedido) as 'dia del AÑO' , monthname(fechaPedido) as 'dia del mes' from pedidos_neptuno ;
Select * , datediff(curdate(),fechaPedido)as 'dias_transcurridos' , dayname(fechaPedido) as 'dia' , dayofyear(fechaPedido) as 'dia del AÑO' , monthname(fechaPedido) as 'dia del mes' ,adddate(fechaPedido,interval 30 day) as 'primer vencimiento' from pedidos_neptuno ;
Select * , datediff(curdate(),fechaPedido)as 'dias_transcurridos' , dayname(fechaPedido) as 'dia' , dayofyear(fechaPedido) as 'dia del AÑO' , monthname(fechaPedido) as 'dia del mes' ,adddate(fechaPedido,interval 30 day) as 'primer vencimiento' , adddate(fechaPedido, interval 2 month) as 'segundo vencimiento' from pedidos_neptuno ;
