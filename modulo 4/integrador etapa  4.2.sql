-- Integrador etapa 4.1-----------------------

use laboratorio;
set SQL_SAFE_UPDATES =0;

-- 1 
update clientes_neptuno set  pais= 'usa' where pais= 'estados unidos'; 
Select * from clientes_neptuno;

-- 2
update clientes_neptuno set NombreCompania = upper(NombreCompania);
select * from clientes_neptuno;

-- 3
update clientes_neptuno set ciudad = upper(ciudad),pais = upper(pais);
select * from clientes_neptuno;

-- 4
alter table empleados add nombre_empleado varchar(30) after idempleado;
update empleados set nombre_empleado = concat(apellidos,', ', nombre);
alter table empleados drop apellidos, drop nombre;
Select * from empleados;

-- 5
alter table clientes add tipo varchar(3) ;
update clientes set tipo= 'VIP' where ciudad = 'madrid'; 
Select * from clientes;

-- 6
alter table clientes modify telefono varchar(20);
update clientes set telefono= concat('+34',telefono) where telefono is not null;
select * from clientes;

-- 7
alter table productos add fecha date ;
update productos set fecha = concat(ano,'-',mes,',',dia);
alter table productos drop dia, drop mes , drop ano;
update productos set origen= 'españa' where origen = 'espana';
select * from productos;

-- 8
ALTER TABLE PRODUCTOS_NEPTUNO MODIFY SUSPENDIDO VARCHAR(2);
UPDATE PRODUCTOS_NEPTUNO SET SUSPENDIDO = IF(SUSPENDIDO = '0', 'NO', 'SI');
SELECT * FROM PRODUCTOS_NEPTUNO;

-- 9
update productos_neptuno set precioUnidad = round(precioUnidad * 1.1,2);
select * from productos_neptuno;

-- 10
select * from proveedores;
update proveedores set region = null where region= '';
select * from proveedores;

-- 11
update clientes set ciudad = concat(upper(left(ciudad,1)),lower(substring(ciudad,2,length(ciudad))));
Select * from clientes;

-- 12
create table productos_suspendidos select * from productos_neptuno where suspendido = 'si';
Select * from productos_suspendidos;

-- 13
