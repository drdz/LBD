--Subconsulta--
select * from Carrera where Carrera.Acronimo = (select Acronimo from Carrera where Acronimo = 'LSTI')
--Select with--
Select * from Facultad where Campus='CD UNIVERSITARIA' with 
--Select into--
select Area into XYZ from Empleado