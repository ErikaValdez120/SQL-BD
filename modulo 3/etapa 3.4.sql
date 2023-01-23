-- Ejercicio 3.4 proyecto integrador --------------------------------------
use laboratorio;

-- 1
Select * ,round(cargo * 0.21,2)   as 'iva' from pedidos_neptuno;
-- 2
Select * ,round(cargo * 0.21,2)   as 'iva', round(cargo *1.21,2) from pedidos_neptuno;
-- 3
Select * ,round(cargo * 0.21,2)   as 'iva', round(cargo *1.21,2) , floor(round(cargo* 1.21,2)) as 'a favor del cliente'from pedidos_neptuno;
-- 4
Select * ,round(cargo * 0.21,2)   as 'iva', round(cargo *1.21,2) , floor(round(cargo* 1.21,2)) as 'a favor del cliente' ,ceil(round(cargo* 1.21,2)) as 'redondeo a favor de empresa' from pedidos_neptuno;

