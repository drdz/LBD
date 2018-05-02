USE [master]
GO
/****** Object:  Database [Lab]    Script Date: 02/05/2018 12:52:58 a. m. ******/
CREATE DATABASE [Lab]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Lab', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Lab.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Lab_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Lab_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Lab] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Lab].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Lab] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Lab] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Lab] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Lab] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Lab] SET ARITHABORT OFF 
GO
ALTER DATABASE [Lab] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Lab] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Lab] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Lab] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Lab] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Lab] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Lab] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Lab] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Lab] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Lab] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Lab] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Lab] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Lab] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Lab] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Lab] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Lab] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Lab] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Lab] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Lab] SET  MULTI_USER 
GO
ALTER DATABASE [Lab] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Lab] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Lab] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Lab] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Lab] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Lab] SET QUERY_STORE = OFF
GO
USE [Lab]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Lab]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[Matricula] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido paterno] [nvarchar](50) NOT NULL,
	[Apellido materno] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Facultad] [nvarchar](50) NOT NULL,
	[Carrera] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Alumno_V]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Alumno_V] as select Nombre from Alumno
GO
/****** Object:  Table [dbo].[a_Area]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_Area](
	[Area] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[ID carrera] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Acronimo] [nvarchar](50) NOT NULL,
	[Facultad] [nvarchar](50) NOT NULL,
	[Campus] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID empleado] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido paterno] [nvarchar](50) NOT NULL,
	[Apellido materno] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Area] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facultad](
	[ID facultad] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Acronimo] [nvarchar](50) NOT NULL,
	[Campus] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[ID maestro] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido paterno] [nvarchar](50) NOT NULL,
	[Apellido materno] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Materia] [nvarchar](50) NOT NULL,
	[Facultad] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[consulta_1]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[consulta_1] @nombre nvarchar(50), @facultad varchar(50)
as
begin
	SELECT * FROM Alumno WHERE Nombre= @nombre and Facultad = @facultad;
	print 'Hecho';
end
GO
/****** Object:  StoredProcedure [dbo].[consulta_2]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[consulta_2] @nombre nvarchar(50), @area nvarchar(50)
as
begin
	SELECT * FROM Empleado WHERE Nombre= @nombre and Area = @area;
	print 'Hecho';
end
GO
/****** Object:  StoredProcedure [dbo].[consulta_3]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[consulta_3] @nombre nvarchar(50), @materia nvarchar(50)
as
begin
	SELECT * FROM Maestro WHERE Nombre= @nombre and Materia = @materia;
	print 'Hecho';
end
GO
/****** Object:  StoredProcedure [dbo].[consulta_4]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[consulta_4] @nombre nvarchar(50), @acronimo nvarchar(50)
as
begin
	SELECT * FROM Facultad WHERE Nombre= @nombre and Acronimo = @acronimo;
	print 'Hecho';
end
GO
/****** Object:  StoredProcedure [dbo].[consulta_5]    Script Date: 02/05/2018 12:52:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[consulta_5] @acronimo nvarchar(50), @campus nvarchar(50)
as
begin
	SELECT * FROM Carrera WHERE Acronimo= @acronimo and Campus= @campus
	print 'Hecho';
end
GO
USE [master]
GO
ALTER DATABASE [Lab] SET  READ_WRITE 
GO
