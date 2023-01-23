-- EJERCICIO 3.2 ----------------------------------------------------------------------------------
use laboratorio;
desc clientes_neptuno;
select IDCliente ,NombreCompania,concat(direccion,'- ',ciudad,'- ',pais) ubicacion  from clientes_neptuno;
select IDCliente ,NombreCompania,concat_ws(' - ',direccion,ciudad,pais) ubicacion  from clientes_neptuno;
select IDCliente ,upper(NombreCompania) as Empresa,concat_ws(' - ',direccion,ciudad,pais) ubicacion  from clientes_neptuno;
select lower(IDCliente) ,upper(NombreCompania) as Empresa,concat_ws(' - ',direccion,ciudad,pais) ubicacion  from clientes_neptuno;
select fecha,left(sexo,1)as SEXO,left(tipo_parto,1)as TIPO from nacimientos;
Select * ,concat(left(ciudad,1),'.',left(pais,1),right(pais,2))as codigo from clientes_neptuno;
Select  sexo,fecha,tipo_parto,atenc_part,local_part, substring(fecha,4,2) as mes from nacimientos order by mes;
Select sexo, fecha , tipo_parto,replace (nacionalidad,'chilena','ciudadana') as nacionalidad from nacimientos;
