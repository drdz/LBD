CREATE TABLE [dbo].[Alumno](
	[Matricula] [uniqueidentifier] NOT NULL,
	[Nombres] [nvarchar](50) NOT NULL,
	[Apellido1] [nvarchar](50) NOT NULL,
	[Apellido2] [nvarchar](50) NOT NULL,
	[Edad] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[Municipio] [nvarchar](max) NOT NULL,
	[Estado] [nvarchar](max) NOT NULL,
	[Facultad] [nvarchar](max) NOT NULL,
	[Carrera] [nvarchar](max) NOT NULL
	)
	GO

CREATE TABLE [dbo].[Calificacion](
	[Matricula] [uniqueidentifier] NOT NULL,
	[ID_materia] [uniqueidentifier] NOT NULL,
	[Calificacion] [nvarchar](50) NOT NULL,
	)
GO

CREATE TABLE [dbo].[Carrera](
	[ID_carrera] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Acronimo] [nvarchar](50) NOT NULL,
	[Materias] [nvarchar](50) NOT NULL,
	[Campus] [nvarchar](50) NOT NULL,
	[Facultad] [nvarchar](50) NOT NULL

) 
GO

CREATE TABLE [dbo].[Empleado](
	[ID_empleado] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido1] [nvarchar](50) NOT NULL,
	[Apellido2] [nvarchar](50) NOT NULL,
	[Edad] [nvarchar](50) NOT NULL,
	[Facultad] [nvarchar](50) NOT NULL,
	[Area] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[Municipio] [nvarchar](max) NOT NULL,
	[Estado] [nvarchar](max) NOT NULL
  ) 
GO

CREATE TABLE [dbo].[Facultad](
	[ID_facultad] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Acronimo] [nvarchar](50) NOT NULL,
	[Carreras] [int] NOT NULL,
	[Campus] [nvarchar](50) NOT NULL,
 
) 
GO

CREATE TABLE [dbo].[Maestro](
	[ID_maestro] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido1] [nvarchar](50) NOT NULL,
	[Apellido2] [nvarchar](50) NOT NULL,
	[Edad] [nvarchar](50) NOT NULL,
	[Materia] [nvarchar](50) NOT NULL,
	[Carrera] [nvarchar](50) NOT NULL,
	[Facultad] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[Municipio] [nvarchar](50) NOT NULL,
	[Estado] [nvarchar](50) NOT NULL
 )
GO

CREATE TABLE [dbo].[Materia](
	[ID_materia] [uniqueidentifier] NOT NULL,
	[Nombres] [nvarchar](max) NOT NULL,
	[Acronimo] [nvarchar](50) NOT NULL,
	[Carrera] [nvarchar](50) NOT NULL,
	[Facultad] [nvarchar](50) NOT NULL,

) 
GO