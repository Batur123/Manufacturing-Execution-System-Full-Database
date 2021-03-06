USE [master]
GO
/****** Object:  Database [MAS2019]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[Admin]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[AdminSistemRaporu]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[AliciTablosu]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[DurusRaporTablosu]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[DurusTablosu]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[MakinelerTablosu]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[OperasyonlarTablosu]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[Operator]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[PlanTablosu]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[Rapor]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[SiparisTablosu]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[UretimRapor]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  Table [dbo].[UrunTablosu]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  StoredProcedure [dbo].[PRC_AliciDelete]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  StoredProcedure [dbo].[PRC_AliciInsertSelect]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  StoredProcedure [dbo].[PRC_AliciSelect]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  StoredProcedure [dbo].[PRC_DurusInsertSelect]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  StoredProcedure [dbo].[PRC_DurusSelect]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  StoredProcedure [dbo].[PRC_MakineDelete]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  StoredProcedure [dbo].[PRC_MakineKontrol]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  StoredProcedure [dbo].[PRC_MakineUpdate]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  StoredProcedure [dbo].[PRC_MakineUpdateKontrol]    Script Date: 4.01.2021 20:49:44 ******/
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
/****** Object:  StoredProcedure [dbo].[PRC_OPERASYON]    Script Date: 4.01.2021 20:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PRC_OPERASYON] 
as

SELECT * FROM OperasyonlarTablosu with(nolock)
GO
/****** Object:  StoredProcedure [dbo].[PRC_OperasyonSelect]    Script Date: 4.01.2021 20:49:44 ******/
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
