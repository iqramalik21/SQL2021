USE [master]
GO
/****** Object:  Database [DCNewDatabase1]    Script Date: 11/22/2021 4:16:48 PM ******/
CREATE DATABASE [DCNewDatabase1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DCNewDatabase1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER01\MSSQL\DATA\DCNewDatabase1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DCNewDatabase1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER01\MSSQL\DATA\DCNewDatabase1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DCNewDatabase1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DCNewDatabase1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DCNewDatabase1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DCNewDatabase1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DCNewDatabase1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DCNewDatabase1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DCNewDatabase1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET RECOVERY FULL 
GO
ALTER DATABASE [DCNewDatabase1] SET  MULTI_USER 
GO
ALTER DATABASE [DCNewDatabase1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DCNewDatabase1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DCNewDatabase1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DCNewDatabase1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DCNewDatabase1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DCNewDatabase1', N'ON'
GO
ALTER DATABASE [DCNewDatabase1] SET QUERY_STORE = OFF
GO
USE [DCNewDatabase1]
GO
/****** Object:  Table [dbo].[City]    Script Date: 11/22/2021 4:16:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] NOT NULL,
	[CityName] [nchar](10) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 11/22/2021 4:16:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] NOT NULL,
	[Course Name] [ntext] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/22/2021 4:16:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentRollNo] [int] NOT NULL,
	[Name] [ntext] NULL,
	[Year] [smallint] NULL,
	[Batch] [int] NULL,
	[FatherName] [ntext] NULL,
	[CityID] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentRollNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentCourse]    Script Date: 11/22/2021 4:16:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourse](
	[StudentCourseID] [int] NOT NULL,
	[StudentRollNo] [int] NULL,
	[CourseID] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (1, N'Karachi   ')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (2, N'Islamabad ')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (3, N'Lahore    ')
INSERT [dbo].[Student] ([StudentRollNo], [Name], [Year], [Batch], [FatherName], [CityID]) VALUES (11, N'Tehreem Sultan', 4, 2018, N'Sultan Ali', 1)
INSERT [dbo].[Student] ([StudentRollNo], [Name], [Year], [Batch], [FatherName], [CityID]) VALUES (13, N'Iqra Malik', 4, 2018, N'Muhammad Farooq', 2)
INSERT [dbo].[Student] ([StudentRollNo], [Name], [Year], [Batch], [FatherName], [CityID]) VALUES (17, N'Neha Khan', 4, 2018, N'Muhammad Khan', 1)
INSERT [dbo].[Student] ([StudentRollNo], [Name], [Year], [Batch], [FatherName], [CityID]) VALUES (26, N'Syeda Imaan Sarwar', 4, 2018, N'Syed Muhammad Sarwar', 3)
INSERT [dbo].[Student] ([StudentRollNo], [Name], [Year], [Batch], [FatherName], [CityID]) VALUES (100, N'testing', 2, 2018, N'hi', 1)
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_City]
GO
ALTER TABLE [dbo].[StudentCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[StudentCourse] CHECK CONSTRAINT [FK_StudentCourse_Course]
GO
ALTER TABLE [dbo].[StudentCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourse_Student] FOREIGN KEY([StudentRollNo])
REFERENCES [dbo].[Student] ([StudentRollNo])
GO
ALTER TABLE [dbo].[StudentCourse] CHECK CONSTRAINT [FK_StudentCourse_Student]
GO
USE [master]
GO
ALTER DATABASE [DCNewDatabase1] SET  READ_WRITE 
GO
