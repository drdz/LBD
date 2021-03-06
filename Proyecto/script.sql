USE [master]
GO
/****** Object:  Database [Base de datos]    Script Date: 07/05/2018 03:21:50 a. m. ******/
CREATE DATABASE [Base de datos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Base de datos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Base de datos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Base de datos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Base de datos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Base de datos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Base de datos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Base de datos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Base de datos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Base de datos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Base de datos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Base de datos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Base de datos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Base de datos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Base de datos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Base de datos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Base de datos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Base de datos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Base de datos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Base de datos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Base de datos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Base de datos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Base de datos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Base de datos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Base de datos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Base de datos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Base de datos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Base de datos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Base de datos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Base de datos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Base de datos] SET  MULTI_USER 
GO
ALTER DATABASE [Base de datos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Base de datos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Base de datos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Base de datos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Base de datos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Base de datos] SET QUERY_STORE = OFF
GO
USE [Base de datos]
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
USE [Base de datos]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 07/05/2018 03:21:51 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 07/05/2018 03:21:51 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[Matricula] [uniqueidentifier] NOT NULL,
	[ID_materia] [uniqueidentifier] NOT NULL,
	[Calificacion] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 07/05/2018 03:21:51 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[ID_carrera] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Acronimo] [nvarchar](50) NOT NULL,
	[Materias] [nvarchar](50) NOT NULL,
	[Campus] [nvarchar](50) NOT NULL,
	[Facultad] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 07/05/2018 03:21:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 07/05/2018 03:21:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facultad](
	[ID_facultad] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Acronimo] [nvarchar](50) NOT NULL,
	[Carreras] [int] NOT NULL,
	[Campus] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 07/05/2018 03:21:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 07/05/2018 03:21:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[ID_materia] [uniqueidentifier] NOT NULL,
	[Nombres] [nvarchar](max) NOT NULL,
	[Acronimo] [nvarchar](50) NOT NULL,
	[Carrera] [nvarchar](50) NOT NULL,
	[Facultad] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Base de datos] SET  READ_WRITE 
GO
