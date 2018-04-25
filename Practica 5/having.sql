SELECT Nombre FROM Alumno WHERE Facultad='FCFM' GROUP BY Nombre HAVING (Edad)>17
SELECT Nombre FROM MAestro WHERE Materia='Cálculo Integra' GROUP BY Nombre HAVING (Edad)>20
SELECT Nombre FROM Empleado WHERE Area='Intendencia' GROUP BY Nombre HAVING (Edad)<45
SELECT Alumnos FROM Carrera WHERE Facultad='FCFM' GROUP BY Nombre HAVING (Edad)=20
SELECT Maestros FROM Carrera WHERE Facultad='FCFM' GROUP BY Nombre HAVING (Edad)=32