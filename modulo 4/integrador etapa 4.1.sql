-- 4.1 proyecto integrador ------------------------------------
use laboratorio;

-- 1 
create table varones  Select * from nacimientos where sexo='masculino';
Select count(*) from varones;

-- 2
create table mujeres  Select * from nacimientos where sexo='femenino';
Select count(*) from mujeres;

-- 3
create table indeterminados Select * from nacimientos where sexo = 'indeterminado';
Select count(*) from indeterminados;

-- 4 
drop table nacimientos; 