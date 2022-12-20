USE [master]
GO
/****** Object:  Database [DB_Bilgi_Hotel]    Script Date: 15.11.2022 20:06:32 ******/
CREATE DATABASE [DB_Bilgi_Hotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Bilgi_Hotel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_Bilgi_Hotel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Bilgi_Hotel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_Bilgi_Hotel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Bilgi_Hotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_Bilgi_Hotel', N'ON'
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET QUERY_STORE = OFF
GO
USE [DB_Bilgi_Hotel]
GO
/****** Object:  Table [dbo].[tbl_Cinsiyet]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cinsiyet](
	[CinsiyetId] [int] IDENTITY(1,1) NOT NULL,
	[CinsiyetAd] [nvarchar](20) NOT NULL,
	[CinsiyetAciklama] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[CinsiyetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Diller]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Diller](
	[DilId] [int] IDENTITY(1,1) NOT NULL,
	[DilAd] [nvarchar](150) NOT NULL,
	[DilAciklama] [nvarchar](400) NULL,
	[DilKod] [nvarchar](3) NOT NULL,
 CONSTRAINT [PK__tbl_Dill__F01A3CDEA53A5987] PRIMARY KEY CLUSTERED 
(
	[DilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DurumKategori]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DurumKategori](
	[DurumKategoriId] [int] NOT NULL,
	[DurumKategoriAd] [nvarchar](150) NOT NULL,
	[DurumKategoriAciklama] [nvarchar](400) NULL,
 CONSTRAINT [PK_tbl_DurumKategori] PRIMARY KEY CLUSTERED 
(
	[DurumKategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Gorevler]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Gorevler](
	[GorevId] [int] IDENTITY(1,1) NOT NULL,
	[GorevAd] [nvarchar](150) NOT NULL,
	[GorevAciklama] [nvarchar](400) NULL,
	[GorevIsTanimi] [nvarchar](400) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GorevId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Il]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Il](
	[IlId] [int] IDENTITY(1,1) NOT NULL,
	[IlAd] [nvarchar](50) NOT NULL,
	[IlAciklama] [nvarchar](150) NULL,
	[UlkeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Ilce]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Ilce](
	[IlceId] [int] IDENTITY(1,1) NOT NULL,
	[IlceAd] [nvarchar](50) NOT NULL,
	[IlceAciklama] [nvarchar](150) NULL,
	[IlId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IlceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Kampanyalar]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kampanyalar](
	[KampanyaId] [int] IDENTITY(1,1) NOT NULL,
	[KampanyaBilgileri] [nvarchar](400) NOT NULL,
	[KampanyaIndirimOran] [int] NOT NULL,
	[KampanyaBaslangicZaman] [datetime] NOT NULL,
	[KampanyaBitisTarihi] [datetime] NOT NULL,
	[KampanyaTanim] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KampanyaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KampanyaOda]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KampanyaOda](
	[KampanyaId] [int] NOT NULL,
	[OdaId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_KampanyaOda] PRIMARY KEY CLUSTERED 
(
	[KampanyaId] ASC,
	[OdaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KartBilgileri]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KartBilgileri](
	[KartId] [int] IDENTITY(1,1) NOT NULL,
	[OdaId] [int] NOT NULL,
	[KartAktifMi] [bit] NOT NULL,
	[PersonelId] [int] NOT NULL,
	[MisafirId] [int] NOT NULL,
	[KartVerilisTarihi] [datetime] NOT NULL,
	[KartAlisTarihi] [datetime] NULL,
	[KartIslemAciklama] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[KartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KonaklamaTipi]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KonaklamaTipi](
	[KonaklamaTipNo] [int] IDENTITY(1,1) NOT NULL,
	[KonaklamaTipAd] [nvarchar](150) NOT NULL,
	[KonaklamaTipAciklama] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[KonaklamaTipNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Kullanici]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kullanici](
	[KullaniciId] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciTipiId] [int] NOT NULL,
	[KullaniciAd] [nvarchar](150) NOT NULL,
	[KullaniciParola] [nvarchar](50) NOT NULL,
	[KullaniciEposta] [nvarchar](250) NOT NULL,
	[KullaniciEpostaOnayKod] [nvarchar](250) NOT NULL,
	[KullaniciEpostaOnay] [bit] NOT NULL,
	[KullaniciKayıtTarihi] [datetime] NOT NULL,
	[KullaniciSonGirisTarihi] [datetime] NOT NULL,
	[DilId] [int] NOT NULL,
	[ResimId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KullaniciMusteri]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KullaniciMusteri](
	[KullaniciId] [int] NOT NULL,
	[MusteriId] [int] NOT NULL,
	[YetkiId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_KullaniciMusteri] PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC,
	[MusteriId] ASC,
	[YetkiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KullaniciPersonel]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KullaniciPersonel](
	[PersonelId] [int] NOT NULL,
	[KullaniciId] [int] NOT NULL,
	[YetkiId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_KullaniciPersonel] PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC,
	[KullaniciId] ASC,
	[YetkiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KullaniciTipi]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KullaniciTipi](
	[KullaniciTipiId] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciTipiTanim] [nvarchar](150) NOT NULL,
	[KullaniciTipiAciklama] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[KullaniciTipiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MesaiPersonel]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MesaiPersonel](
	[MesaiId] [int] IDENTITY(1,1) NOT NULL,
	[MesaiBaslangicTarihi] [datetime] NOT NULL,
	[MesaiBitisTarihi] [datetime] NULL,
	[PersonelId] [int] NOT NULL,
	[MesaiSaatFark] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MesaiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Misafir]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Misafir](
	[MisafirId] [int] IDENTITY(1,1) NOT NULL,
	[MisafirAd] [nvarchar](150) NOT NULL,
	[MisafirSoyad] [nvarchar](150) NOT NULL,
	[MisafirTcKimlik] [nvarchar](20) NOT NULL,
	[MisafirDogumTarihi] [datetime] NOT NULL,
	[MisafirUyrukId] [int] NOT NULL,
	[MisafirEposta] [nvarchar](250) NULL,
	[MisafirTelefon] [nvarchar](20) NOT NULL,
	[MisafirPasaportNo] [nvarchar](20) NULL,
	[CinsiyetId] [int] NOT NULL,
	[MisafirAdres] [nvarchar](400) NULL,
	[IlId] [int] NOT NULL,
	[IlceId] [int] NOT NULL,
	[UlkeId] [int] NOT NULL,
	[MisafirAciklama] [nvarchar](400) NULL,
	[MisafirHesKod] [nvarchar](20) NOT NULL,
	[dilId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MisafirId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MisafirOda]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MisafirOda](
	[MisafirId] [int] NOT NULL,
	[OdaId] [int] NOT NULL,
	[SatisId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_MisafirOda] PRIMARY KEY CLUSTERED 
(
	[MisafirId] ASC,
	[OdaId] ASC,
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MisafirPersonel]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MisafirPersonel](
	[MisafirId] [int] NOT NULL,
	[PersonelId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_MisafirPersonel] PRIMARY KEY CLUSTERED 
(
	[MisafirId] ASC,
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Musteriler]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Musteriler](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriAd] [nvarchar](150) NULL,
	[MusteriSoyad] [nvarchar](150) NULL,
	[MusteriTCKimlik] [nvarchar](20) NULL,
	[MusteriPasaportNo] [nvarchar](20) NULL,
	[MusteriUnvan] [nvarchar](150) NULL,
	[MusteriYetkiliAdSoyad] [nvarchar](150) NULL,
	[MusteriVergiNo] [nvarchar](20) NULL,
	[MusteriVergiDairesi] [nvarchar](50) NULL,
	[MusteriTelefon] [nvarchar](20) NULL,
	[MusteriPosta] [nvarchar](250) NULL,
	[MusteriAdres] [nvarchar](400) NULL,
	[IlID] [int] NULL,
	[IlceID] [int] NULL,
	[UlkeID] [int] NULL,
	[MusteriAciklama] [nvarchar](400) NULL,
	[MusteriKurumsalOK] [bit] NULL,
	[DilID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MusteriMisafirsatis]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MusteriMisafirsatis](
	[MusteriId] [int] NOT NULL,
	[MisafirId] [int] NOT NULL,
	[SatisId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_MusteriMisafirsatis] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC,
	[MisafirId] ASC,
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MusteriPersonel]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MusteriPersonel](
	[MusteriId] [int] NOT NULL,
	[PersonelId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_MusteriPersonel] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC,
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MusteriRezervasyon]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MusteriRezervasyon](
	[MusteriId] [int] NOT NULL,
	[RezervasyonId] [int] NOT NULL,
	[MisafirId] [int] NOT NULL,
	[OdaId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_MusteriRezervasyon] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC,
	[RezervasyonId] ASC,
	[MisafirId] ASC,
	[OdaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OdaDurum]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OdaDurum](
	[OdaId] [int] NOT NULL,
	[DurumKategoriId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_OdaDurum] PRIMARY KEY CLUSTERED 
(
	[OdaId] ASC,
	[DurumKategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Odalar]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Odalar](
	[OdaId] [int] IDENTITY(1,1) NOT NULL,
	[OdaTipiId] [int] NOT NULL,
	[OdaFiyat] [decimal](8, 2) NOT NULL,
	[OdaYatakTipi] [nvarchar](50) NOT NULL,
	[OdaMiniBarOk] [bit] NOT NULL,
	[OdaKlimaOk] [bit] NOT NULL,
	[OdaKurutmaOk] [bit] NOT NULL,
	[OdaWifiOk] [bit] NOT NULL,
	[OdaKasaOk] [bit] NOT NULL,
	[OdaBalkonOk] [bit] NOT NULL,
	[OdaTvOk] [bit] NOT NULL,
	[OdaAciklama] [nvarchar](400) NOT NULL,
	[OdaEbatBoyut] [nvarchar](20) NOT NULL,
	[OdaNo] [nvarchar](10) NOT NULL,
	[OdaKat] [int] NOT NULL,
 CONSTRAINT [PK__tbl_Odal__190B1E6920F478DA] PRIMARY KEY CLUSTERED 
(
	[OdaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OdaResimler]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OdaResimler](
	[OdaId] [int] NOT NULL,
	[ResimId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_OdaResimler] PRIMARY KEY CLUSTERED 
(
	[OdaId] ASC,
	[ResimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OdaSatisTip]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OdaSatisTip](
	[OdaSatisTip] [int] IDENTITY(1,1) NOT NULL,
	[OdaSatisTipAd] [nvarchar](150) NOT NULL,
	[OdaSatisTipAciklama] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[OdaSatisTip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OdaTipi]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OdaTipi](
	[OdaTipiId] [int] IDENTITY(1,1) NOT NULL,
	[OdaTipiAd] [nvarchar](150) NOT NULL,
	[OdaTipiAciklama] [nvarchar](400) NULL,
 CONSTRAINT [PK__tbl_OdaT__5B3C4536DB8B25EE] PRIMARY KEY CLUSTERED 
(
	[OdaTipiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Personel]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Personel](
	[PersonelId] [int] IDENTITY(1,1) NOT NULL,
	[PersonelAd] [nvarchar](150) NOT NULL,
	[PersonelSoyad] [nvarchar](150) NOT NULL,
	[PersonelTcKimlik] [nvarchar](15) NOT NULL,
	[PersonelDogumTarihi] [datetime] NOT NULL,
	[PersonelUyrukId] [int] NOT NULL,
	[PersonelEposta] [nvarchar](250) NOT NULL,
	[PersonelTelefon] [nvarchar](20) NOT NULL,
	[PersonelPasaportNo] [nvarchar](20) NULL,
	[CinsiyetId] [int] NOT NULL,
	[PersonelIseGirisTarihi] [datetime] NOT NULL,
	[PersonelIstenCikisTarihi] [datetime] NULL,
	[PersonelSaatlikUcret] [decimal](8, 2) NOT NULL,
	[PersonelMaas] [decimal](8, 2) NOT NULL,
	[PersonelSicilNo] [nvarchar](50) NOT NULL,
	[GorevId] [int] NOT NULL,
	[PersonelKategoriID] [int] NOT NULL,
	[PersonelEngelDurumu] [bit] NOT NULL,
	[PersonelHesKodu] [nvarchar](20) NOT NULL,
	[IlId] [int] NOT NULL,
	[IlceId] [int] NOT NULL,
	[UlkeId] [int] NOT NULL,
	[PersonelAdres] [nvarchar](250) NOT NULL,
	[PersonelAcilDurumKisiAd] [nvarchar](150) NULL,
	[PersonelAcilDurumKisiTelefon] [nvarchar](20) NULL,
	[ResimId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PersonelDiller]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PersonelDiller](
	[PersonelId] [int] IDENTITY(1,1) NOT NULL,
	[DilId] [int] NOT NULL,
 CONSTRAINT [PK__tbl_Pers__0F0C573197EB96AB] PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC,
	[DilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PersonelKategori]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PersonelKategori](
	[PersonelKategoriId] [int] IDENTITY(1,1) NOT NULL,
	[PersonelKategoriTip] [nvarchar](150) NOT NULL,
	[Aciklama] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonelKategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PersonelOda]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PersonelOda](
	[PersonelId] [int] NOT NULL,
	[OdaId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_PersonelOda] PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC,
	[OdaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PersonelVardiya]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PersonelVardiya](
	[VardiyaId] [int] NOT NULL,
	[PersonelId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_PersonelVardiya] PRIMARY KEY CLUSTERED 
(
	[VardiyaId] ASC,
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PersonelYetki]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PersonelYetki](
	[PersonelID] [int] NOT NULL,
	[YetkiID] [int] NOT NULL,
	[PersonelYetkiEnSonGirisTarihi] [datetime] NOT NULL,
	[PersonelYetkiAciklama] [nvarchar](250) NULL,
	[PersonelYetkiAktifMi] [bit] NULL,
 CONSTRAINT [PK_tbl_PersonelYetki] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC,
	[YetkiID] ASC,
	[PersonelYetkiEnSonGirisTarihi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Resimler]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Resimler](
	[ResimId] [int] IDENTITY(1,1) NOT NULL,
	[ResimUrlAdres] [nvarchar](250) NOT NULL,
	[ResimAciklama] [nvarchar](150) NULL,
	[ResimAktifOk] [bit] NOT NULL,
	[ResimAlternatifText] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Rezervasyon]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Rezervasyon](
	[RezervasyonId] [int] IDENTITY(1,1) NOT NULL,
	[MusteriId] [int] NOT NULL,
	[RezervasyonGecerlilikTarihi] [datetime] NOT NULL,
	[RezervasyonGecerlilikSonTarihi] [datetime] NOT NULL,
	[ErkenRezervasyonIndirim] [int] NULL,
	[RezervasyonTipiId] [int] NOT NULL,
	[RezervasyonAciklama] [nvarchar](400) NOT NULL,
	[RezervasyonIptalOk] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RezervasyonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RezervasyonPersonel]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RezervasyonPersonel](
	[RezervasyonId] [int] NOT NULL,
	[PersonelId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_RezervasyonPersonel] PRIMARY KEY CLUSTERED 
(
	[RezervasyonId] ASC,
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RezervasyonTip]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RezervasyonTip](
	[RezervasyonTipId] [int] IDENTITY(1,1) NOT NULL,
	[RezervasyonTanım] [nvarchar](150) NOT NULL,
	[RezervasyonAciklama] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[RezervasyonTipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Satis]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Satis](
	[SatisId] [int] IDENTITY(1,1) NOT NULL,
	[SatisOdaGirisTarihi] [datetime] NOT NULL,
	[SatisOdaCikisTarihi] [datetime] NULL,
	[SatisIndirim] [int] NULL,
	[KartId] [int] NULL,
	[OdaId] [int] NOT NULL,
	[OdaSatisDurum] [bit] NULL,
	[OdaSatisTutar] [decimal](8, 2) NULL,
	[OdaSatisKDV] [int] NULL,
	[OdaSatisOdemeTipiId] [int] NULL,
 CONSTRAINT [PK__tbl_Sati__80CB4CDF3E8FF9DD] PRIMARY KEY CLUSTERED 
(
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SatisPersonel]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SatisPersonel](
	[PersonelId] [int] NOT NULL,
	[SatisId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_SatisPersonel] PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC,
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Ulke]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Ulke](
	[UlkeId] [int] IDENTITY(1,1) NOT NULL,
	[UlkeAd] [nvarchar](75) NOT NULL,
	[UlkeKisaKod] [nvarchar](5) NULL,
	[UlkeTelefonKod] [nvarchar](5) NULL,
 CONSTRAINT [PK__tbl_Ulke__DDFD2CE2A6A914A0] PRIMARY KEY CLUSTERED 
(
	[UlkeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Vardiya]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Vardiya](
	[VardiyaId] [int] IDENTITY(1,1) NOT NULL,
	[VardiyaTipi] [nvarchar](150) NOT NULL,
	[VardiyaBaslangicSaati] [time](7) NOT NULL,
	[VardiyaBitisSaati] [time](7) NOT NULL,
 CONSTRAINT [PK__tbl_Vard__65D888849363BD7D] PRIMARY KEY CLUSTERED 
(
	[VardiyaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Yetkiler]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Yetkiler](
	[YetkiId] [int] IDENTITY(1,1) NOT NULL,
	[YetkiAd] [nvarchar](150) NOT NULL,
	[YetkiAciklama] [nvarchar](400) NULL,
	[YetkiGuvenlikKod] [nvarchar](250) NOT NULL,
	[YetkiAccessKod] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[YetkiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Cinsiyet] ON 
GO
INSERT [dbo].[tbl_Cinsiyet] ([CinsiyetId], [CinsiyetAd], [CinsiyetAciklama]) VALUES (1, N'BAY', N'BAY')
GO
INSERT [dbo].[tbl_Cinsiyet] ([CinsiyetId], [CinsiyetAd], [CinsiyetAciklama]) VALUES (2, N'BAYAN', N'BAYAN')
GO
INSERT [dbo].[tbl_Cinsiyet] ([CinsiyetId], [CinsiyetAd], [CinsiyetAciklama]) VALUES (3, N'BELİRTMEK İSTEMİYOR', N'BELİRTMEK İSTEMİYOR')
GO
INSERT [dbo].[tbl_Cinsiyet] ([CinsiyetId], [CinsiyetAd], [CinsiyetAciklama]) VALUES (4, N'DİĞER', N'DİĞER')
GO
SET IDENTITY_INSERT [dbo].[tbl_Cinsiyet] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Diller] ON 
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (1, N'Türkçe', N'Türkçe Dili', N'TR')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (2, N'İngilizce', N'İngiliz Dili', N'EN')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (3, N'Almanca', N'Alman Dili', N'GR')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (4, N'Fransızca', N'Fransa Dİli', N'FR')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (5, N'Çince', N'Çin Dili', N'CH')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (6, N'Arapça', N'Arap Dili', N'AR')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (7, N'Rusça', N'Rus Dili', N'RU')
GO
SET IDENTITY_INSERT [dbo].[tbl_Diller] OFF
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (1, N'Müsait', N'Oda Satış İçin Müsait')
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (2, N'Temizleniyor', N'Oda Temizleniyor')
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (3, N'Tadilat', N'Oda Tadilat da')
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (4, N'Özel Rezervasyon', N'Oda Özel Amaçlı Rezerve Edilmiş')
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (5, N'Denetlemede', N'Oda Deneteleme Durumunda')
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (6, N'Kullanımda', N'Oda Dolu')
GO
SET IDENTITY_INSERT [dbo].[tbl_Gorevler] ON 
GO
INSERT [dbo].[tbl_Gorevler] ([GorevId], [GorevAd], [GorevAciklama], [GorevIsTanimi]) VALUES (1, N'Admin', N'Admin', N'Admin')
GO
INSERT [dbo].[tbl_Gorevler] ([GorevId], [GorevAd], [GorevAciklama], [GorevIsTanimi]) VALUES (2, N'Resepsiyon', N'Resepsiyon', N'Resepsiyon')
GO
INSERT [dbo].[tbl_Gorevler] ([GorevId], [GorevAd], [GorevAciklama], [GorevIsTanimi]) VALUES (3, N'Muhasebe', N'Muhasebe', N'Muhasebe')
GO
INSERT [dbo].[tbl_Gorevler] ([GorevId], [GorevAd], [GorevAciklama], [GorevIsTanimi]) VALUES (4, N'Temizlik', N'Temizlik', N'Temizlik')
GO
INSERT [dbo].[tbl_Gorevler] ([GorevId], [GorevAd], [GorevAciklama], [GorevIsTanimi]) VALUES (5, N'İnsan Kaynakları', N'İnsan Kaynakları', N'İnsan Kaynakları')
GO
SET IDENTITY_INSERT [dbo].[tbl_Gorevler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Il] ON 
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (1, N'ADANA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (2, N'ADIYAMAN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (3, N'AFYON', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (4, N'AĞRI', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (5, N'AMASYA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (6, N'ANKARA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (7, N'ANTALYA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (8, N'ARTVİN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (9, N'AYDIN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (10, N'BALIKESİR', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (11, N'BİLECİK', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (12, N'BİNGÖL', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (13, N'BİTLİS', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (14, N'BOLU', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (15, N'BURDUR', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (16, N'BURSA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (17, N'ÇANAKKALE', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (18, N'ÇANKIRI', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (19, N'ÇORUM', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (20, N'DENİZLİ', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (21, N'DİYARBAKIR', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (22, N'EDİRNE', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (23, N'ELAZIĞ', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (24, N'ERZİNCAN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (25, N'ERZURUM', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (26, N'ESKİŞEHİR', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (27, N'GAZİANTEP', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (28, N'GİRESUN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (29, N'GÜMÜŞHANE', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (30, N'HAKKARİ', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (31, N'HATAY', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (32, N'ISPARTA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (33, N'İÇEL', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (34, N'İSTANBUL', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (35, N'İZMİR', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (36, N'KARS', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (37, N'KASTAMONU', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (38, N'KAYSERİ', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (39, N'KIRKLARELİ', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (40, N'KIRŞEHİR', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (41, N'KOCAELİ', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (42, N'KONYA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (43, N'KÜTAHYA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (44, N'MALATYA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (45, N'MANİSA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (46, N'KAHRAMANMARAŞ', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (47, N'MARDİN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (48, N'MUĞLA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (49, N'MUŞ', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (50, N'NEVŞEHİR', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (51, N'NİĞDE', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (52, N'ORDU', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (53, N'RİZE', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (54, N'SAKARYA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (55, N'SAMSUN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (56, N'SİİRT', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (57, N'SİNOP', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (58, N'SİVAS', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (59, N'TEKİRDAĞ', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (60, N'TOKAT', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (61, N'TRABZON', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (62, N'TUNCELİ', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (63, N'ŞANLIURFA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (64, N'UŞAK', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (65, N'VAN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (66, N'YOZGAT', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (67, N'ZONGULDAK', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (68, N'AKSARAY', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (69, N'BAYBURT', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (70, N'KARAMAN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (71, N'KIRIKKALE', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (72, N'BATMAN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (73, N'ŞIRNAK', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (74, N'BARTIN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (75, N'ARDAHAN', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (76, N'IĞDIR', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (77, N'YALOVA', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (78, N'KARABÜK', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (79, N'KİLİS', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (80, N'OSMANİYE', N'il Adı', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (81, N'DÜZCE', N'il Adı', 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Il] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Ilce] ON 
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (1, N'SEYHAN', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (2, N'CEYHAN', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (3, N'FEKE', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (4, N'KARAİSALI', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (5, N'KARATAŞ', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (6, N'KOZAN', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (7, N'POZANTI', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (8, N'SAİMBEYLİ', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (9, N'TUFANBEYLİ', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (10, N'YUMURTALIK', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (11, N'YÜREĞİR', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (12, N'ALADAĞ', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (13, N'İMAMOĞLU', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (14, N'ADIYAMAN MERKEZ', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (15, N'BESNİ', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (16, N'ÇELİKHAN', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (17, N'GERGER', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (18, N'GÖLBAŞI', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (19, N'KAHTA', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (20, N'SAMSAT', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (21, N'SİNCİK', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (22, N'TUT', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (23, N'AFYONMERKEZ', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (24, N'BOLVADİN', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (25, N'ÇAY', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (26, N'DAZKIRI', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (27, N'DİNAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (28, N'EMİRDAĞ', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (29, N'İHSANİYE', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (30, N'SANDIKLI', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (31, N'SİNANPAŞA', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (32, N'SULDANDAĞI', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (33, N'ŞUHUT', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (34, N'BAŞMAKÇI', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (35, N'BAYAT', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (36, N'İŞCEHİSAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (37, N'ÇOBANLAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (38, N'EVCİLER', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (39, N'HOCALAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (40, N'KIZILÖREN', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (41, N'AKSARAY MERKEZ', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (42, N'ORTAKÖY', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (43, N'AĞAÇÖREN', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (44, N'GÜZELYURT', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (45, N'SARIYAHŞİ', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (46, N'ESKİL', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (47, N'GÜLAĞAÇ', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (48, N'AMASYA MERKEZ', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (49, N'GÖYNÜÇEK', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (50, N'GÜMÜŞHACIKÖYÜ', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (51, N'MERZİFON', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (52, N'SULUOVA', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (53, N'TAŞOVA', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (54, N'HAMAMÖZÜ', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (55, N'ALTINDAĞ', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (56, N'AYAS', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (57, N'BALA', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (58, N'BEYPAZARI', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (59, N'ÇAMLIDERE', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (60, N'ÇANKAYA', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (61, N'ÇUBUK', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (62, N'ELMADAĞ', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (63, N'GÜDÜL', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (64, N'HAYMANA', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (65, N'KALECİK', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (66, N'KIZILCAHAMAM', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (67, N'NALLIHAN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (68, N'POLATLI', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (69, N'ŞEREFLİKOÇHİSAR', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (70, N'YENİMAHALLE', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (71, N'GÖLBAŞI', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (72, N'KEÇİÖREN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (73, N'MAMAK', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (74, N'SİNCAN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (75, N'KAZAN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (76, N'AKYURT', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (77, N'ETİMESGUT', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (78, N'EVREN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (79, N'ANSEKİ', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (80, N'ALANYA', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (81, N'ANTALYA MERKEZİ', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (82, N'ELMALI', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (83, N'FİNİKE', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (84, N'GAZİPAŞA', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (85, N'GÜNDOĞMUŞ', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (86, N'KAŞ', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (87, N'KORKUTELİ', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (88, N'KUMLUCA', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (89, N'MANAVGAT', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (90, N'SERİK', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (91, N'DEMRE', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (92, N'İBRADI', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (93, N'KEMER', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (94, N'ARDAHAN MERKEZ', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (95, N'GÖLE', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (96, N'ÇILDIR', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (97, N'HANAK', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (98, N'POSOF', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (99, N'DAMAL', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (100, N'ARDANUÇ', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (101, N'ARHAVİ', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (102, N'ARTVİN MERKEZ', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (103, N'BORÇKA', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (104, N'HOPA', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (105, N'ŞAVŞAT', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (106, N'YUSUFELİ', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (107, N'MURGUL', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (108, N'AYDIN MERKEZ', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (109, N'BOZDOĞAN', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (110, N'ÇİNE', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (111, N'GERMENCİK', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (112, N'KARACASU', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (113, N'KOÇARLI', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (114, N'KUŞADASI', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (115, N'KUYUCAK', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (116, N'NAZİLLİ', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (117, N'SÖKE', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (118, N'SULTANHİSAR', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (119, N'YENİPAZAR', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (120, N'BUHARKENT', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (121, N'İNCİRLİOVA', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (122, N'KARPUZLU', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (123, N'KÖŞK', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (124, N'DİDİM', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (125, N'AĞRI MERKEZ', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (126, N'DİYADİN', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (127, N'DOĞUBEYAZIT', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (128, N'ELEŞKİRT', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (129, N'HAMUR', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (130, N'PATNOS', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (131, N'TAŞLIÇAY', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (132, N'TUTAK', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (133, N'AYVALIK', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (134, N'BALIKESİR MERKEZ', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (135, N'BALYA', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (136, N'BANDIRMA', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (137, N'BİGADİÇ', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (138, N'BURHANİYE', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (139, N'DURSUNBEY', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (140, N'EDREMİT', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (141, N'ERDEK', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (142, N'GÖNEN', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (143, N'HAVRAN', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (144, N'İVRİNDİ', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (145, N'KEPSUT', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (146, N'MANYAS', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (147, N'SAVAŞTEPE', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (148, N'SINDIRGI', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (149, N'SUSURLUK', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (150, N'MARMARA', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (151, N'GÖMEÇ', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (152, N'BARTIN MERKEZ', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (153, N'KURUCAŞİLE', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (154, N'ULUS', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (155, N'AMASRA', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (156, N'BATMAN MERKEZ', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (157, N'BEŞİRİ', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (158, N'GERCÜŞ', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (159, N'KOZLUK', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (160, N'SASON', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (161, N'HASANKEYF', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (162, N'BAYBURT MERKEZ', N'Aciklama', 69)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (163, N'AYDINTEPE', N'Aciklama', 69)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (164, N'DEMİRÖZÜ', N'Aciklama', 69)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (165, N'BOLU MERKEZ', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (166, N'GEREDE', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (167, N'GÖYNÜK', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (168, N'KIBRISCIK', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (169, N'MENGEN', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (170, N'MUDURNU', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (171, N'SEBEN', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (172, N'DÖRTDİVAN', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (173, N'YENİÇAĞA', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (174, N'AĞLASUN', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (175, N'BUCAK', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (176, N'BURDUR MERKEZ', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (177, N'GÖLHİSAR', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (178, N'TEFENNİ', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (179, N'YEŞİLOVA', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (180, N'KARAMANLI', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (181, N'KEMER', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (182, N'ALTINYAYLA', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (183, N'ÇAVDIR', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (184, N'ÇELTİKÇİ', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (185, N'GEMLİK', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (186, N'İNEGÖL', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (187, N'İZNİK', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (188, N'KARACABEY', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (189, N'KELES', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (190, N'MUDANYA', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (191, N'MUSTAFA K. PAŞA', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (192, N'ORHANELİ', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (193, N'ORHANGAZİ', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (194, N'YENİŞEHİR', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (195, N'BÜYÜK ORHAN', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (196, N'HARMANCIK', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (197, N'NÜLİFER', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (198, N'OSMAN GAZİ', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (199, N'YILDIRIM', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (200, N'GÜRSU', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (201, N'KESTEL', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (202, N'BİLECİK MERKEZ', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (203, N'BOZÜYÜK', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (204, N'GÖLPAZARI', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (205, N'OSMANELİ', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (206, N'PAZARYERİ', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (207, N'SÖĞÜT', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (208, N'YENİPAZAR', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (209, N'İNHİSAR', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (210, N'BİNGÖL MERKEZ', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (211, N'GENÇ', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (212, N'KARLIOVA', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (213, N'KİGI', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (214, N'SOLHAN', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (215, N'ADAKLI', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (216, N'YAYLADERE', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (217, N'YEDİSU', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (218, N'ADİLCEVAZ', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (219, N'AHLAT', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (220, N'BİTLİS MERKEZ', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (221, N'HİZAN', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (222, N'MUTKİ', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (223, N'TATVAN', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (224, N'GÜROYMAK', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (225, N'DENİZLİ MERKEZ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (226, N'ACIPAYAM', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (227, N'BULDAN', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (228, N'ÇAL', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (229, N'ÇAMELİ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (230, N'ÇARDAK', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (231, N'ÇİVRİL', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (232, N'GÜNEY', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (233, N'KALE', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (234, N'SARAYKÖY', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (235, N'TAVAS', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (236, N'BABADAĞ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (237, N'BEKİLLİ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (238, N'HONAZ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (239, N'SERİNHİSAR', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (240, N'AKKÖY', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (241, N'BAKLAN', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (242, N'BEYAĞAÇ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (243, N'BOZKURT', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (244, N'DÜZCE MERKEZ', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (245, N'AKÇAKOCA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (246, N'YIĞILCA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (247, N'CUMAYERİ', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (248, N'GÖLYAKA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (249, N'ÇİLİMLİ', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (250, N'GÜMÜŞOVA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (251, N'KAYNAŞLI', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (252, N'DİYARBAKIR MERKEZ', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (253, N'BİSMİL', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (254, N'ÇERMİK', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (255, N'ÇINAR', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (256, N'ÇÜNGÜŞ', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (257, N'DİCLE', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (258, N'ERGANİ', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (259, N'HANİ', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (260, N'HAZRO', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (261, N'KULP', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (262, N'LİCE', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (263, N'SİLVAN', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (264, N'EĞİL', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (265, N'KOCAKÖY', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (266, N'EDİRNE MERKEZ', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (267, N'ENEZ', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (268, N'HAVSA', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (269, N'İPSALA', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (270, N'KEŞAN', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (271, N'LALAPAŞA', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (272, N'MERİÇ', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (273, N'UZUNKÖPRÜ', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (274, N'SÜLOĞLU', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (275, N'ELAZIĞ MERKEZ', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (276, N'AĞIN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (277, N'BASKİL', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (278, N'KARAKOÇAN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (279, N'KEBAN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (280, N'MADEN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (281, N'PALU', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (282, N'SİVRİCE', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (283, N'ARICAK', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (284, N'KOVANCILAR', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (285, N'ALACAKAYA', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (286, N'ERZURUM MERKEZ', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (287, N'PALANDÖKEN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (288, N'AŞKALE', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (289, N'ÇAT', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (290, N'HINIS', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (291, N'HORASAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (292, N'OLTU', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (293, N'İSPİR', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (294, N'KARAYAZI', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (295, N'NARMAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (296, N'OLUR', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (297, N'PASİNLER', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (298, N'ŞENKAYA', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (299, N'TEKMAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (300, N'TORTUM', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (301, N'KARAÇOBAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (302, N'UZUNDERE', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (303, N'PAZARYOLU', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (304, N'ILICA', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (305, N'KÖPRÜKÖY', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (306, N'ÇAYIRLI', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (307, N'ERZİNCAN MERKEZ', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (308, N'İLİÇ', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (309, N'KEMAH', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (310, N'KEMALİYE', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (311, N'REFAHİYE', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (312, N'TERCAN', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (313, N'OTLUKBELİ', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (314, N'ESKİŞEHİR MERKEZ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (315, N'ÇİFTELER', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (316, N'MAHMUDİYE', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (317, N'MİHALIÇLIK', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (318, N'SARICAKAYA', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (319, N'SEYİTGAZİ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (320, N'SİVRİHİSAR', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (321, N'ALPU', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (322, N'BEYLİKOVA', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (323, N'İNÖNÜ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (324, N'GÜNYÜZÜ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (325, N'HAN', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (326, N'MİHALGAZİ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (327, N'ARABAN', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (328, N'İSLAHİYE', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (329, N'NİZİP', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (330, N'OĞUZELİ', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (331, N'YAVUZELİ', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (332, N'ŞAHİNBEY', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (333, N'ŞEHİT KAMİL', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (334, N'KARKAMIŞ', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (335, N'NURDAĞI', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (336, N'GÜMÜŞHANE MERKEZ', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (337, N'KELKİT', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (338, N'ŞİRAN', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (339, N'TORUL', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (340, N'KÖSE', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (341, N'KÜRTÜN', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (342, N'ALUCRA', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (343, N'BULANCAK', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (344, N'DERELİ', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (345, N'ESPİYE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (346, N'EYNESİL', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (347, N'GİRESUN MERKEZ', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (348, N'GÖRELE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (349, N'KEŞAP', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (350, N'ŞEBİNKARAHİSAR', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (351, N'TİREBOLU', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (352, N'PİPAZİZ', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (353, N'YAĞLIDERE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (354, N'ÇAMOLUK', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (355, N'ÇANAKÇI', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (356, N'DOĞANKENT', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (357, N'GÜCE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (358, N'HAKKARİ MERKEZ', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (359, N'ÇUKURCA', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (360, N'ŞEMDİNLİ', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (361, N'YÜKSEKOVA', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (362, N'ALTINÖZÜ', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (363, N'DÖRTYOL', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (364, N'HATAY MERKEZ', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (365, N'HASSA', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (366, N'İSKENDERUN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (367, N'KIRIKHAN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (368, N'REYHANLI', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (369, N'SAMANDAĞ', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (370, N'YAYLADAĞ', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (371, N'ERZİN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (372, N'BELEN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (373, N'KUMLU', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (374, N'ISPARTA MERKEZ', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (375, N'ATABEY', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (376, N'KEÇİBORLU', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (377, N'EĞİRDİR', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (378, N'GELENDOST', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (379, N'SİNİRKENT', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (380, N'ULUBORLU', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (381, N'YALVAÇ', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (382, N'AKSU', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (383, N'GÖNEN', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (384, N'YENİŞAR BADEMLİ', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (385, N'IĞDIR MERKEZ', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (386, N'ARALIK', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (387, N'TUZLUCA', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (388, N'KARAKOYUNLU', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (389, N'AFŞİN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (390, N'ANDIRIN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (391, N'ELBİSTAN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (392, N'GÖKSUN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (393, N'KAHRAMANMARAŞ MERKEZ', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (394, N'PAZARCIK', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (395, N'TÜRKOĞLU', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (396, N'ÇAĞLAYANCERİT', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (397, N'EKİNÖZÜ', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (398, N'NURHAK', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (399, N'EFLANİ', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (400, N'ESKİPAZAR', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (401, N'KARABÜK MERKEZ', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (402, N'OVACIK', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (403, N'SAFRANBOLU', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (404, N'YENİCE', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (405, N'ERMENEK', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (406, N'KARAMAN MERKEZ', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (407, N'AYRANCI', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (408, N'KAZIMKARABEKİR', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (409, N'BAŞYAYLA', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (410, N'SARIVELİLER', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (411, N'KARS MERKEZ', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (412, N'ARPAÇAY', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (413, N'DİGOR', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (414, N'KAĞIZMAN', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (415, N'SARIKAMIŞ', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (416, N'SELİM', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (417, N'SUSUZ', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (418, N'AKYAKA', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (419, N'ABANA', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (420, N'KASTAMONU MERKEZ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (421, N'ARAÇ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (422, N'AZDAVAY', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (423, N'BOZKURT', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (424, N'CİDE', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (425, N'ÇATALZEYTİN', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (426, N'DADAY', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (427, N'DEVREKANİ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (428, N'İNEBOLU', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (429, N'KÜRE', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (430, N'TAŞKÖPRÜ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (431, N'TOSYA', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (432, N'İHSANGAZİ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (433, N'PINARBAŞI', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (434, N'ŞENPAZAR', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (435, N'AĞLI', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (436, N'DOĞANYURT', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (437, N'HANÖNÜ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (438, N'SEYDİLER', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (439, N'BÜNYAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (440, N'DEVELİ', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (441, N'FELAHİYE', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (442, N'İNCESU', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (443, N'PINARBAŞI', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (444, N'SARIOĞLAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (445, N'SARIZ', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (446, N'TOMARZA', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (447, N'YAHYALI', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (448, N'YEŞİLHİSAR', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (449, N'AKKIŞLA', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (450, N'TALAS', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (451, N'KOCASİNAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (452, N'MELİKGAZİ', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (453, N'HACILAR', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (454, N'ÖZVATAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (455, N'DERİCE', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (456, N'KESKİN', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (457, N'KIRIKKALE MERKEZ', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (458, N'SALAK YURT', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (459, N'BAHŞİLİ', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (460, N'BALIŞEYH', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (461, N'ÇELEBİ', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (462, N'KARAKEÇİLİ', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (463, N'YAHŞİHAN', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (464, N'KIRKKLARELİ MERKEZ', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (465, N'BABAESKİ', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (466, N'DEMİRKÖY', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (467, N'KOFÇAY', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (468, N'LÜLEBURGAZ', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (469, N'VİZE', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (470, N'KIRŞEHİR MERKEZ', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (471, N'ÇİÇEKDAĞI', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (472, N'KAMAN', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (473, N'MUCUR', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (474, N'AKPINAR', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (475, N'AKÇAKENT', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (476, N'BOZTEPE', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (477, N'KOCAELİ MERKEZ', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (478, N'GEBZE', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (479, N'GÖLCÜK', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (480, N'KANDIRA', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (481, N'KARAMÜRSEL', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (482, N'KÖRFEZ', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (483, N'DERİNCE', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (484, N'KONYA MERKEZ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (485, N'AKŞEHİR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (486, N'BEYŞEHİR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (487, N'BOZKIR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (488, N'CİHANBEYLİ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (489, N'ÇUMRA', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (490, N'DOĞANHİSAR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (491, N'EREĞLİ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (492, N'HADİM', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (493, N'ILGIN', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (494, N'KADINHANI', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (495, N'KARAPINAR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (496, N'KULU', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (497, N'SARAYÖNÜ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (498, N'SEYDİŞEHİR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (499, N'YUNAK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (500, N'AKÖREN', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (501, N'ALTINEKİN', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (502, N'DEREBUCAK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (503, N'HÜYÜK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (504, N'KARATAY', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (505, N'MERAM', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (506, N'SELÇUKLU', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (507, N'TAŞKENT', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (508, N'AHIRLI', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (509, N'ÇELTİK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (510, N'DERBENT', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (511, N'EMİRGAZİ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (512, N'GÜNEYSINIR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (513, N'HALKAPINAR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (514, N'TUZLUKÇU', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (515, N'YALIHÜYÜK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (516, N'KÜTAHYA  MERKEZ', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (517, N'ALTINTAŞ', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (518, N'DOMANİÇ', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (519, N'EMET', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (520, N'GEDİZ', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (521, N'SİMAV', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (522, N'TAVŞANLI', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (523, N'ASLANAPA', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (524, N'DUMLUPINAR', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (525, N'HİSARCIK', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (526, N'ŞAPHANE', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (527, N'ÇAVDARHİSAR', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (528, N'PAZARLAR', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (529, N'KİLİS MERKEZ', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (530, N'ELBEYLİ', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (531, N'MUSABEYLİ', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (532, N'POLATELİ', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (533, N'MALATYA MERKEZ', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (534, N'AKÇADAĞ', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (535, N'ARAPGİR', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (536, N'ARGUVAN', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (537, N'DARENDE', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (538, N'DOĞANŞEHİR', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (539, N'HEKİMHAN', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (540, N'PÜTÜRGE', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (541, N'YEŞİLYURT', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (542, N'BATTALGAZİ', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (543, N'DOĞANYOL', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (544, N'KALE', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (545, N'KULUNCAK', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (546, N'YAZIHAN', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (547, N'AKHİSAR', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (548, N'ALAŞEHİR', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (549, N'DEMİRCİ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (550, N'GÖRDES', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (551, N'KIRKAĞAÇ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (552, N'KULA', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (553, N'MANİSA MERKEZ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (554, N'SALİHLİ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (555, N'SARIGÖL', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (556, N'SARUHANLI', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (557, N'SELENDİ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (558, N'SOMA', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (559, N'TURGUTLU', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (560, N'AHMETLİ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (561, N'GÖLMARMARA', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (562, N'KÖPRÜBAŞI', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (563, N'DERİK', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (564, N'KIZILTEPE', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (565, N'MARDİN MERKEZ', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (566, N'MAZIDAĞI', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (567, N'MİDYAT', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (568, N'NUSAYBİN', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (569, N'ÖMERLİ', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (570, N'SAVUR', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (571, N'YEŞİLLİ', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (572, N'MERSİN MERKEZ', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (573, N'ANAMUR', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (574, N'ERDEMLİ', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (575, N'GÜLNAR', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (576, N'MUT', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (577, N'SİLİFKE', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (578, N'TARSUS', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (579, N'AYDINCIK', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (580, N'BOZYAZI', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (581, N'ÇAMLIYAYLA', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (582, N'BODRUM', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (583, N'DATÇA', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (584, N'FETHİYE', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (585, N'KÖYCEĞİZ', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (586, N'MARMARİS', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (587, N'MİLAS', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (588, N'MUĞLA MERKEZ', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (589, N'ULA', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (590, N'YATAĞAN', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (591, N'DALAMAN', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (592, N'KAVAKLI DERE', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (593, N'ORTACA', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (594, N'BULANIK', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (595, N'MALAZGİRT', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (596, N'MUŞ MERKEZ', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (597, N'VARTO', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (598, N'HASKÖY', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (599, N'KORKUT', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (600, N'NEVŞEHİR MERKEZ', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (601, N'AVANOS', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (602, N'DERİNKUYU', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (603, N'GÜLŞEHİR', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (604, N'HACIBEKTAŞ', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (605, N'KOZAKLI', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (606, N'ÜRGÜP', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (607, N'ACIGÖL', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (608, N'NİĞDE MERKEZ', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (609, N'BOR', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (610, N'ÇAMARDI', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (611, N'ULUKIŞLA', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (612, N'ALTUNHİSAR', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (613, N'ÇİFTLİK', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (614, N'AKKUŞ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (615, N'AYBASTI', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (616, N'FATSA', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (617, N'GÖLKÖY', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (618, N'KORGAN', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (619, N'KUMRU', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (620, N'MESUDİYE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (621, N'ORDU MERKEZ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (622, N'PERŞEMBE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (623, N'ULUBEY', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (624, N'ÜNYE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (625, N'GÜLYALI', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (626, N'GÜRGENTEPE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (627, N'ÇAMAŞ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (628, N'ÇATALPINAR', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (629, N'ÇAYBAŞI', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (630, N'İKİZCE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (631, N'KABADÜZ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (632, N'KABATAŞ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (633, N'BAHÇE', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (634, N'KADİRLİ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (635, N'OSMANİYE MERKEZ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (636, N'DÜZİÇİ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (637, N'HASANBEYLİ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (638, N'SUMBAŞ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (639, N'TOPRAKKALE', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (640, N'RİZE MERKEZ', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (641, N'ARDEŞEN', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (642, N'ÇAMLIHEMŞİN', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (643, N'ÇAYELİ', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (644, N'FINDIKLI', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (645, N'İKİZDERE', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (646, N'KALKANDERE', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (647, N'PAZAR', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (648, N'GÜNEYSU', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (649, N'DEREPAZARI', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (650, N'HEMŞİN', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (651, N'İYİDERE', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (652, N'AKYAZI', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (653, N'GEYVE', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (654, N'HENDEK', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (655, N'KARASU', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (656, N'KAYNARCA', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (657, N'SAKARYA MERKEZ', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (658, N'PAMUKOVA', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (659, N'TARAKLI', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (660, N'FERİZLİ', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (661, N'KARAPÜRÇEK', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (662, N'SÖĞÜTLÜ', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (663, N'ALAÇAM', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (664, N'BAFRA', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (665, N'ÇARŞAMBA', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (666, N'HAVZA', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (667, N'KAVAK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (668, N'LADİK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (669, N'SAMSUN MERKEZ', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (670, N'TERME', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (671, N'VEZİRKÖPRÜ', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (672, N'ASARCIK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (673, N'ONDOKUZMAYIS', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (674, N'SALIPAZARI', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (675, N'TEKKEKÖY', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (676, N'AYVACIK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (677, N'YAKAKENT', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (678, N'AYANCIK', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (679, N'BOYABAT', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (680, N'SİNOP MERKEZ', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (681, N'DURAĞAN', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (682, N'ERGELEK', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (683, N'GERZE', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (684, N'TÜRKELİ', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (685, N'DİKMEN', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (686, N'SARAYDÜZÜ', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (687, N'DİVRİĞİ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (688, N'GEMEREK', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (689, N'GÜRÜN', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (690, N'HAFİK', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (691, N'İMRANLI', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (692, N'KANGAL', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (693, N'KOYUL HİSAR', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (694, N'SİVAS MERKEZ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (695, N'SU ŞEHRİ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (696, N'ŞARKIŞLA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (697, N'YILDIZELİ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (698, N'ZARA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (699, N'AKINCILAR', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (700, N'ALTINYAYLA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (701, N'DOĞANŞAR', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (702, N'GÜLOVA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (703, N'ULAŞ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (704, N'BAYKAN', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (705, N'ERUH', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (706, N'KURTALAN', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (707, N'PERVARİ', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (708, N'SİİRT MERKEZ', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (709, N'ŞİRVARİ', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (710, N'AYDINLAR', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (711, N'TEKİRDAĞ MERKEZ', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (712, N'ÇERKEZKÖY', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (713, N'ÇORLU', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (714, N'HAYRABOLU', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (715, N'MALKARA', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (716, N'MURATLI', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (717, N'SARAY', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (718, N'ŞARKÖY', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (719, N'MARAMARAEREĞLİSİ', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (720, N'ALMUS', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (721, N'ARTOVA', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (722, N'TOKAT MERKEZ', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (723, N'ERBAA', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (724, N'NİKSAR', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (725, N'REŞADİYE', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (726, N'TURHAL', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (727, N'ZİLE', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (728, N'PAZAR', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (729, N'YEŞİLYURT', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (730, N'BAŞÇİFTLİK', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (731, N'SULUSARAY', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (732, N'TRABZON MERKEZ', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (733, N'AKÇAABAT', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (734, N'ARAKLI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (735, N'ARŞİN', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (736, N'ÇAYKARA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (737, N'MAÇKA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (738, N'OF', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (739, N'SÜRMENE', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (740, N'TONYA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (741, N'VAKFIKEBİR', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (742, N'YOMRA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (743, N'BEŞİKDÜZÜ', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (744, N'ŞALPAZARI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (745, N'ÇARŞIBAŞI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (746, N'DERNEKPAZARI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (747, N'DÜZKÖY', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (748, N'HAYRAT', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (749, N'KÖPRÜBAŞI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (750, N'TUNCELİ MERKEZ', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (751, N'ÇEMİŞGEZEK', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (752, N'HOZAT', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (753, N'MAZGİRT', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (754, N'NAZİMİYE', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (755, N'OVACIK', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (756, N'PERTEK', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (757, N'PÜLÜMÜR', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (758, N'BANAZ', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (759, N'EŞME', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (760, N'KARAHALLI', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (761, N'SİVASLI', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (762, N'ULUBEY', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (763, N'UŞAK MERKEZ', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (764, N'BAŞKALE', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (765, N'VAN MERKEZ', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (766, N'EDREMİT', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (767, N'ÇATAK', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (768, N'ERCİŞ', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (769, N'GEVAŞ', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (770, N'GÜRPINAR', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (771, N'MURADİYE', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (772, N'ÖZALP', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (773, N'BAHÇESARAY', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (774, N'ÇALDIRAN', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (775, N'SARAY', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (776, N'YALOVA MERKEZ', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (777, N'ALTINOVA', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (778, N'ARMUTLU', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (779, N'ÇINARCIK', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (780, N'ÇİFTLİKKÖY', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (781, N'TERMAL', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (782, N'AKDAĞMADENİ', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (783, N'BOĞAZLIYAN', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (784, N'YOZGAT MERKEZ', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (785, N'ÇAYIRALAN', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (786, N'ÇEKEREK', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (787, N'SARIKAYA', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (788, N'SORGUN', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (789, N'ŞEFAATLI', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (790, N'YERKÖY', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (791, N'KADIŞEHRİ', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (792, N'SARAYKENT', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (793, N'YENİFAKILI', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (794, N'ÇAYCUMA', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (795, N'DEVREK', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (796, N'ZONGULDAK MERKEZ', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (797, N'EREĞLİ', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (798, N'ALAPLI', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (799, N'GÖKÇEBEY', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (800, N'ÇANAKKALE MERKEZ', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (801, N'AYVACIK', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (802, N'BAYRAMİÇ', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (803, N'BİGA', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (804, N'BOZCAADA', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (805, N'ÇAN', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (806, N'ECEABAT', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (807, N'EZİNE', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (808, N'LAPSEKİ', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (809, N'YENİCE', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (810, N'ÇANKIRI MERKEZ', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (811, N'ÇERKEŞ', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (812, N'ELDİVAN', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (813, N'ILGAZ', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (814, N'KURŞUNLU', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (815, N'ORTA', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (816, N'ŞABANÖZÜ', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (817, N'YAPRAKLI', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (818, N'ATKARACALAR', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (819, N'KIZILIRMAK', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (820, N'BAYRAMÖREN', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (821, N'KORGUN', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (822, N'ALACA', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (823, N'BAYAT', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (824, N'ÇORUM MERKEZ', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (825, N'İKSİPLİ', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (826, N'KARGI', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (827, N'MECİTÖZÜ', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (828, N'ORTAKÖY', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (829, N'OSMANCIK', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (830, N'SUNGURLU', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (831, N'DODURGA', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (832, N'LAÇİN', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (833, N'OĞUZLAR', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (834, N'ADALAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (835, N'BAKIRKÖY', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (836, N'BEŞİKTAŞ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (837, N'BEYKOZ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (838, N'BEYOĞLU', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (839, N'ÇATALCA', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (840, N'EMİNÖNÜ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (841, N'EYÜP', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (842, N'FATİH', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (843, N'GAZİOSMANPAŞA', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (844, N'KADIKÖY', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (845, N'KARTAL', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (846, N'SARIYER', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (847, N'SİLİVRİ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (848, N'ŞİLE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (849, N'ŞİŞLİ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (850, N'ÜSKÜDAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (851, N'ZEYTİNBURNU', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (852, N'BÜYÜKÇEKMECE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (853, N'KAĞITHANE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (854, N'KÜÇÜKÇEKMECE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (855, N'PENDİK', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (856, N'ÜMRANİYE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (857, N'BAYRAMPAŞA', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (858, N'AVCILAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (859, N'BAĞCILAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (860, N'BAHÇELİEVLER', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (861, N'GÜNGÖREN', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (862, N'MALTEPE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (863, N'SULTANBEYLİ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (864, N'TUZLA', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (865, N'ESENLER', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (866, N'ALİAĞA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (867, N'BAYINDIR', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (868, N'BERGAMA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (869, N'BORNOVA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (870, N'ÇEŞME', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (871, N'DİKİLİ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (872, N'FOÇA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (873, N'KARABURUN', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (874, N'KARŞIYAKA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (875, N'KEMALPAŞA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (876, N'KINIK', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (877, N'KİRAZ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (878, N'MENEMEN', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (879, N'ÖDEMİŞ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (880, N'SEFERİHİSAR', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (881, N'SELÇUK', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (882, N'TİRE', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (883, N'TORBALI', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (884, N'URLA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (885, N'BEYDAĞ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (886, N'BUCA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (887, N'KONAK', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (888, N'MENDERES', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (889, N'BALÇOVA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (890, N'ÇİGLİ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (891, N'GAZİEMİR', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (892, N'NARLIDERE', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (893, N'GÜZELBAHÇE', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (894, N'ŞANLIURFA MERKEZ', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (895, N'AKÇAKALE', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (896, N'BİRECİK', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (897, N'BOZOVA', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (898, N'CEYLANPINAR', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (899, N'HALFETİ', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (900, N'HİLVAN', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (901, N'SİVEREK', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (902, N'SURUÇ', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (903, N'VİRANŞEHİR', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (904, N'HARRAN', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (905, N'BEYTÜŞŞEBAP', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (906, N'ŞIRNAK MERKEZ', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (907, N'CİZRE', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (908, N'İDİL', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (909, N'SİLOPİ', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (910, N'ULUDERE', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (911, N'GÜÇLÜKONAK', N'Aciklama', 73)
GO
SET IDENTITY_INSERT [dbo].[tbl_Ilce] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Kampanyalar] ON 
GO
INSERT [dbo].[tbl_Kampanyalar] ([KampanyaId], [KampanyaBilgileri], [KampanyaIndirimOran], [KampanyaBaslangicZaman], [KampanyaBitisTarihi], [KampanyaTanim]) VALUES (2, N'Kış Bahçesi İndirimi', 25, CAST(N'2022-09-01T00:00:00.000' AS DateTime), CAST(N'2023-02-28T00:00:00.000' AS DateTime), N'KışBahçesi')
GO
INSERT [dbo].[tbl_Kampanyalar] ([KampanyaId], [KampanyaBilgileri], [KampanyaIndirimOran], [KampanyaBaslangicZaman], [KampanyaBitisTarihi], [KampanyaTanim]) VALUES (4, N'Yılbaşı Eğlencesi', 30, CAST(N'2022-12-01T00:00:00.000' AS DateTime), CAST(N'2022-12-31T00:00:00.000' AS DateTime), N'YeniYıl')
GO
INSERT [dbo].[tbl_Kampanyalar] ([KampanyaId], [KampanyaBilgileri], [KampanyaIndirimOran], [KampanyaBaslangicZaman], [KampanyaBitisTarihi], [KampanyaTanim]) VALUES (5, N'AraTatil Kampanyası', 18, CAST(N'2023-01-15T00:00:00.000' AS DateTime), CAST(N'2023-02-15T00:00:00.000' AS DateTime), N'AraTatil')
GO
SET IDENTITY_INSERT [dbo].[tbl_Kampanyalar] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Kullanici] ON 
GO
INSERT [dbo].[tbl_Kullanici] ([KullaniciId], [KullaniciTipiId], [KullaniciAd], [KullaniciParola], [KullaniciEposta], [KullaniciEpostaOnayKod], [KullaniciEpostaOnay], [KullaniciKayıtTarihi], [KullaniciSonGirisTarihi], [DilId], [ResimId]) VALUES (3, 1, N'Admin', N'123456789', N'admin@gmail.com', N'1234', 1, CAST(N'2022-11-08T00:00:00.000' AS DateTime), CAST(N'2022-11-08T00:00:00.000' AS DateTime), 1, NULL)
GO
INSERT [dbo].[tbl_Kullanici] ([KullaniciId], [KullaniciTipiId], [KullaniciAd], [KullaniciParola], [KullaniciEposta], [KullaniciEpostaOnayKod], [KullaniciEpostaOnay], [KullaniciKayıtTarihi], [KullaniciSonGirisTarihi], [DilId], [ResimId]) VALUES (4, 2, N'Kadir', N'1234', N'kadir@gmail.com', N'1235', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-02-01T00:00:00.000' AS DateTime), 1, NULL)
GO
INSERT [dbo].[tbl_Kullanici] ([KullaniciId], [KullaniciTipiId], [KullaniciAd], [KullaniciParola], [KullaniciEposta], [KullaniciEpostaOnayKod], [KullaniciEpostaOnay], [KullaniciKayıtTarihi], [KullaniciSonGirisTarihi], [DilId], [ResimId]) VALUES (5, 2, N'Omer', N'456', N'Omer@gmail.com', N'1236', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2022-02-01T00:00:00.000' AS DateTime), 1, NULL)
GO
INSERT [dbo].[tbl_Kullanici] ([KullaniciId], [KullaniciTipiId], [KullaniciAd], [KullaniciParola], [KullaniciEposta], [KullaniciEpostaOnayKod], [KullaniciEpostaOnay], [KullaniciKayıtTarihi], [KullaniciSonGirisTarihi], [DilId], [ResimId]) VALUES (7, 2, N'Ahmet', N'789', N'ahmet@gmail.com', N'1237', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1, NULL)
GO
INSERT [dbo].[tbl_Kullanici] ([KullaniciId], [KullaniciTipiId], [KullaniciAd], [KullaniciParola], [KullaniciEposta], [KullaniciEpostaOnayKod], [KullaniciEpostaOnay], [KullaniciKayıtTarihi], [KullaniciSonGirisTarihi], [DilId], [ResimId]) VALUES (8, 2, N'Mehmet', N'000', N'mehmet@gmail.com', N'852', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Kullanici] OFF
GO
INSERT [dbo].[tbl_KullaniciPersonel] ([PersonelId], [KullaniciId], [YetkiId]) VALUES (5, 3, 1)
GO
INSERT [dbo].[tbl_KullaniciPersonel] ([PersonelId], [KullaniciId], [YetkiId]) VALUES (6, 4, 9)
GO
INSERT [dbo].[tbl_KullaniciPersonel] ([PersonelId], [KullaniciId], [YetkiId]) VALUES (7, 5, 2)
GO
INSERT [dbo].[tbl_KullaniciPersonel] ([PersonelId], [KullaniciId], [YetkiId]) VALUES (8, 7, 10)
GO
INSERT [dbo].[tbl_KullaniciPersonel] ([PersonelId], [KullaniciId], [YetkiId]) VALUES (9, 8, 7)
GO
SET IDENTITY_INSERT [dbo].[tbl_KullaniciTipi] ON 
GO
INSERT [dbo].[tbl_KullaniciTipi] ([KullaniciTipiId], [KullaniciTipiTanim], [KullaniciTipiAciklama]) VALUES (1, N'Admin', N'Admin')
GO
INSERT [dbo].[tbl_KullaniciTipi] ([KullaniciTipiId], [KullaniciTipiTanim], [KullaniciTipiAciklama]) VALUES (2, N'Calisan', N'Calisan')
GO
SET IDENTITY_INSERT [dbo].[tbl_KullaniciTipi] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Musteriler] ON 
GO
INSERT [dbo].[tbl_Musteriler] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTCKimlik], [MusteriPasaportNo], [MusteriUnvan], [MusteriYetkiliAdSoyad], [MusteriVergiNo], [MusteriVergiDairesi], [MusteriTelefon], [MusteriPosta], [MusteriAdres], [IlID], [IlceID], [UlkeID], [MusteriAciklama], [MusteriKurumsalOK], [DilID]) VALUES (6, N'Talha', N'Demir', N'78965412300', N'123', N'Yazılımcı', N'Talha Demir', N'132', N'Kadıköy', N'555 999 88 77', N'talha@demir.com', N'Kadıköy', 34, 844, 1, N'Kurumsal Müşteri', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Musteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Odalar] ON 
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (1, 1, CAST(120.00 AS Decimal(8, 2)), N'Single', 1, 1, 0, 1, 0, 0, 1, N'Single Room', N'15', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (2, 2, CAST(200.00 AS Decimal(8, 2)), N'Double', 1, 1, 1, 1, 0, 1, 1, N'Double', N'20', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (3, 1, CAST(125.00 AS Decimal(8, 2)), N'Single', 1, 1, 0, 1, 0, 0, 1, N'Single', N'17', N'102', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (4, 1, CAST(125.00 AS Decimal(8, 2)), N'Single', 1, 1, 0, 1, 0, 1, 1, N'Single', N'17', N'103', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (5, 2, CAST(210.00 AS Decimal(8, 2)), N'Double', 1, 1, 1, 1, 0, 1, 1, N'Double', N'22', N'203', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (6, 3, CAST(320.00 AS Decimal(8, 2)), N'King', 1, 1, 1, 1, 1, 1, 1, N'King', N'35', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (7, 3, CAST(350.00 AS Decimal(8, 2)), N'King', 1, 1, 1, 1, 1, 1, 1, N'King', N'38', N'302', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (101, 1, CAST(100.00 AS Decimal(8, 2)), N'Tek kisilik Yatak', 0, 1, 1, 1, 0, 0, 1, N'Tek kisilik Yatak', N'10', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (102, 1, CAST(100.00 AS Decimal(8, 2)), N'Tek kisilik Yatak', 0, 1, 1, 1, 0, 0, 1, N'Tek kisilik Yatak', N'10', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (103, 1, CAST(100.00 AS Decimal(8, 2)), N'Tek kisilik Yatak', 0, 1, 1, 1, 0, 0, 1, N'Tek kisilik Yatak', N'10', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (104, 1, CAST(100.00 AS Decimal(8, 2)), N'Tek kisilik Yatak', 0, 1, 1, 1, 0, 0, 1, N'Tek kisilik Yatak', N'10', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (105, 1, CAST(100.00 AS Decimal(8, 2)), N'Tek kisilik Yatak', 0, 1, 1, 1, 0, 0, 1, N'Tek kisilik Yatak', N'10', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (106, 1, CAST(100.00 AS Decimal(8, 2)), N'Tek kisilik Yatak', 0, 1, 1, 1, 0, 0, 1, N'Tek kisilik Yatak', N'10', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (107, 1, CAST(100.00 AS Decimal(8, 2)), N'Tek kisilik Yatak', 0, 1, 1, 1, 0, 0, 1, N'Tek kisilik Yatak', N'10', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (108, 1, CAST(100.00 AS Decimal(8, 2)), N'Tek kisilik Yatak', 0, 1, 1, 1, 0, 0, 1, N'Tek kisilik Yatak', N'10', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (109, 1, CAST(100.00 AS Decimal(8, 2)), N'Tek kisilik Yatak', 0, 1, 1, 1, 0, 0, 1, N'Tek kisilik Yatak', N'10', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (110, 1, CAST(100.00 AS Decimal(8, 2)), N'Tek kisilik Yatak', 0, 1, 1, 1, 0, 0, 1, N'Tek kisilik Yatak', N'10', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (111, 4, CAST(175.00 AS Decimal(8, 2)), N'Üç Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'Üç Küçük Yatak', N'15', N'120', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (112, 4, CAST(175.00 AS Decimal(8, 2)), N'Üç Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'Üç Küçük Yatak', N'15', N'120', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (113, 4, CAST(175.00 AS Decimal(8, 2)), N'Üç Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'Üç Küçük Yatak', N'15', N'120', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (114, 4, CAST(175.00 AS Decimal(8, 2)), N'Üç Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'Üç Küçük Yatak', N'15', N'120', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (115, 4, CAST(175.00 AS Decimal(8, 2)), N'Üç Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'Üç Küçük Yatak', N'15', N'120', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (116, 4, CAST(175.00 AS Decimal(8, 2)), N'Üç Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'Üç Küçük Yatak', N'15', N'120', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (117, 4, CAST(175.00 AS Decimal(8, 2)), N'Üç Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'Üç Küçük Yatak', N'15', N'120', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (118, 4, CAST(175.00 AS Decimal(8, 2)), N'Üç Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'Üç Küçük Yatak', N'15', N'120', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (119, 4, CAST(175.00 AS Decimal(8, 2)), N'Üç Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'Üç Küçük Yatak', N'15', N'120', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (120, 4, CAST(175.00 AS Decimal(8, 2)), N'Üç Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'Üç Küçük Yatak', N'15', N'120', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (201, 1, CAST(125.00 AS Decimal(8, 2)), N'Bir Küçük Yatak', 0, 1, 1, 1, 0, 0, 1, N'Bir Küçük Yatak', N'10', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (202, 1, CAST(125.00 AS Decimal(8, 2)), N'Bir Küçük Yatak', 0, 1, 1, 1, 0, 0, 1, N'Bir Küçük Yatak', N'10', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (203, 1, CAST(125.00 AS Decimal(8, 2)), N'Bir Küçük Yatak', 0, 1, 1, 1, 0, 0, 1, N'Bir Küçük Yatak', N'10', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (204, 1, CAST(125.00 AS Decimal(8, 2)), N'Bir Küçük Yatak', 0, 1, 1, 1, 0, 0, 1, N'Bir Küçük Yatak', N'10', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (205, 1, CAST(125.00 AS Decimal(8, 2)), N'Bir Küçük Yatak', 0, 1, 1, 1, 0, 0, 1, N'Bir Küçük Yatak', N'10', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (206, 1, CAST(125.00 AS Decimal(8, 2)), N'Bir Küçük Yatak', 0, 1, 1, 1, 0, 0, 1, N'Bir Küçük Yatak', N'10', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (207, 1, CAST(125.00 AS Decimal(8, 2)), N'Bir Küçük Yatak', 0, 1, 1, 1, 0, 0, 1, N'Bir Küçük Yatak', N'10', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (208, 1, CAST(125.00 AS Decimal(8, 2)), N'Bir Küçük Yatak', 0, 1, 1, 1, 0, 0, 1, N'Bir Küçük Yatak', N'10', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (209, 1, CAST(125.00 AS Decimal(8, 2)), N'Bir Küçük Yatak', 0, 1, 1, 1, 0, 0, 1, N'Bir Küçük Yatak', N'10', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (210, 1, CAST(125.00 AS Decimal(8, 2)), N'Bir Küçük Yatak', 0, 1, 1, 1, 0, 0, 1, N'Bir Küçük Yatak', N'10', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (211, 2, CAST(150.00 AS Decimal(8, 2)), N'İki Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'İki Küçük Yatak', N'15', N'220', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (212, 2, CAST(150.00 AS Decimal(8, 2)), N'İki Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'İki Küçük Yatak', N'15', N'220', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (213, 2, CAST(150.00 AS Decimal(8, 2)), N'İki Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'İki Küçük Yatak', N'15', N'220', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (214, 2, CAST(150.00 AS Decimal(8, 2)), N'İki Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'İki Küçük Yatak', N'15', N'220', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (215, 2, CAST(150.00 AS Decimal(8, 2)), N'İki Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'İki Küçük Yatak', N'15', N'220', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (216, 2, CAST(150.00 AS Decimal(8, 2)), N'İki Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'İki Küçük Yatak', N'15', N'220', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (217, 2, CAST(150.00 AS Decimal(8, 2)), N'İki Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'İki Küçük Yatak', N'15', N'220', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (218, 2, CAST(150.00 AS Decimal(8, 2)), N'İki Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'İki Küçük Yatak', N'15', N'220', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (219, 2, CAST(150.00 AS Decimal(8, 2)), N'İki Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'İki Küçük Yatak', N'15', N'220', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (220, 2, CAST(150.00 AS Decimal(8, 2)), N'İki Küçük Yatak', 1, 1, 1, 1, 0, 0, 1, N'İki Küçük Yatak', N'15', N'220', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (301, 3, CAST(200.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'20', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (302, 3, CAST(200.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'20', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (303, 3, CAST(200.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'20', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (304, 3, CAST(200.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'20', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (305, 3, CAST(200.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'20', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (306, 3, CAST(200.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'20', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (307, 3, CAST(200.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'20', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (308, 3, CAST(200.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'20', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (309, 3, CAST(200.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'20', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (310, 3, CAST(200.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'20', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (311, 5, CAST(235.00 AS Decimal(8, 2)), N'Bir Büyük Bir Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Bir Küçük Yatak', N'25', N'320', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (312, 5, CAST(235.00 AS Decimal(8, 2)), N'Bir Büyük Bir Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Bir Küçük Yatak', N'25', N'320', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (313, 5, CAST(235.00 AS Decimal(8, 2)), N'Bir Büyük Bir Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Bir Küçük Yatak', N'25', N'320', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (314, 5, CAST(235.00 AS Decimal(8, 2)), N'Bir Büyük Bir Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Bir Küçük Yatak', N'25', N'320', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (315, 5, CAST(235.00 AS Decimal(8, 2)), N'Bir Büyük Bir Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Bir Küçük Yatak', N'25', N'320', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (316, 5, CAST(235.00 AS Decimal(8, 2)), N'Bir Büyük Bir Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Bir Küçük Yatak', N'25', N'320', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (317, 5, CAST(235.00 AS Decimal(8, 2)), N'Bir Büyük Bir Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Bir Küçük Yatak', N'25', N'320', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (318, 5, CAST(235.00 AS Decimal(8, 2)), N'Bir Büyük Bir Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Bir Küçük Yatak', N'25', N'320', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (319, 5, CAST(235.00 AS Decimal(8, 2)), N'Bir Büyük Bir Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Bir Küçük Yatak', N'25', N'320', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (320, 5, CAST(235.00 AS Decimal(8, 2)), N'Bir Büyük Bir Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Bir Küçük Yatak', N'25', N'320', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (401, 3, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'25', N'401', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (402, 3, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'25', N'401', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (403, 3, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'25', N'401', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (404, 3, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'25', N'401', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (405, 3, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'25', N'401', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (406, 3, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'25', N'401', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (407, 3, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'25', N'401', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (408, 3, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'25', N'401', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (409, 3, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'25', N'401', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (410, 3, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük Yatak', N'25', N'401', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (411, 6, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük İki Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük İki Küçük Yatak', N'30', N'420', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (412, 6, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük İki Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük İki Küçük Yatak', N'30', N'420', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (413, 6, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük İki Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük İki Küçük Yatak', N'30', N'420', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (414, 6, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük İki Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük İki Küçük Yatak', N'30', N'420', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (415, 6, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük İki Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük İki Küçük Yatak', N'30', N'420', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (416, 6, CAST(250.00 AS Decimal(8, 2)), N'Bir Büyük İki Küçük Yatak', 1, 1, 1, 1, 0, 1, 1, N'Bir Büyük İki Küçük Yatak', N'30', N'420', 4)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (417, 8, CAST(400.00 AS Decimal(8, 2)), N'Kral Dairesi', 1, 1, 1, 1, 1, 1, 1, N'Kral Dairesi', N'40', N'425', 4)
GO
SET IDENTITY_INSERT [dbo].[tbl_Odalar] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_OdaSatisTip] ON 
GO
INSERT [dbo].[tbl_OdaSatisTip] ([OdaSatisTip], [OdaSatisTipAd], [OdaSatisTipAciklama]) VALUES (1, N'Tam Pansiyon', N'Tam Pansiyon Odalar')
GO
INSERT [dbo].[tbl_OdaSatisTip] ([OdaSatisTip], [OdaSatisTipAd], [OdaSatisTipAciklama]) VALUES (2, N'All Inclusive', N'Herşey Dahil Odalar')
GO
INSERT [dbo].[tbl_OdaSatisTip] ([OdaSatisTip], [OdaSatisTipAd], [OdaSatisTipAciklama]) VALUES (3, N'Oda- Kahvaltı', N'Sadece Oda Kahvaltı Dahil')
GO
INSERT [dbo].[tbl_OdaSatisTip] ([OdaSatisTip], [OdaSatisTipAd], [OdaSatisTipAciklama]) VALUES (4, N'Yarım Pansiyon', N'Sadece Akşam Yemeği Dahil')
GO
SET IDENTITY_INSERT [dbo].[tbl_OdaSatisTip] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_OdaTipi] ON 
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (1, N'Tek Kişilik', N'Bir Küçük Yatak')
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (2, N'Çift Kişilik', N'İki Küçük Yatak')
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (3, N'Çift Kişilik', N'Bir Büyük Yatak')
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (4, N'Üç Kişilik', N'Üç Küçük Yatak')
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (5, N'Üç Kişilik', N'Bir Büyük Bir Küçük Yatak')
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (6, N'Dört Kişilik', N'Bir Büyük İki Küçük Yatak')
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (7, N'Dört Kişilik', N'Dört Küçük Yatak')
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (8, N'King', N'Kral Dairesi')
GO
SET IDENTITY_INSERT [dbo].[tbl_OdaTipi] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Personel] ON 
GO
INSERT [dbo].[tbl_Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelTcKimlik], [PersonelDogumTarihi], [PersonelUyrukId], [PersonelEposta], [PersonelTelefon], [PersonelPasaportNo], [CinsiyetId], [PersonelIseGirisTarihi], [PersonelIstenCikisTarihi], [PersonelSaatlikUcret], [PersonelMaas], [PersonelSicilNo], [GorevId], [PersonelKategoriID], [PersonelEngelDurumu], [PersonelHesKodu], [IlId], [IlceId], [UlkeId], [PersonelAdres], [PersonelAcilDurumKisiAd], [PersonelAcilDurumKisiTelefon], [ResimId]) VALUES (5, N'Eray', N'Kotan', N'12345678910', CAST(N'1997-01-15T00:00:00.000' AS DateTime), 1, N'eray@gmail.com', N'555 444 33 22 ', NULL, 1, CAST(N'2015-01-01T00:00:00.000' AS DateTime), NULL, CAST(200.00 AS Decimal(8, 2)), CAST(50000.00 AS Decimal(8, 2)), N'123', 1, 2, 0, N'A-1234', 34, 23, 1, N'Dudullu', NULL, NULL, 1)
GO
INSERT [dbo].[tbl_Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelTcKimlik], [PersonelDogumTarihi], [PersonelUyrukId], [PersonelEposta], [PersonelTelefon], [PersonelPasaportNo], [CinsiyetId], [PersonelIseGirisTarihi], [PersonelIstenCikisTarihi], [PersonelSaatlikUcret], [PersonelMaas], [PersonelSicilNo], [GorevId], [PersonelKategoriID], [PersonelEngelDurumu], [PersonelHesKodu], [IlId], [IlceId], [UlkeId], [PersonelAdres], [PersonelAcilDurumKisiAd], [PersonelAcilDurumKisiTelefon], [ResimId]) VALUES (6, N'Kadir', N'Koşar', N'12345678900', CAST(N'1997-04-17T00:00:00.000' AS DateTime), 1, N'kadir@gmail.com', N'555 666 77 88', NULL, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, CAST(50.00 AS Decimal(8, 2)), CAST(10000.00 AS Decimal(8, 2)), N'456', 2, 1, 0, N'B-1234', 34, 23, 1, N'Çekmeköy', NULL, NULL, 1)
GO
INSERT [dbo].[tbl_Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelTcKimlik], [PersonelDogumTarihi], [PersonelUyrukId], [PersonelEposta], [PersonelTelefon], [PersonelPasaportNo], [CinsiyetId], [PersonelIseGirisTarihi], [PersonelIstenCikisTarihi], [PersonelSaatlikUcret], [PersonelMaas], [PersonelSicilNo], [GorevId], [PersonelKategoriID], [PersonelEngelDurumu], [PersonelHesKodu], [IlId], [IlceId], [UlkeId], [PersonelAdres], [PersonelAcilDurumKisiAd], [PersonelAcilDurumKisiTelefon], [ResimId]) VALUES (7, N'Ömer', N'Öztürk', N'98765432100', CAST(N'1997-05-24T00:00:00.000' AS DateTime), 1, N'omer@gmail.com', N'555 555 55 55', NULL, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, CAST(50.00 AS Decimal(8, 2)), CAST(10000.00 AS Decimal(8, 2)), N'789', 3, 11, 0, N'C-1234', 34, 23, 1, N'Çekmeköy', NULL, NULL, 1)
GO
INSERT [dbo].[tbl_Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelTcKimlik], [PersonelDogumTarihi], [PersonelUyrukId], [PersonelEposta], [PersonelTelefon], [PersonelPasaportNo], [CinsiyetId], [PersonelIseGirisTarihi], [PersonelIstenCikisTarihi], [PersonelSaatlikUcret], [PersonelMaas], [PersonelSicilNo], [GorevId], [PersonelKategoriID], [PersonelEngelDurumu], [PersonelHesKodu], [IlId], [IlceId], [UlkeId], [PersonelAdres], [PersonelAcilDurumKisiAd], [PersonelAcilDurumKisiTelefon], [ResimId]) VALUES (8, N'Ahmet', N'Ahmet', N'78945612300', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'ahmet@gmail.com', N'555 777 77 77 ', NULL, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, CAST(40.00 AS Decimal(8, 2)), CAST(7000.00 AS Decimal(8, 2)), N'987', 4, 4, 0, N'D-1234', 34, 23, 1, N'Dudullu', NULL, NULL, 1)
GO
INSERT [dbo].[tbl_Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelTcKimlik], [PersonelDogumTarihi], [PersonelUyrukId], [PersonelEposta], [PersonelTelefon], [PersonelPasaportNo], [CinsiyetId], [PersonelIseGirisTarihi], [PersonelIstenCikisTarihi], [PersonelSaatlikUcret], [PersonelMaas], [PersonelSicilNo], [GorevId], [PersonelKategoriID], [PersonelEngelDurumu], [PersonelHesKodu], [IlId], [IlceId], [UlkeId], [PersonelAdres], [PersonelAcilDurumKisiAd], [PersonelAcilDurumKisiTelefon], [ResimId]) VALUES (9, N'Mehmet', N'Mehmet', N'78945632100', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'mehmet@gmail.com', N'555 777 88 99', NULL, 1, CAST(N'2016-01-01T00:00:00.000' AS DateTime), NULL, CAST(40.00 AS Decimal(8, 2)), CAST(7000.00 AS Decimal(8, 2)), N'654', 5, 12, 0, N'E-1234', 34, 23, 1, N'Dudullu', NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Personel] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_PersonelKategori] ON 
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (1, N'Resepsiyon', N'Resepsiyon Görevlisi')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (2, N'Müdür', N'Otel Müdürü')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (3, N'Garson', N'Garson')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (4, N'Temizlik Görevlisi', N'Temizlik Görevlisi')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (5, N'Aşçı', N'Aşçı')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (6, N'Elektrikçi', N'Elektrik İşleri Sorumlusu')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (7, N'Bilgi İşlem', N'Bilgi İşlem Sorumlusu')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (8, N'Güvenlik', N'Güvenlik Personeli')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (9, N'Vale', N'Vale İşlemleri Personeli')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (10, N'Stajyer', N'Stajyer Personel')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (11, N'Muhasebe', N'Muhasebe')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (12, N'İnsan Kayakları', N'İnsan Kaynakları')
GO
SET IDENTITY_INSERT [dbo].[tbl_PersonelKategori] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Resimler] ON 
GO
INSERT [dbo].[tbl_Resimler] ([ResimId], [ResimUrlAdres], [ResimAciklama], [ResimAktifOk], [ResimAlternatifText]) VALUES (1, N'abc', N'abc', 1, N'abc')
GO
SET IDENTITY_INSERT [dbo].[tbl_Resimler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_RezervasyonTip] ON 
GO
INSERT [dbo].[tbl_RezervasyonTip] ([RezervasyonTipId], [RezervasyonTanım], [RezervasyonAciklama]) VALUES (1, N'Çalışan Tarafından Yapıldı', N'Çalışan Tarafından Yapıldı')
GO
SET IDENTITY_INSERT [dbo].[tbl_RezervasyonTip] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Satis] ON 
GO
INSERT [dbo].[tbl_Satis] ([SatisId], [SatisOdaGirisTarihi], [SatisOdaCikisTarihi], [SatisIndirim], [KartId], [OdaId], [OdaSatisDurum], [OdaSatisTutar], [OdaSatisKDV], [OdaSatisOdemeTipiId]) VALUES (1, CAST(N'2022-11-20T00:00:00.000' AS DateTime), CAST(N'2022-11-27T00:00:00.000' AS DateTime), 0, NULL, 101, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Satis] ([SatisId], [SatisOdaGirisTarihi], [SatisOdaCikisTarihi], [SatisIndirim], [KartId], [OdaId], [OdaSatisDurum], [OdaSatisTutar], [OdaSatisKDV], [OdaSatisOdemeTipiId]) VALUES (2, CAST(N'2022-11-10T00:00:00.000' AS DateTime), CAST(N'2022-11-13T00:00:00.000' AS DateTime), 0, NULL, 201, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Satis] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Ulke] ON 
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (1, N'TÜRKİYE', N'TR', N'90')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (2, N'İNGİLTERE', N'GB', N'44')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (3, N'ALMANYA', N'DE', N'49')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (4, N'AMERİKA', N'US', N'1')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (5, N'FRANSA', N'FR', N'33')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (6, N'RUSYA', N'RU', N'70')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (7, N'YUNANİSTAN', N'GR', N'30')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (8, N'JAPONYA', N'JP', N'81')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (9, N'ÇİN', N'CH', N'86')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (10, N'İSRAİL', N'IL', N'972')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (11, N'İTALYA', N'IT', N'39')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (12, N'PAKİSTAN', N'PK', N'92')
GO
SET IDENTITY_INSERT [dbo].[tbl_Ulke] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Vardiya] ON 
GO
INSERT [dbo].[tbl_Vardiya] ([VardiyaId], [VardiyaTipi], [VardiyaBaslangicSaati], [VardiyaBitisSaati]) VALUES (1, N'SABAH', CAST(N'08:00:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[tbl_Vardiya] ([VardiyaId], [VardiyaTipi], [VardiyaBaslangicSaati], [VardiyaBitisSaati]) VALUES (2, N'AKŞAM', CAST(N'16:00:00' AS Time), CAST(N'00:00:00' AS Time))
GO
INSERT [dbo].[tbl_Vardiya] ([VardiyaId], [VardiyaTipi], [VardiyaBaslangicSaati], [VardiyaBitisSaati]) VALUES (3, N'GECE', CAST(N'00:00:00' AS Time), CAST(N'08:00:00' AS Time))
GO
SET IDENTITY_INSERT [dbo].[tbl_Vardiya] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Yetkiler] ON 
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (1, N'Yönetim', N'Yönetici Yetkileri', N'999', N'999')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (2, N'Muhasebe', N'Muhasebe Yetkileri', N'277', N'277')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (3, N'Güvenlik', N'Güvenlik Yetkileri', N'377', N'377')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (4, N'Bilgi İşlem ', N'IT Yetkileri', N'499', N'499')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (5, N'Satın Alma', N'Satın Alma Yetkileri', N'577', N'577')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (6, N'Konsinye', N'Konsinye Yetkileri', N'677', N'677')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (7, N'İnsan Kaynakları', N'HR Yetkileri', N'799', N'799')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (8, N'Satış ve Pazarlama', N'Satış ve Pazarlama Yetkileri', N'877', N'877')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (9, N'Ön Büro', N'Ön büreo ve Desk Yetkileri', N'977', N'977')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (10, N'Temizlik', N'Temizlik', N'111', N'111')
GO
SET IDENTITY_INSERT [dbo].[tbl_Yetkiler] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbl_Musteriler]    Script Date: 15.11.2022 20:06:32 ******/
ALTER TABLE [dbo].[tbl_Musteriler] ADD  CONSTRAINT [IX_tbl_Musteriler] UNIQUE NONCLUSTERED 
(
	[MusteriTCKimlik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbl_Personel]    Script Date: 15.11.2022 20:06:32 ******/
ALTER TABLE [dbo].[tbl_Personel] ADD  CONSTRAINT [IX_tbl_Personel] UNIQUE NONCLUSTERED 
(
	[PersonelTcKimlik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Il]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Il_tbl_Ulke] FOREIGN KEY([UlkeId])
REFERENCES [dbo].[tbl_Ulke] ([UlkeId])
GO
ALTER TABLE [dbo].[tbl_Il] CHECK CONSTRAINT [FK_tbl_Il_tbl_Ulke]
GO
ALTER TABLE [dbo].[tbl_Ilce]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ilce_tbl_Il] FOREIGN KEY([IlId])
REFERENCES [dbo].[tbl_Il] ([IlId])
GO
ALTER TABLE [dbo].[tbl_Ilce] CHECK CONSTRAINT [FK_tbl_Ilce_tbl_Il]
GO
ALTER TABLE [dbo].[tbl_KampanyaOda]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KampanyaOda_tbl_Kampanyalar] FOREIGN KEY([KampanyaId])
REFERENCES [dbo].[tbl_Kampanyalar] ([KampanyaId])
GO
ALTER TABLE [dbo].[tbl_KampanyaOda] CHECK CONSTRAINT [FK_tbl_KampanyaOda_tbl_Kampanyalar]
GO
ALTER TABLE [dbo].[tbl_KampanyaOda]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KampanyaOda_tbl_Odalar] FOREIGN KEY([OdaId])
REFERENCES [dbo].[tbl_Odalar] ([OdaId])
GO
ALTER TABLE [dbo].[tbl_KampanyaOda] CHECK CONSTRAINT [FK_tbl_KampanyaOda_tbl_Odalar]
GO
ALTER TABLE [dbo].[tbl_KartBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KartBilgileri_tbl_Misafir] FOREIGN KEY([MisafirId])
REFERENCES [dbo].[tbl_Misafir] ([MisafirId])
GO
ALTER TABLE [dbo].[tbl_KartBilgileri] CHECK CONSTRAINT [FK_tbl_KartBilgileri_tbl_Misafir]
GO
ALTER TABLE [dbo].[tbl_KartBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KartBilgileri_tbl_Odalar] FOREIGN KEY([OdaId])
REFERENCES [dbo].[tbl_Odalar] ([OdaId])
GO
ALTER TABLE [dbo].[tbl_KartBilgileri] CHECK CONSTRAINT [FK_tbl_KartBilgileri_tbl_Odalar]
GO
ALTER TABLE [dbo].[tbl_KartBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KartBilgileri_tbl_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_KartBilgileri] CHECK CONSTRAINT [FK_tbl_KartBilgileri_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Kullanici_tbl_Diller] FOREIGN KEY([DilId])
REFERENCES [dbo].[tbl_Diller] ([DilId])
GO
ALTER TABLE [dbo].[tbl_Kullanici] CHECK CONSTRAINT [FK_tbl_Kullanici_tbl_Diller]
GO
ALTER TABLE [dbo].[tbl_Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Kullanici_tbl_KullaniciTipi] FOREIGN KEY([KullaniciTipiId])
REFERENCES [dbo].[tbl_KullaniciTipi] ([KullaniciTipiId])
GO
ALTER TABLE [dbo].[tbl_Kullanici] CHECK CONSTRAINT [FK_tbl_Kullanici_tbl_KullaniciTipi]
GO
ALTER TABLE [dbo].[tbl_Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Kullanici_tbl_Resimler] FOREIGN KEY([ResimId])
REFERENCES [dbo].[tbl_Resimler] ([ResimId])
GO
ALTER TABLE [dbo].[tbl_Kullanici] CHECK CONSTRAINT [FK_tbl_Kullanici_tbl_Resimler]
GO
ALTER TABLE [dbo].[tbl_KullaniciMusteri]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KullaniciMusteri_tbl_Kullanici] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[tbl_Kullanici] ([KullaniciId])
GO
ALTER TABLE [dbo].[tbl_KullaniciMusteri] CHECK CONSTRAINT [FK_tbl_KullaniciMusteri_tbl_Kullanici]
GO
ALTER TABLE [dbo].[tbl_KullaniciMusteri]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KullaniciMusteri_tbl_Yetkiler] FOREIGN KEY([YetkiId])
REFERENCES [dbo].[tbl_Yetkiler] ([YetkiId])
GO
ALTER TABLE [dbo].[tbl_KullaniciMusteri] CHECK CONSTRAINT [FK_tbl_KullaniciMusteri_tbl_Yetkiler]
GO
ALTER TABLE [dbo].[tbl_KullaniciPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KullaniciPersonel_tbl_Kullanici] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[tbl_Kullanici] ([KullaniciId])
GO
ALTER TABLE [dbo].[tbl_KullaniciPersonel] CHECK CONSTRAINT [FK_tbl_KullaniciPersonel_tbl_Kullanici]
GO
ALTER TABLE [dbo].[tbl_KullaniciPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KullaniciPersonel_tbl_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_KullaniciPersonel] CHECK CONSTRAINT [FK_tbl_KullaniciPersonel_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_KullaniciPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KullaniciPersonel_tbl_Yetkiler] FOREIGN KEY([YetkiId])
REFERENCES [dbo].[tbl_Yetkiler] ([YetkiId])
GO
ALTER TABLE [dbo].[tbl_KullaniciPersonel] CHECK CONSTRAINT [FK_tbl_KullaniciPersonel_tbl_Yetkiler]
GO
ALTER TABLE [dbo].[tbl_MesaiPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MesaiPersonel_tbl_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_MesaiPersonel] CHECK CONSTRAINT [FK_tbl_MesaiPersonel_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_Misafir]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Misafir_tbl_Cinsiyet] FOREIGN KEY([CinsiyetId])
REFERENCES [dbo].[tbl_Cinsiyet] ([CinsiyetId])
GO
ALTER TABLE [dbo].[tbl_Misafir] CHECK CONSTRAINT [FK_tbl_Misafir_tbl_Cinsiyet]
GO
ALTER TABLE [dbo].[tbl_Misafir]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Misafir_tbl_Diller] FOREIGN KEY([dilId])
REFERENCES [dbo].[tbl_Diller] ([DilId])
GO
ALTER TABLE [dbo].[tbl_Misafir] CHECK CONSTRAINT [FK_tbl_Misafir_tbl_Diller]
GO
ALTER TABLE [dbo].[tbl_Misafir]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Misafir_tbl_Il] FOREIGN KEY([IlId])
REFERENCES [dbo].[tbl_Il] ([IlId])
GO
ALTER TABLE [dbo].[tbl_Misafir] CHECK CONSTRAINT [FK_tbl_Misafir_tbl_Il]
GO
ALTER TABLE [dbo].[tbl_Misafir]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Misafir_tbl_Ilce] FOREIGN KEY([IlceId])
REFERENCES [dbo].[tbl_Ilce] ([IlceId])
GO
ALTER TABLE [dbo].[tbl_Misafir] CHECK CONSTRAINT [FK_tbl_Misafir_tbl_Ilce]
GO
ALTER TABLE [dbo].[tbl_Misafir]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Misafir_tbl_Ulke] FOREIGN KEY([UlkeId])
REFERENCES [dbo].[tbl_Ulke] ([UlkeId])
GO
ALTER TABLE [dbo].[tbl_Misafir] CHECK CONSTRAINT [FK_tbl_Misafir_tbl_Ulke]
GO
ALTER TABLE [dbo].[tbl_Misafir]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Misafir_tbl_Ulke1] FOREIGN KEY([MisafirUyrukId])
REFERENCES [dbo].[tbl_Ulke] ([UlkeId])
GO
ALTER TABLE [dbo].[tbl_Misafir] CHECK CONSTRAINT [FK_tbl_Misafir_tbl_Ulke1]
GO
ALTER TABLE [dbo].[tbl_MisafirOda]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MisafirOda_tbl_Misafir] FOREIGN KEY([MisafirId])
REFERENCES [dbo].[tbl_Misafir] ([MisafirId])
GO
ALTER TABLE [dbo].[tbl_MisafirOda] CHECK CONSTRAINT [FK_tbl_MisafirOda_tbl_Misafir]
GO
ALTER TABLE [dbo].[tbl_MisafirOda]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MisafirOda_tbl_Odalar] FOREIGN KEY([OdaId])
REFERENCES [dbo].[tbl_Odalar] ([OdaId])
GO
ALTER TABLE [dbo].[tbl_MisafirOda] CHECK CONSTRAINT [FK_tbl_MisafirOda_tbl_Odalar]
GO
ALTER TABLE [dbo].[tbl_MisafirOda]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MisafirOda_tbl_Satis] FOREIGN KEY([SatisId])
REFERENCES [dbo].[tbl_Satis] ([SatisId])
GO
ALTER TABLE [dbo].[tbl_MisafirOda] CHECK CONSTRAINT [FK_tbl_MisafirOda_tbl_Satis]
GO
ALTER TABLE [dbo].[tbl_MisafirPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MisafirPersonel_tbl_Misafir] FOREIGN KEY([MisafirId])
REFERENCES [dbo].[tbl_Misafir] ([MisafirId])
GO
ALTER TABLE [dbo].[tbl_MisafirPersonel] CHECK CONSTRAINT [FK_tbl_MisafirPersonel_tbl_Misafir]
GO
ALTER TABLE [dbo].[tbl_MisafirPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MisafirPersonel_tbl_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_MisafirPersonel] CHECK CONSTRAINT [FK_tbl_MisafirPersonel_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Musteriler_tbl_Diller] FOREIGN KEY([DilID])
REFERENCES [dbo].[tbl_Diller] ([DilId])
GO
ALTER TABLE [dbo].[tbl_Musteriler] CHECK CONSTRAINT [FK_tbl_Musteriler_tbl_Diller]
GO
ALTER TABLE [dbo].[tbl_Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Musteriler_tbl_Il] FOREIGN KEY([IlID])
REFERENCES [dbo].[tbl_Il] ([IlId])
GO
ALTER TABLE [dbo].[tbl_Musteriler] CHECK CONSTRAINT [FK_tbl_Musteriler_tbl_Il]
GO
ALTER TABLE [dbo].[tbl_Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Musteriler_tbl_Ilce] FOREIGN KEY([IlceID])
REFERENCES [dbo].[tbl_Ilce] ([IlceId])
GO
ALTER TABLE [dbo].[tbl_Musteriler] CHECK CONSTRAINT [FK_tbl_Musteriler_tbl_Ilce]
GO
ALTER TABLE [dbo].[tbl_Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Musteriler_tbl_Ulke] FOREIGN KEY([UlkeID])
REFERENCES [dbo].[tbl_Ulke] ([UlkeId])
GO
ALTER TABLE [dbo].[tbl_Musteriler] CHECK CONSTRAINT [FK_tbl_Musteriler_tbl_Ulke]
GO
ALTER TABLE [dbo].[tbl_MusteriMisafirsatis]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MusteriMisafirsatis_tbl_Misafir] FOREIGN KEY([MisafirId])
REFERENCES [dbo].[tbl_Misafir] ([MisafirId])
GO
ALTER TABLE [dbo].[tbl_MusteriMisafirsatis] CHECK CONSTRAINT [FK_tbl_MusteriMisafirsatis_tbl_Misafir]
GO
ALTER TABLE [dbo].[tbl_MusteriMisafirsatis]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MusteriMisafirsatis_tbl_Musteriler] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[tbl_Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[tbl_MusteriMisafirsatis] CHECK CONSTRAINT [FK_tbl_MusteriMisafirsatis_tbl_Musteriler]
GO
ALTER TABLE [dbo].[tbl_MusteriMisafirsatis]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MusteriMisafirsatis_tbl_Satis] FOREIGN KEY([SatisId])
REFERENCES [dbo].[tbl_Satis] ([SatisId])
GO
ALTER TABLE [dbo].[tbl_MusteriMisafirsatis] CHECK CONSTRAINT [FK_tbl_MusteriMisafirsatis_tbl_Satis]
GO
ALTER TABLE [dbo].[tbl_MusteriPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MusteriPersonel_tbl_Musteriler] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[tbl_Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[tbl_MusteriPersonel] CHECK CONSTRAINT [FK_tbl_MusteriPersonel_tbl_Musteriler]
GO
ALTER TABLE [dbo].[tbl_MusteriPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MusteriPersonel_tbl_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_MusteriPersonel] CHECK CONSTRAINT [FK_tbl_MusteriPersonel_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_MusteriRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MusteriRezervasyon_tbl_Misafir] FOREIGN KEY([MisafirId])
REFERENCES [dbo].[tbl_Misafir] ([MisafirId])
GO
ALTER TABLE [dbo].[tbl_MusteriRezervasyon] CHECK CONSTRAINT [FK_tbl_MusteriRezervasyon_tbl_Misafir]
GO
ALTER TABLE [dbo].[tbl_MusteriRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MusteriRezervasyon_tbl_Odalar] FOREIGN KEY([OdaId])
REFERENCES [dbo].[tbl_Odalar] ([OdaId])
GO
ALTER TABLE [dbo].[tbl_MusteriRezervasyon] CHECK CONSTRAINT [FK_tbl_MusteriRezervasyon_tbl_Odalar]
GO
ALTER TABLE [dbo].[tbl_MusteriRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MusteriRezervasyon_tbl_Rezervasyon] FOREIGN KEY([RezervasyonId])
REFERENCES [dbo].[tbl_Rezervasyon] ([RezervasyonId])
GO
ALTER TABLE [dbo].[tbl_MusteriRezervasyon] CHECK CONSTRAINT [FK_tbl_MusteriRezervasyon_tbl_Rezervasyon]
GO
ALTER TABLE [dbo].[tbl_OdaDurum]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OdaDurum_tbl_DurumKategori] FOREIGN KEY([DurumKategoriId])
REFERENCES [dbo].[tbl_DurumKategori] ([DurumKategoriId])
GO
ALTER TABLE [dbo].[tbl_OdaDurum] CHECK CONSTRAINT [FK_tbl_OdaDurum_tbl_DurumKategori]
GO
ALTER TABLE [dbo].[tbl_OdaDurum]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OdaDurum_tbl_Odalar] FOREIGN KEY([OdaId])
REFERENCES [dbo].[tbl_Odalar] ([OdaId])
GO
ALTER TABLE [dbo].[tbl_OdaDurum] CHECK CONSTRAINT [FK_tbl_OdaDurum_tbl_Odalar]
GO
ALTER TABLE [dbo].[tbl_Odalar]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Odalar_tbl_OdaTipi] FOREIGN KEY([OdaTipiId])
REFERENCES [dbo].[tbl_OdaTipi] ([OdaTipiId])
GO
ALTER TABLE [dbo].[tbl_Odalar] CHECK CONSTRAINT [FK_tbl_Odalar_tbl_OdaTipi]
GO
ALTER TABLE [dbo].[tbl_OdaResimler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OdaResimler_tbl_Odalar] FOREIGN KEY([OdaId])
REFERENCES [dbo].[tbl_Odalar] ([OdaId])
GO
ALTER TABLE [dbo].[tbl_OdaResimler] CHECK CONSTRAINT [FK_tbl_OdaResimler_tbl_Odalar]
GO
ALTER TABLE [dbo].[tbl_OdaResimler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OdaResimler_tbl_Resimler] FOREIGN KEY([ResimId])
REFERENCES [dbo].[tbl_Resimler] ([ResimId])
GO
ALTER TABLE [dbo].[tbl_OdaResimler] CHECK CONSTRAINT [FK_tbl_OdaResimler_tbl_Resimler]
GO
ALTER TABLE [dbo].[tbl_Personel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personel_tbl_Cinsiyet] FOREIGN KEY([CinsiyetId])
REFERENCES [dbo].[tbl_Cinsiyet] ([CinsiyetId])
GO
ALTER TABLE [dbo].[tbl_Personel] CHECK CONSTRAINT [FK_tbl_Personel_tbl_Cinsiyet]
GO
ALTER TABLE [dbo].[tbl_Personel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personel_tbl_Gorevler] FOREIGN KEY([GorevId])
REFERENCES [dbo].[tbl_Gorevler] ([GorevId])
GO
ALTER TABLE [dbo].[tbl_Personel] CHECK CONSTRAINT [FK_tbl_Personel_tbl_Gorevler]
GO
ALTER TABLE [dbo].[tbl_Personel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personel_tbl_Il] FOREIGN KEY([IlId])
REFERENCES [dbo].[tbl_Il] ([IlId])
GO
ALTER TABLE [dbo].[tbl_Personel] CHECK CONSTRAINT [FK_tbl_Personel_tbl_Il]
GO
ALTER TABLE [dbo].[tbl_Personel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personel_tbl_Ilce] FOREIGN KEY([IlceId])
REFERENCES [dbo].[tbl_Ilce] ([IlceId])
GO
ALTER TABLE [dbo].[tbl_Personel] CHECK CONSTRAINT [FK_tbl_Personel_tbl_Ilce]
GO
ALTER TABLE [dbo].[tbl_Personel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personel_tbl_PersonelKategori] FOREIGN KEY([PersonelKategoriID])
REFERENCES [dbo].[tbl_PersonelKategori] ([PersonelKategoriId])
GO
ALTER TABLE [dbo].[tbl_Personel] CHECK CONSTRAINT [FK_tbl_Personel_tbl_PersonelKategori]
GO
ALTER TABLE [dbo].[tbl_Personel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personel_tbl_Resimler] FOREIGN KEY([ResimId])
REFERENCES [dbo].[tbl_Resimler] ([ResimId])
GO
ALTER TABLE [dbo].[tbl_Personel] CHECK CONSTRAINT [FK_tbl_Personel_tbl_Resimler]
GO
ALTER TABLE [dbo].[tbl_Personel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personel_tbl_Ulke] FOREIGN KEY([UlkeId])
REFERENCES [dbo].[tbl_Ulke] ([UlkeId])
GO
ALTER TABLE [dbo].[tbl_Personel] CHECK CONSTRAINT [FK_tbl_Personel_tbl_Ulke]
GO
ALTER TABLE [dbo].[tbl_PersonelDiller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelDiller_tbl_Diller] FOREIGN KEY([DilId])
REFERENCES [dbo].[tbl_Diller] ([DilId])
GO
ALTER TABLE [dbo].[tbl_PersonelDiller] CHECK CONSTRAINT [FK_tbl_PersonelDiller_tbl_Diller]
GO
ALTER TABLE [dbo].[tbl_PersonelDiller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelDiller_tbl_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_PersonelDiller] CHECK CONSTRAINT [FK_tbl_PersonelDiller_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_PersonelOda]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelOda_tbl_Odalar] FOREIGN KEY([OdaId])
REFERENCES [dbo].[tbl_Odalar] ([OdaId])
GO
ALTER TABLE [dbo].[tbl_PersonelOda] CHECK CONSTRAINT [FK_tbl_PersonelOda_tbl_Odalar]
GO
ALTER TABLE [dbo].[tbl_PersonelOda]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelOda_tbl_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_PersonelOda] CHECK CONSTRAINT [FK_tbl_PersonelOda_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_PersonelVardiya]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelVardiya_tbl_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_PersonelVardiya] CHECK CONSTRAINT [FK_tbl_PersonelVardiya_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_PersonelVardiya]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelVardiya_tbl_Vardiya] FOREIGN KEY([VardiyaId])
REFERENCES [dbo].[tbl_Vardiya] ([VardiyaId])
GO
ALTER TABLE [dbo].[tbl_PersonelVardiya] CHECK CONSTRAINT [FK_tbl_PersonelVardiya_tbl_Vardiya]
GO
ALTER TABLE [dbo].[tbl_PersonelYetki]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelYetki_tbl_Personel] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_PersonelYetki] CHECK CONSTRAINT [FK_tbl_PersonelYetki_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_PersonelYetki]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelYetki_tbl_Yetkiler] FOREIGN KEY([YetkiID])
REFERENCES [dbo].[tbl_Yetkiler] ([YetkiId])
GO
ALTER TABLE [dbo].[tbl_PersonelYetki] CHECK CONSTRAINT [FK_tbl_PersonelYetki_tbl_Yetkiler]
GO
ALTER TABLE [dbo].[tbl_Rezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Rezervasyon_tbl_RezervasyonTip] FOREIGN KEY([RezervasyonTipiId])
REFERENCES [dbo].[tbl_RezervasyonTip] ([RezervasyonTipId])
GO
ALTER TABLE [dbo].[tbl_Rezervasyon] CHECK CONSTRAINT [FK_tbl_Rezervasyon_tbl_RezervasyonTip]
GO
ALTER TABLE [dbo].[tbl_RezervasyonPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_RezervasyonPersonel_tbl_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_RezervasyonPersonel] CHECK CONSTRAINT [FK_tbl_RezervasyonPersonel_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_RezervasyonPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_RezervasyonPersonel_tbl_Rezervasyon] FOREIGN KEY([RezervasyonId])
REFERENCES [dbo].[tbl_Rezervasyon] ([RezervasyonId])
GO
ALTER TABLE [dbo].[tbl_RezervasyonPersonel] CHECK CONSTRAINT [FK_tbl_RezervasyonPersonel_tbl_Rezervasyon]
GO
ALTER TABLE [dbo].[tbl_Satis]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Satis_tbl_OdaSatisTip] FOREIGN KEY([OdaSatisOdemeTipiId])
REFERENCES [dbo].[tbl_OdaSatisTip] ([OdaSatisTip])
GO
ALTER TABLE [dbo].[tbl_Satis] CHECK CONSTRAINT [FK_tbl_Satis_tbl_OdaSatisTip]
GO
ALTER TABLE [dbo].[tbl_SatisPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SatisPersonel_tbl_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[tbl_Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[tbl_SatisPersonel] CHECK CONSTRAINT [FK_tbl_SatisPersonel_tbl_Personel]
GO
ALTER TABLE [dbo].[tbl_SatisPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SatisPersonel_tbl_Satis] FOREIGN KEY([SatisId])
REFERENCES [dbo].[tbl_Satis] ([SatisId])
GO
ALTER TABLE [dbo].[tbl_SatisPersonel] CHECK CONSTRAINT [FK_tbl_SatisPersonel_tbl_Satis]
GO
/****** Object:  StoredProcedure [dbo].[sp_musteri_Ekle]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_musteri_Ekle]    ------MUSTERİ KAYIT
(
  @MusteriAd nvarchar(150)
, @MusteriSoyad nvarchar(150)
, @MusteriTCKimlik nvarchar(20)
, @MusteriPasaportNo nvarchar(20)
, @MusteriUnvan nvarchar(150)
, @MusteriYetkiliAdSoyad nvarchar(150)
, @MusteriVergiNo nvarchar(20)
, @MusteriVergiDairesi nvarchar(50)
, @MusteriTelefon nvarchar(20)
, @MusteriPosta nvarchar(250)
, @UlkeID int
, @IlID int 
, @IlceID int
, @MusteriAdres nvarchar(400)
, @MusteriKurumsalOK bit
, @DilID int
, @MusteriAciklama nvarchar(400)

)
as
begin

insert into tbl_Musteriler 
values 
(@MusteriAd , @MusteriSoyad , @MusteriTCKimlik , @MusteriPasaportNo , @MusteriUnvan , @MusteriYetkiliAdSoyad, @MusteriVergiNo , @MusteriVergiDairesi, @MusteriTelefon 
, @MusteriPosta, @MusteriAdres,@IlID, @IlceID , @UlkeID, @MusteriAciklama,  @MusteriKurumsalOK , @DilID)


end
GO
/****** Object:  StoredProcedure [dbo].[sp_musteri_Guncelle]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_musteri_Guncelle]    ------MUSTERİ GUNCELLE
(
  @MusteriAd nvarchar(150)
, @MusteriSoyad nvarchar(150)
, @MusteriTCKimlik nvarchar(20)
, @MusteriPasaportNo nvarchar(20)
, @MusteriUnvan nvarchar(150)
, @MusteriYetkiliAdSoyad nvarchar(150)
, @MusteriVergiNo nvarchar(20)
, @MusteriVergiDairesi nvarchar(50)
, @MusteriTelefon nvarchar(20)
, @MusteriPosta nvarchar(250)
, @UlkeID int
, @IlID int 
, @IlceID int
, @MusteriAdres nvarchar(400)
, @MusteriKurumsalOK bit
, @DilID int
, @MusteriAciklama nvarchar(400)

)
as
begin

update tbl_Musteriler set 
[MusteriAd]=@MusteriAd , [MusteriSoyad]=@MusteriSoyad , [MusteriTCKimlik]=@MusteriTCKimlik , [MusteriPasaportNo]=@MusteriPasaportNo , [MusteriUnvan]=@MusteriUnvan ,
[MusteriYetkiliAdSoyad]=@MusteriYetkiliAdSoyad, [MusteriVergiNo]=@MusteriVergiNo , [MusteriVergiDairesi]=@MusteriVergiDairesi, [MusteriTelefon]=@MusteriTelefon 
, [MusteriPosta]=@MusteriPosta, [MusteriAdres]=@MusteriAdres,[IlID]=@IlID, [IlceID]=@IlceID , [UlkeID]=@UlkeID, [MusteriAciklama]=@MusteriAciklama, 
[MusteriKurumsalOK]=@MusteriKurumsalOK , [DilID]=@DilID where MusteriTCKimlik=@MusteriTCKimlik


end
GO
/****** Object:  StoredProcedure [dbo].[sp_TarihlerArasiDurum]    Script Date: 15.11.2022 20:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TarihlerArasiDurum]
(
@ilktarih datetime,
@ikincitarih datetime
)
as 
begin

select OdaId from tbl_Satis
where (SatisOdaGirisTarihi between @ilktarih and @ikincitarih) or (SatisOdaCikisTarihi between @ilktarih and @ikincitarih) or
(SatisOdaGirisTarihi<@ilktarih and SatisOdaCikisTarihi>@ilktarih) or (SatisOdaGirisTarihi<@ikincitarih and SatisOdaCikisTarihi>@ikincitarih)
end
GO
USE [master]
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET  READ_WRITE 
GO
