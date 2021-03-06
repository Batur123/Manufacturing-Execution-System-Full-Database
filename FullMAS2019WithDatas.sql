USE [master]
GO
/****** Object:  Database [MAS2019]    Script Date: 4.01.2021 20:54:56 ******/
CREATE DATABASE [MAS2019]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MASBatu2019', FILENAME = N'D:\SQL Server 2017 Express Edition\MSSQL14.BATUR\MSSQL\DATA\MASBatu2019.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MASBatu2019_log', FILENAME = N'D:\SQL Server 2017 Express Edition\MSSQL14.BATUR\MSSQL\DATA\MASBatu2019_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MAS2019] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MAS2019].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MAS2019] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MAS2019] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MAS2019] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MAS2019] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MAS2019] SET ARITHABORT OFF 
GO
ALTER DATABASE [MAS2019] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MAS2019] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MAS2019] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MAS2019] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MAS2019] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MAS2019] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MAS2019] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MAS2019] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MAS2019] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MAS2019] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MAS2019] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MAS2019] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MAS2019] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MAS2019] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MAS2019] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MAS2019] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MAS2019] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MAS2019] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MAS2019] SET  MULTI_USER 
GO
ALTER DATABASE [MAS2019] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MAS2019] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MAS2019] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MAS2019] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MAS2019] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MAS2019] SET QUERY_STORE = OFF
GO
USE [MAS2019]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](30) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
	[Ad] [nvarchar](20) NOT NULL,
	[Soyad] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminSistemRaporu]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminSistemRaporu](
	[SistemID] [int] IDENTITY(1,1) NOT NULL,
	[AdminID] [int] NOT NULL,
	[SistemeGirisTarihi] [datetime] NOT NULL,
 CONSTRAINT [PK_AdminSistemRaporu] PRIMARY KEY CLUSTERED 
(
	[SistemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AliciTablosu]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AliciTablosu](
	[AliciID] [int] IDENTITY(1,1) NOT NULL,
	[AliciAD] [nvarchar](max) NOT NULL,
	[AliciSirketNO] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AliciTablosu] PRIMARY KEY CLUSTERED 
(
	[AliciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DurusRaporTablosu]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DurusRaporTablosu](
	[RaporID] [int] IDENTITY(1,1) NOT NULL,
	[DurusID] [int] NOT NULL,
	[OperatorID] [int] NOT NULL,
	[DurusBaslangicTarihi] [datetime] NOT NULL,
	[DurusBitisTarihi] [datetime] NOT NULL,
 CONSTRAINT [PK_DurusRaporTablosu] PRIMARY KEY CLUSTERED 
(
	[RaporID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DurusTablosu]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DurusTablosu](
	[DurusID] [int] IDENTITY(1,1) NOT NULL,
	[DurusAd] [nvarchar](50) NOT NULL,
	[DurusAciklama] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_DurusTablosu] PRIMARY KEY CLUSTERED 
(
	[DurusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MakinelerTablosu]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MakinelerTablosu](
	[MakineID] [int] IDENTITY(1,1) NOT NULL,
	[MakineAdi] [nvarchar](max) NOT NULL,
	[MakineKodu] [nvarchar](max) NOT NULL,
	[OperasyonID] [int] NOT NULL,
 CONSTRAINT [PK_MakinelerTablosu] PRIMARY KEY CLUSTERED 
(
	[MakineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperasyonlarTablosu]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperasyonlarTablosu](
	[OperasyonID] [int] IDENTITY(1,1) NOT NULL,
	[OperasyonAdi] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OperasyonlarTablosu] PRIMARY KEY CLUSTERED 
(
	[OperasyonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operator]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operator](
	[OperatorID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](30) NULL,
	[Soyad] [nvarchar](30) NULL,
	[TCKimlik] [nvarchar](11) NULL,
	[DogumTarihi] [datetime] NULL,
	[SicilNo] [nvarchar](30) NULL,
	[IseBaslangicTarihi] [datetime] NULL,
	[IstenCikisTarihi] [datetime] NULL,
	[DurumAP] [bit] NULL,
 CONSTRAINT [PK_Operator] PRIMARY KEY CLUSTERED 
(
	[OperatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanTablosu]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanTablosu](
	[PlanID] [int] IDENTITY(1,1) NOT NULL,
	[SiparisID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[IsEmriNo] [nvarchar](50) NOT NULL,
	[MakinaID] [int] NOT NULL,
	[AliciID] [int] NOT NULL,
	[IsEmriAdeti] [int] NOT NULL,
 CONSTRAINT [PK_PlanTablosu] PRIMARY KEY CLUSTERED 
(
	[PlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rapor]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rapor](
	[RaporID] [int] IDENTITY(1,1) NOT NULL,
	[ToplamSiparis] [int] NULL,
	[ToplamUretim] [int] NULL,
	[ToplamNet] [int] NULL,
	[OrtalamaSiparis] [int] NULL,
	[OrtalamaUretim] [int] NULL,
	[ToplamHurda] [int] NULL,
	[OrtalamaHurda] [int] NULL,
	[OrtalamaPerformans] [int] NULL,
	[BaslangicTarih] [datetime] NULL,
	[BitisTarih] [datetime] NOT NULL,
 CONSTRAINT [PK_Rapor] PRIMARY KEY CLUSTERED 
(
	[RaporID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparisTablosu]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisTablosu](
	[SiparisID] [int] IDENTITY(1,1) NOT NULL,
	[AliciID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[Miktar] [int] NOT NULL,
	[IstedigiTarih] [datetime] NOT NULL,
	[TeslimTarihi] [datetime] NULL,
 CONSTRAINT [PK_SiparisTablosu] PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UretimRapor]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UretimRapor](
	[KeyID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[AliciID] [int] NULL,
	[OperatorID] [int] NULL,
	[SiparisID] [int] NULL,
	[MakineID] [int] NULL,
	[PlanID] [int] NULL,
	[BaslamaTarihi] [datetime] NULL,
	[BitisTarihi] [datetime] NULL,
	[SiparisAdet] [int] NULL,
	[UretimAdet] [int] NULL,
	[HurdaAdet] [int] NULL,
 CONSTRAINT [PK_IsEmriRapor] PRIMARY KEY CLUSTERED 
(
	[KeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunTablosu]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunTablosu](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [nvarchar](50) NOT NULL,
	[UrunAciklama] [nvarchar](max) NULL,
	[UrunKodu] [nvarchar](max) NOT NULL,
	[En] [float] NOT NULL,
	[Boy] [float] NOT NULL,
 CONSTRAINT [PK_UrunTablosu] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([AdminID], [KullaniciAdi], [Sifre], [Ad], [Soyad]) VALUES (1, N'Batur', N'batu123', N'Batuhan', N'Özkoç')
INSERT [dbo].[Admin] ([AdminID], [KullaniciAdi], [Sifre], [Ad], [Soyad]) VALUES (2, N'Kadir', N'kadir123', N'Kadir', N'Kurt')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[AliciTablosu] ON 

INSERT [dbo].[AliciTablosu] ([AliciID], [AliciAD], [AliciSirketNO]) VALUES (1, N'batu', N'1233')
INSERT [dbo].[AliciTablosu] ([AliciID], [AliciAD], [AliciSirketNO]) VALUES (2, N'deneme', N'1234')
INSERT [dbo].[AliciTablosu] ([AliciID], [AliciAD], [AliciSirketNO]) VALUES (3, N'testnull', N'1235')
INSERT [dbo].[AliciTablosu] ([AliciID], [AliciAD], [AliciSirketNO]) VALUES (1002, N'asd', N'242')
INSERT [dbo].[AliciTablosu] ([AliciID], [AliciAD], [AliciSirketNO]) VALUES (1003, N'dw', N'22')
INSERT [dbo].[AliciTablosu] ([AliciID], [AliciAD], [AliciSirketNO]) VALUES (1004, N'dw', N'22')
INSERT [dbo].[AliciTablosu] ([AliciID], [AliciAD], [AliciSirketNO]) VALUES (1005, N'2', N'1')
SET IDENTITY_INSERT [dbo].[AliciTablosu] OFF
SET IDENTITY_INSERT [dbo].[DurusTablosu] ON 

INSERT [dbo].[DurusTablosu] ([DurusID], [DurusAd], [DurusAciklama]) VALUES (1, N'elektrik kesintisi', N'elektrik kesildigi zaman bu durus kullanilir - guncellemetest')
INSERT [dbo].[DurusTablosu] ([DurusID], [DurusAd], [DurusAciklama]) VALUES (2, N'planlı bakım', N'planlı bakım yapılacagi zaman planlı bakım durusu gerceklestirilir')
INSERT [dbo].[DurusTablosu] ([DurusID], [DurusAd], [DurusAciklama]) VALUES (3, N'denemebakım', N'deneme amacli bakim. deneme olurken bakim. deneme123 123 345')
INSERT [dbo].[DurusTablosu] ([DurusID], [DurusAd], [DurusAciklama]) VALUES (4, N'batuhan ozkoc', N'batuhanbatuhan
batuhan
batuhan
batuhan
batuhan
batuhan
batuhan
batuhan
batuhan
batuhan
batuhan
batuhan
')
INSERT [dbo].[DurusTablosu] ([DurusID], [DurusAd], [DurusAciklama]) VALUES (5, N'', N'')
INSERT [dbo].[DurusTablosu] ([DurusID], [DurusAd], [DurusAciklama]) VALUES (6, N'', N'')
INSERT [dbo].[DurusTablosu] ([DurusID], [DurusAd], [DurusAciklama]) VALUES (7, N'', N'')
INSERT [dbo].[DurusTablosu] ([DurusID], [DurusAd], [DurusAciklama]) VALUES (8, N'', N'')
SET IDENTITY_INSERT [dbo].[DurusTablosu] OFF
SET IDENTITY_INSERT [dbo].[MakinelerTablosu] ON 

INSERT [dbo].[MakinelerTablosu] ([MakineID], [MakineAdi], [MakineKodu], [OperasyonID]) VALUES (2, N'Lazer Kesim', N'B-9271', 1)
INSERT [dbo].[MakinelerTablosu] ([MakineID], [MakineAdi], [MakineKodu], [OperasyonID]) VALUES (1025, N'Sulu Rodaj', N'B9-21AS', 3)
INSERT [dbo].[MakinelerTablosu] ([MakineID], [MakineAdi], [MakineKodu], [OperasyonID]) VALUES (1026, N'Deneme', N'AB-Deneme', 10)
INSERT [dbo].[MakinelerTablosu] ([MakineID], [MakineAdi], [MakineKodu], [OperasyonID]) VALUES (1030, N'Deneme 3', N'DE-Deneme', 6)
INSERT [dbo].[MakinelerTablosu] ([MakineID], [MakineAdi], [MakineKodu], [OperasyonID]) VALUES (1031, N'Deneme 4', N'FG-Deneme', 11)
INSERT [dbo].[MakinelerTablosu] ([MakineID], [MakineAdi], [MakineKodu], [OperasyonID]) VALUES (1032, N'NULL', N'TESTNULL', 15)
INSERT [dbo].[MakinelerTablosu] ([MakineID], [MakineAdi], [MakineKodu], [OperasyonID]) VALUES (1043, N'32', N'2', 6)
SET IDENTITY_INSERT [dbo].[MakinelerTablosu] OFF
SET IDENTITY_INSERT [dbo].[OperasyonlarTablosu] ON 

INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (1, N'Kesim')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (2, N'Rodaj')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (3, N'Taşıma')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (5, N'Kristalleştirme')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (6, N'Islatma')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (9, N'Deneme 1')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (10, N'Deneme 2')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (11, N'Deneme 3')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (13, N'Deneme 4')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (15, N'Deneme 5')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (18, N'Deneme 6')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (22, N'Deneme 7')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (24, N'Deneme 8')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (35, N'Deneme 9')
INSERT [dbo].[OperasyonlarTablosu] ([OperasyonID], [OperasyonAdi]) VALUES (39, N'Kesim')
SET IDENTITY_INSERT [dbo].[OperasyonlarTablosu] OFF
SET IDENTITY_INSERT [dbo].[Operator] ON 

INSERT [dbo].[Operator] ([OperatorID], [Ad], [Soyad], [TCKimlik], [DogumTarihi], [SicilNo], [IseBaslangicTarihi], [IstenCikisTarihi], [DurumAP]) VALUES (1003, N'arnold', N'shwarzeneger', NULL, CAST(N'1990-01-31T14:52:00.000' AS DateTime), N'3454', CAST(N'2019-07-12T14:52:46.000' AS DateTime), CAST(N'2019-07-18T16:26:17.417' AS DateTime), 0)
INSERT [dbo].[Operator] ([OperatorID], [Ad], [Soyad], [TCKimlik], [DogumTarihi], [SicilNo], [IseBaslangicTarihi], [IstenCikisTarihi], [DurumAP]) VALUES (1004, N'batu', N'ozkoc', NULL, CAST(N'1997-08-29T00:00:00.000' AS DateTime), N'66565', CAST(N'2019-07-12T14:52:46.000' AS DateTime), CAST(N'2019-07-18T16:25:33.383' AS DateTime), 0)
INSERT [dbo].[Operator] ([OperatorID], [Ad], [Soyad], [TCKimlik], [DogumTarihi], [SicilNo], [IseBaslangicTarihi], [IstenCikisTarihi], [DurumAP]) VALUES (1005, N'asd', N'asd', NULL, CAST(N'2019-08-12T14:52:00.000' AS DateTime), N'12345333', CAST(N'2019-07-12T14:52:46.000' AS DateTime), NULL, 1)
INSERT [dbo].[Operator] ([OperatorID], [Ad], [Soyad], [TCKimlik], [DogumTarihi], [SicilNo], [IseBaslangicTarihi], [IstenCikisTarihi], [DurumAP]) VALUES (1006, N'jjhjhj', N'hjhjhj', NULL, CAST(N'2019-08-12T14:52:00.000' AS DateTime), N'555', CAST(N'2019-07-12T14:52:46.000' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Operator] OFF
SET IDENTITY_INSERT [dbo].[UrunTablosu] ON 

INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (1, N'Fiber Cam ', N'Fiber Glass Cam ', N'IE420', 26, 13)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (3, N'Solar Cam ', N'solar cam aciklamasi 1denemepoıp', N'IB484', 35, 160)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (4, N'Deneme Cam', N'Deneme???', N'IEEE544', 133, 2133)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (7, N'Deneme', N'Deneme 2', N'ADSAD', 55, 55)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (10, N'123       ', N'IEEE544', N'IEE544,,,', 90, 78)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (11, N'123,,     ', N'IEEE544,,', N'IEE544,,,,', 90, 78)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (13, N'3rt       ', N'ert', N'erter', 54, 55)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (14, N'123,,     ', N'IEEE544,,', N'IEE544,,,,k', 90, 78)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (15, N'asd       ', N'asdasd', N'asdasd', 33, 22)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (16, N'asd       ', N'asdasd', N'asdasdd', 33, 22)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (17, N'asd       ', N'asdasd', N'asdasddd', 33, 22)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (18, N'asd       ', N'asdasd', N'asdasdddd
asd', 33, 22)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (19, N'asd       ', N'asdasd', N'23123', 33, 22)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (20, N'asd       ', N'asdasd', N'f35f', 33, 22)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (24, N'21        ', N'32', N'1d23', 345, 345)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (25, N'21123123  ', N'323123', N'1d233', 345, 345)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (26, N'21123123  ', N'323123', N'1d2334', 345, 345)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (28, N'21123123  ', N'323123', N'1d233456', 345, 345)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (31, N'dh        ', N'bhg', N'bdhg', 456, 546)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (32, N'dh        ', N'bhg', N'bfgddbh', 456, 546)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (33, N'dh        ', N'bhg', N'zxczxc', 456, 546)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (34, N'dh        ', N'bhg', N'xcbxcb', 456, 546)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (35, N'dh        ', N'bhg', N'mönçmç', 456, 546)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (36, N'nmçmnöç   ', N'nmçmöç', N'möçjkjkhjk', 456, 888)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (37, N'shsh      ', N'shshsh', N'sjshsh', 345354, 4535)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (38, N'qweqwe    ', N'dfg', N'fdgfdg', 33, 33)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (40, N'234234    ', N'232423', N'2343', 44, 44)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (41, N'234       ', N'324', N'54rretetr', 234, 234)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (42, N'jh        ', N'sdf', N'sdf', 33, 33)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (43, N'789', N'789', N'789', 789, 789)
INSERT [dbo].[UrunTablosu] ([UrunID], [UrunAdi], [UrunAciklama], [UrunKodu], [En], [Boy]) VALUES (44, N'sdfsdfsdf', N'sfsdfsdf', N's', 333, 333)
SET IDENTITY_INSERT [dbo].[UrunTablosu] OFF
ALTER TABLE [dbo].[AdminSistemRaporu]  WITH CHECK ADD  CONSTRAINT [FK_AdminSistemRaporu_Admin] FOREIGN KEY([AdminID])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[AdminSistemRaporu] CHECK CONSTRAINT [FK_AdminSistemRaporu_Admin]
GO
ALTER TABLE [dbo].[DurusRaporTablosu]  WITH CHECK ADD  CONSTRAINT [FK_DurusRaporTablosu_DurusTablosu] FOREIGN KEY([DurusID])
REFERENCES [dbo].[DurusTablosu] ([DurusID])
GO
ALTER TABLE [dbo].[DurusRaporTablosu] CHECK CONSTRAINT [FK_DurusRaporTablosu_DurusTablosu]
GO
ALTER TABLE [dbo].[DurusRaporTablosu]  WITH CHECK ADD  CONSTRAINT [FK_DurusRaporTablosu_Operator] FOREIGN KEY([OperatorID])
REFERENCES [dbo].[Operator] ([OperatorID])
GO
ALTER TABLE [dbo].[DurusRaporTablosu] CHECK CONSTRAINT [FK_DurusRaporTablosu_Operator]
GO
ALTER TABLE [dbo].[MakinelerTablosu]  WITH CHECK ADD  CONSTRAINT [FK_MakinelerTablosu_OperasyonlarTablosu] FOREIGN KEY([OperasyonID])
REFERENCES [dbo].[OperasyonlarTablosu] ([OperasyonID])
GO
ALTER TABLE [dbo].[MakinelerTablosu] CHECK CONSTRAINT [FK_MakinelerTablosu_OperasyonlarTablosu]
GO
ALTER TABLE [dbo].[PlanTablosu]  WITH CHECK ADD  CONSTRAINT [FK_PlanTablosu_AliciTablosu] FOREIGN KEY([AliciID])
REFERENCES [dbo].[AliciTablosu] ([AliciID])
GO
ALTER TABLE [dbo].[PlanTablosu] CHECK CONSTRAINT [FK_PlanTablosu_AliciTablosu]
GO
ALTER TABLE [dbo].[PlanTablosu]  WITH CHECK ADD  CONSTRAINT [FK_PlanTablosu_MakinelerTablosu] FOREIGN KEY([MakinaID])
REFERENCES [dbo].[MakinelerTablosu] ([MakineID])
GO
ALTER TABLE [dbo].[PlanTablosu] CHECK CONSTRAINT [FK_PlanTablosu_MakinelerTablosu]
GO
ALTER TABLE [dbo].[PlanTablosu]  WITH CHECK ADD  CONSTRAINT [FK_PlanTablosu_SiparisTablosu] FOREIGN KEY([SiparisID])
REFERENCES [dbo].[SiparisTablosu] ([SiparisID])
GO
ALTER TABLE [dbo].[PlanTablosu] CHECK CONSTRAINT [FK_PlanTablosu_SiparisTablosu]
GO
ALTER TABLE [dbo].[PlanTablosu]  WITH CHECK ADD  CONSTRAINT [FK_PlanTablosu_UrunTablosu] FOREIGN KEY([UrunID])
REFERENCES [dbo].[UrunTablosu] ([UrunID])
GO
ALTER TABLE [dbo].[PlanTablosu] CHECK CONSTRAINT [FK_PlanTablosu_UrunTablosu]
GO
ALTER TABLE [dbo].[SiparisTablosu]  WITH CHECK ADD  CONSTRAINT [FK_SiparisTablosu_AliciTablosu] FOREIGN KEY([AliciID])
REFERENCES [dbo].[AliciTablosu] ([AliciID])
GO
ALTER TABLE [dbo].[SiparisTablosu] CHECK CONSTRAINT [FK_SiparisTablosu_AliciTablosu]
GO
ALTER TABLE [dbo].[SiparisTablosu]  WITH CHECK ADD  CONSTRAINT [FK_SiparisTablosu_UrunTablosu] FOREIGN KEY([UrunID])
REFERENCES [dbo].[UrunTablosu] ([UrunID])
GO
ALTER TABLE [dbo].[SiparisTablosu] CHECK CONSTRAINT [FK_SiparisTablosu_UrunTablosu]
GO
ALTER TABLE [dbo].[UretimRapor]  WITH CHECK ADD  CONSTRAINT [FK_UretimRapor_AliciTablosu] FOREIGN KEY([AliciID])
REFERENCES [dbo].[AliciTablosu] ([AliciID])
GO
ALTER TABLE [dbo].[UretimRapor] CHECK CONSTRAINT [FK_UretimRapor_AliciTablosu]
GO
ALTER TABLE [dbo].[UretimRapor]  WITH CHECK ADD  CONSTRAINT [FK_UretimRapor_MakinelerTablosu] FOREIGN KEY([MakineID])
REFERENCES [dbo].[MakinelerTablosu] ([MakineID])
GO
ALTER TABLE [dbo].[UretimRapor] CHECK CONSTRAINT [FK_UretimRapor_MakinelerTablosu]
GO
ALTER TABLE [dbo].[UretimRapor]  WITH CHECK ADD  CONSTRAINT [FK_UretimRapor_Operator] FOREIGN KEY([OperatorID])
REFERENCES [dbo].[Operator] ([OperatorID])
GO
ALTER TABLE [dbo].[UretimRapor] CHECK CONSTRAINT [FK_UretimRapor_Operator]
GO
ALTER TABLE [dbo].[UretimRapor]  WITH CHECK ADD  CONSTRAINT [FK_UretimRapor_PlanTablosu] FOREIGN KEY([PlanID])
REFERENCES [dbo].[PlanTablosu] ([PlanID])
GO
ALTER TABLE [dbo].[UretimRapor] CHECK CONSTRAINT [FK_UretimRapor_PlanTablosu]
GO
ALTER TABLE [dbo].[UretimRapor]  WITH CHECK ADD  CONSTRAINT [FK_UretimRapor_SiparisTablosu] FOREIGN KEY([SiparisID])
REFERENCES [dbo].[SiparisTablosu] ([SiparisID])
GO
ALTER TABLE [dbo].[UretimRapor] CHECK CONSTRAINT [FK_UretimRapor_SiparisTablosu]
GO
ALTER TABLE [dbo].[UretimRapor]  WITH CHECK ADD  CONSTRAINT [FK_UretimRapor_UrunTablosu] FOREIGN KEY([UrunID])
REFERENCES [dbo].[UrunTablosu] ([UrunID])
GO
ALTER TABLE [dbo].[UretimRapor] CHECK CONSTRAINT [FK_UretimRapor_UrunTablosu]
GO
/****** Object:  StoredProcedure [dbo].[PRC_AliciDelete]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PRC_AliciDelete]

@AliciID nvarchar(MAX)

as
begin

DELETE from AliciTablosu where AliciID=@AliciID

end
GO
/****** Object:  StoredProcedure [dbo].[PRC_AliciInsertSelect]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PRC_AliciInsertSelect]

@aliciid int
as
begin

SELECT * FROM AliciTablosu with(nolock) where AliciID=@aliciid

end
GO
/****** Object:  StoredProcedure [dbo].[PRC_AliciSelect]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[PRC_AliciSelect]

as
begin

SELECT * FROM AliciTablosu with(nolock)

end
GO
/****** Object:  StoredProcedure [dbo].[PRC_DurusInsertSelect]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PRC_DurusInsertSelect]

@durusid int
as
begin

SELECT * FROM DurusTablosu with(nolock) where DurusID=@durusid

end
GO
/****** Object:  StoredProcedure [dbo].[PRC_DurusSelect]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PRC_DurusSelect]

as
begin

SELECT * FROM DurusTablosu with(nolock)

end
GO
/****** Object:  StoredProcedure [dbo].[PRC_MakineDelete]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PRC_MakineDelete]

@makineid nvarchar(MAX)

as
begin

DELETE from MakinelerTablosu where MakineID=@makineid

end
GO
/****** Object:  StoredProcedure [dbo].[PRC_MakineKontrol]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[PRC_MakineKontrol]

@makinekodu nvarchar(MAX)

as
begin

SELECT * FROM MakinelerTablosu with (nolock) where MakineKodu=@makinekodu 

end
GO
/****** Object:  StoredProcedure [dbo].[PRC_MakineUpdate]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PRC_MakineUpdate] 


@makineadi nvarchar(MAX),
@makinekodu nvarchar(MAX),
@opid int,
@makineid int
as
begin

UPDATE MakinelerTablosu
SET MakineAdi=@makineadi,MakineKodu=@makinekodu,OperasyonID=@opid 
where MakineID=@makineid

end

GO
/****** Object:  StoredProcedure [dbo].[PRC_MakineUpdateKontrol]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[PRC_MakineUpdateKontrol]

@makineid nvarchar(MAX)

as
begin

SELECT * FROM MakinelerTablosu with (nolock) where MakineID=@makineid 

end
GO
/****** Object:  StoredProcedure [dbo].[PRC_OPERASYON]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PRC_OPERASYON] 
as

SELECT * FROM OperasyonlarTablosu with(nolock)
GO
/****** Object:  StoredProcedure [dbo].[PRC_OperasyonSelect]    Script Date: 4.01.2021 20:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PRC_OperasyonSelect]

@opid int
as
begin
SELECT * from OperasyonlarTablosu with (nolock) where OperasyonID=@opid
end
GO
USE [master]
GO
ALTER DATABASE [MAS2019] SET  READ_WRITE 
GO
