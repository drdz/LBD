select * from Alumno join Maestro on Alumno.Matricula = Maestro.[ID maestro]
select * from Maestro join Empleado on Maestro.[ID maestro] = Empleado.[ID empleado]
select * from Empleado join Alumno on Empleado.[ID empleado] = Alumno.Matricula

select * from Alumno left join Maestro on Alumno.Matricula = Maestro.[ID maestro]
select * from Maestro left join Empleado on Maestro.[ID maestro] = Empleado.[ID empleado]
select * from Empleado left join Alumno on Empleado.[ID empleado] = Alumno.Matricula

select * from Alumno as A1 cross join Alumno as A2 order by A1.Facultad
select * from Maestro as M1 cross join Maestro as M2 order by M2.Materia
select * from Empleado as E1 cross join Empleado as E2 order by E1.Area

select * from Alumno right join Maestro on Alumno.Matricula = Maestro.[ID maestro]

