--Consulta 1--
create procedure consulta_1 @nombre nvarchar(50), @facultad varchar(50)
as
begin
	SELECT * FROM Alumno WHERE Nombre= @nombre and Facultad = @facultad;
	print 'Hecho';
end

exec consulta_1 'María Mireya', 'FCFM'

--Consulta 2--
create procedure consulta_2 @nombre nvarchar(50), @area nvarchar(50)
as
begin
	SELECT * FROM Empleado WHERE Nombre= @nombre and Area = @area;
	print 'Hecho';
end

exec consulta_2 'Mario Andrés', 'Administración'

--Consulta 3--
create procedure consulta_3 @nombre nvarchar(50), @materia nvarchar(50)
as
begin
	SELECT * FROM Maestro WHERE Nombre= @nombre and Materia = @materia;
	print 'Hecho';
end

exec consulta_3 'Thomas Edward', 'Telecomunicaciónes III'

--Consulta 4--
create procedure consulta_4 @nombre nvarchar(50), @acronimo nvarchar(50)
as
begin
	SELECT * FROM Facultad WHERE Nombre= @nombre and Acronimo = @acronimo;
	print 'Hecho';
end

exec consulta_4 'Facultad de Música', 'FAMUS'

--Consulta 5--
create procedure consulta_5 @acronimo nvarchar(50), @campus nvarchar(50)
as
begin
	SELECT * FROM Carrera WHERE Acronimo= @acronimo and Campus= @campus
	print 'Hecho';
end

exec consulta_5 'CIVIL', 'CD UNIVERSITARIA'
