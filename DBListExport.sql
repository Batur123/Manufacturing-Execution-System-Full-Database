USE [master]
GO
/****** Object:  Database [FirmaDBList]    Script Date: 4.01.2021 20:52:17 ******/
CREATE DATABASE [FirmaDBList]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FirmaDBList', FILENAME = N'D:\SQL Server 2017 Express Edition\MSSQL14.BATUR\MSSQL\DATA\FirmaDBList.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FirmaDBList_log', FILENAME = N'D:\SQL Server 2017 Express Edition\MSSQL14.BATUR\MSSQL\DATA\FirmaDBList_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FirmaDBList] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FirmaDBList].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FirmaDBList] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FirmaDBList] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FirmaDBList] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FirmaDBList] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FirmaDBList] SET ARITHABORT OFF 
GO
ALTER DATABASE [FirmaDBList] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FirmaDBList] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FirmaDBList] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FirmaDBList] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FirmaDBList] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FirmaDBList] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FirmaDBList] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FirmaDBList] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FirmaDBList] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FirmaDBList] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FirmaDBList] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FirmaDBList] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FirmaDBList] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FirmaDBList] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FirmaDBList] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FirmaDBList] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FirmaDBList] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FirmaDBList] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FirmaDBList] SET  MULTI_USER 
GO
ALTER DATABASE [FirmaDBList] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FirmaDBList] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FirmaDBList] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FirmaDBList] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FirmaDBList] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FirmaDBList] SET QUERY_STORE = OFF
GO
USE [FirmaDBList]
GO
/****** Object:  Table [dbo].[DBAdlari]    Script Date: 4.01.2021 20:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBAdlari](
	[dbID] [int] IDENTITY(1,1) NOT NULL,
	[dbName] [nvarchar](max) NULL,
 CONSTRAINT [PK_DBAdlari] PRIMARY KEY CLUSTERED 
(
	[dbID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [FirmaDBList] SET  READ_WRITE 
GO
