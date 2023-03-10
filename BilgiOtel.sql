USE [master]
GO
/****** Object:  Database [DB_Bilgi_Hotel]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Cinsiyet]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Diller]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_DurumKategori]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Gorevler]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Il]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Ilce]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Kampanyalar]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_KampanyaOda]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_KartBilgileri]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_KonaklamaTipi]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Kullanici]    Script Date: 9.11.2022 19:57:45 ******/
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
	[KullaniciKay??tTarihi] [datetime] NOT NULL,
	[KullaniciSonGirisTarihi] [datetime] NOT NULL,
	[DilId] [int] NOT NULL,
	[ResimId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KullaniciMusteri]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_KullaniciPersonel]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_KullaniciTipi]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_MesaiPersonel]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Misafir]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_MisafirOda]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_MisafirPersonel]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Musteriler]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_MusteriMisafirsatis]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_MusteriPersonel]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_MusteriRezervasyon]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_OdaDurum]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Odalar]    Script Date: 9.11.2022 19:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Odalar](
	[OdaId] [int] IDENTITY(1,1) NOT NULL,
	[OdaEbatMsqr] [int] NOT NULL,
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
/****** Object:  Table [dbo].[tbl_OdaResimler]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_OdaSatisTip]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_OdaTipi]    Script Date: 9.11.2022 19:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OdaTipi](
	[OdaTipiId] [int] IDENTITY(1,1) NOT NULL,
	[OdaTipiAd] [nvarchar](150) NOT NULL,
	[OdaTipiAciklama] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[OdaTipiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Personel]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_PersonelDiller]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_PersonelKategori]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_PersonelOda]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_PersonelVardiya]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_PersonelYetki]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Resimler]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Rezervasyon]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_RezervasyonPersonel]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_RezervasyonTip]    Script Date: 9.11.2022 19:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RezervasyonTip](
	[RezervasyonTipId] [int] IDENTITY(1,1) NOT NULL,
	[RezervasyonTan??m] [nvarchar](150) NOT NULL,
	[RezervasyonAciklama] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[RezervasyonTipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Satis]    Script Date: 9.11.2022 19:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Satis](
	[SatisId] [int] IDENTITY(1,1) NOT NULL,
	[SatisOdaGirisTarihi] [datetime] NOT NULL,
	[SatisOdaCikisTarihi] [datetime] NULL,
	[SatisIndirim] [int] NOT NULL,
	[KartId] [int] NOT NULL,
	[OdaId] [int] NOT NULL,
	[OdaSatisDurum] [bit] NULL,
	[OdaSatisTutar] [decimal](8, 2) NULL,
	[OdaSatisKDV] [int] NOT NULL,
	[OdaSatisOdemeTipiId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SatisPersonel]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Ulke]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Vardiya]    Script Date: 9.11.2022 19:57:45 ******/
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
/****** Object:  Table [dbo].[tbl_Yetkiler]    Script Date: 9.11.2022 19:57:45 ******/
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
INSERT [dbo].[tbl_Cinsiyet] ([CinsiyetId], [CinsiyetAd], [CinsiyetAciklama]) VALUES (3, N'BEL??RTMEK ??STEM??YOR', N'BEL??RTMEK ??STEM??YOR')
GO
INSERT [dbo].[tbl_Cinsiyet] ([CinsiyetId], [CinsiyetAd], [CinsiyetAciklama]) VALUES (4, N'D????ER', N'D????ER')
GO
SET IDENTITY_INSERT [dbo].[tbl_Cinsiyet] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Diller] ON 
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (1, N'T??rk??e', N'T??rk??e Dili', N'TR')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (2, N'??ngilizce', N'??ngiliz Dili', N'EN')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (3, N'Almanca', N'Alman Dili', N'GR')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (4, N'Frans??zca', N'Fransa D??li', N'FR')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (5, N'??ince', N'??in Dili', N'CH')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (6, N'Arap??a', N'Arap Dili', N'AR')
GO
INSERT [dbo].[tbl_Diller] ([DilId], [DilAd], [DilAciklama], [DilKod]) VALUES (7, N'Rus??a', N'Rus Dili', N'RU')
GO
SET IDENTITY_INSERT [dbo].[tbl_Diller] OFF
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (1, N'M??sait', N'Oda Sat???? ????in M??sait')
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (2, N'Temizleniyor', N'Oda Temizleniyor')
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (3, N'Tadilat', N'Oda Tadilat da')
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (4, N'??zel Rezervasyon', N'Oda ??zel Ama??l?? Rezerve Edilmi??')
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (5, N'Denetlemede', N'Oda Deneteleme Durumunda')
GO
INSERT [dbo].[tbl_DurumKategori] ([DurumKategoriId], [DurumKategoriAd], [DurumKategoriAciklama]) VALUES (6, N'Kullan??mda', N'Oda Dolu')
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
INSERT [dbo].[tbl_Gorevler] ([GorevId], [GorevAd], [GorevAciklama], [GorevIsTanimi]) VALUES (5, N'??nsan Kaynaklar??', N'??nsan Kaynaklar??', N'??nsan Kaynaklar??')
GO
SET IDENTITY_INSERT [dbo].[tbl_Gorevler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Il] ON 
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (1, N'ADANA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (2, N'ADIYAMAN', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (3, N'AFYON', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (4, N'A??RI', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (5, N'AMASYA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (6, N'ANKARA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (7, N'ANTALYA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (8, N'ARTV??N', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (9, N'AYDIN', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (10, N'BALIKES??R', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (11, N'B??LEC??K', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (12, N'B??NG??L', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (13, N'B??TL??S', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (14, N'BOLU', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (15, N'BURDUR', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (16, N'BURSA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (17, N'??ANAKKALE', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (18, N'??ANKIRI', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (19, N'??ORUM', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (20, N'DEN??ZL??', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (21, N'D??YARBAKIR', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (22, N'ED??RNE', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (23, N'ELAZI??', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (24, N'ERZ??NCAN', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (25, N'ERZURUM', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (26, N'ESK????EH??R', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (27, N'GAZ??ANTEP', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (28, N'G??RESUN', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (29, N'G??M????HANE', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (30, N'HAKKAR??', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (31, N'HATAY', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (32, N'ISPARTA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (33, N'????EL', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (34, N'??STANBUL', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (35, N'??ZM??R', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (36, N'KARS', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (37, N'KASTAMONU', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (38, N'KAYSER??', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (39, N'KIRKLAREL??', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (40, N'KIR??EH??R', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (41, N'KOCAEL??', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (42, N'KONYA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (43, N'K??TAHYA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (44, N'MALATYA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (45, N'MAN??SA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (46, N'KAHRAMANMARA??', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (47, N'MARD??N', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (48, N'MU??LA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (49, N'MU??', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (50, N'NEV??EH??R', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (51, N'N????DE', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (52, N'ORDU', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (53, N'R??ZE', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (54, N'SAKARYA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (55, N'SAMSUN', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (56, N'S????RT', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (57, N'S??NOP', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (58, N'S??VAS', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (59, N'TEK??RDA??', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (60, N'TOKAT', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (61, N'TRABZON', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (62, N'TUNCEL??', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (63, N'??ANLIURFA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (64, N'U??AK', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (65, N'VAN', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (66, N'YOZGAT', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (67, N'ZONGULDAK', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (68, N'AKSARAY', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (69, N'BAYBURT', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (70, N'KARAMAN', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (71, N'KIRIKKALE', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (72, N'BATMAN', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (73, N'??IRNAK', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (74, N'BARTIN', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (75, N'ARDAHAN', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (76, N'I??DIR', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (77, N'YALOVA', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (78, N'KARAB??K', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (79, N'K??L??S', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (80, N'OSMAN??YE', N'il Ad??', 1)
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama], [UlkeId]) VALUES (81, N'D??ZCE', N'il Ad??', 1)
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
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (4, N'KARA??SALI', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (5, N'KARATA??', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (6, N'KOZAN', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (7, N'POZANTI', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (8, N'SA??MBEYL??', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (9, N'TUFANBEYL??', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (10, N'YUMURTALIK', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (11, N'Y??RE????R', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (12, N'ALADA??', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (13, N'??MAMO??LU', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (14, N'ADIYAMAN MERKEZ', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (15, N'BESN??', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (16, N'??EL??KHAN', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (17, N'GERGER', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (18, N'G??LBA??I', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (19, N'KAHTA', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (20, N'SAMSAT', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (21, N'S??NC??K', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (22, N'TUT', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (23, N'AFYONMERKEZ', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (24, N'BOLVAD??N', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (25, N'??AY', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (26, N'DAZKIRI', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (27, N'D??NAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (28, N'EM??RDA??', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (29, N'??HSAN??YE', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (30, N'SANDIKLI', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (31, N'S??NANPA??A', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (32, N'SULDANDA??I', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (33, N'??UHUT', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (34, N'BA??MAK??I', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (35, N'BAYAT', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (36, N'????CEH??SAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (37, N'??OBANLAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (38, N'EVC??LER', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (39, N'HOCALAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (40, N'KIZIL??REN', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (41, N'AKSARAY MERKEZ', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (42, N'ORTAK??Y', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (43, N'A??A????REN', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (44, N'G??ZELYURT', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (45, N'SARIYAH????', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (46, N'ESK??L', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (47, N'G??LA??A??', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (48, N'AMASYA MERKEZ', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (49, N'G??YN????EK', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (50, N'G??M????HACIK??Y??', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (51, N'MERZ??FON', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (52, N'SULUOVA', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (53, N'TA??OVA', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (54, N'HAMAM??Z??', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (55, N'ALTINDA??', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (56, N'AYAS', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (57, N'BALA', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (58, N'BEYPAZARI', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (59, N'??AMLIDERE', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (60, N'??ANKAYA', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (61, N'??UBUK', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (62, N'ELMADA??', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (63, N'G??D??L', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (64, N'HAYMANA', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (65, N'KALEC??K', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (66, N'KIZILCAHAMAM', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (67, N'NALLIHAN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (68, N'POLATLI', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (69, N'??EREFL??KO??H??SAR', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (70, N'YEN??MAHALLE', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (71, N'G??LBA??I', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (72, N'KE??????REN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (73, N'MAMAK', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (74, N'S??NCAN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (75, N'KAZAN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (76, N'AKYURT', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (77, N'ET??MESGUT', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (78, N'EVREN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (79, N'ANSEK??', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (80, N'ALANYA', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (81, N'ANTALYA MERKEZ??', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (82, N'ELMALI', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (83, N'F??N??KE', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (84, N'GAZ??PA??A', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (85, N'G??NDO??MU??', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (86, N'KA??', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (87, N'KORKUTEL??', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (88, N'KUMLUCA', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (89, N'MANAVGAT', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (90, N'SER??K', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (91, N'DEMRE', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (92, N'??BRADI', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (93, N'KEMER', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (94, N'ARDAHAN MERKEZ', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (95, N'G??LE', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (96, N'??ILDIR', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (97, N'HANAK', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (98, N'POSOF', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (99, N'DAMAL', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (100, N'ARDANU??', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (101, N'ARHAV??', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (102, N'ARTV??N MERKEZ', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (103, N'BOR??KA', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (104, N'HOPA', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (105, N'??AV??AT', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (106, N'YUSUFEL??', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (107, N'MURGUL', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (108, N'AYDIN MERKEZ', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (109, N'BOZDO??AN', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (110, N'????NE', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (111, N'GERMENC??K', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (112, N'KARACASU', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (113, N'KO??ARLI', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (114, N'KU??ADASI', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (115, N'KUYUCAK', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (116, N'NAZ??LL??', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (117, N'S??KE', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (118, N'SULTANH??SAR', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (119, N'YEN??PAZAR', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (120, N'BUHARKENT', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (121, N'??NC??RL??OVA', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (122, N'KARPUZLU', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (123, N'K????K', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (124, N'D??D??M', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (125, N'A??RI MERKEZ', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (126, N'D??YAD??N', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (127, N'DO??UBEYAZIT', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (128, N'ELE??K??RT', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (129, N'HAMUR', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (130, N'PATNOS', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (131, N'TA??LI??AY', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (132, N'TUTAK', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (133, N'AYVALIK', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (134, N'BALIKES??R MERKEZ', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (135, N'BALYA', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (136, N'BANDIRMA', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (137, N'B??GAD????', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (138, N'BURHAN??YE', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (139, N'DURSUNBEY', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (140, N'EDREM??T', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (141, N'ERDEK', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (142, N'G??NEN', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (143, N'HAVRAN', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (144, N'??VR??ND??', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (145, N'KEPSUT', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (146, N'MANYAS', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (147, N'SAVA??TEPE', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (148, N'SINDIRGI', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (149, N'SUSURLUK', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (150, N'MARMARA', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (151, N'G??ME??', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (152, N'BARTIN MERKEZ', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (153, N'KURUCA????LE', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (154, N'ULUS', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (155, N'AMASRA', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (156, N'BATMAN MERKEZ', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (157, N'BE????R??', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (158, N'GERC????', N'Aciklama', 72)
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
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (164, N'DEM??R??Z??', N'Aciklama', 69)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (165, N'BOLU MERKEZ', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (166, N'GEREDE', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (167, N'G??YN??K', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (168, N'KIBRISCIK', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (169, N'MENGEN', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (170, N'MUDURNU', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (171, N'SEBEN', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (172, N'D??RTD??VAN', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (173, N'YEN????A??A', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (174, N'A??LASUN', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (175, N'BUCAK', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (176, N'BURDUR MERKEZ', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (177, N'G??LH??SAR', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (178, N'TEFENN??', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (179, N'YE????LOVA', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (180, N'KARAMANLI', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (181, N'KEMER', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (182, N'ALTINYAYLA', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (183, N'??AVDIR', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (184, N'??ELT??K????', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (185, N'GEML??K', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (186, N'??NEG??L', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (187, N'??ZN??K', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (188, N'KARACABEY', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (189, N'KELES', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (190, N'MUDANYA', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (191, N'MUSTAFA K. PA??A', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (192, N'ORHANEL??', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (193, N'ORHANGAZ??', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (194, N'YEN????EH??R', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (195, N'B??Y??K ORHAN', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (196, N'HARMANCIK', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (197, N'N??L??FER', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (198, N'OSMAN GAZ??', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (199, N'YILDIRIM', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (200, N'G??RSU', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (201, N'KESTEL', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (202, N'B??LEC??K MERKEZ', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (203, N'BOZ??Y??K', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (204, N'G??LPAZARI', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (205, N'OSMANEL??', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (206, N'PAZARYER??', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (207, N'S??????T', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (208, N'YEN??PAZAR', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (209, N'??NH??SAR', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (210, N'B??NG??L MERKEZ', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (211, N'GEN??', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (212, N'KARLIOVA', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (213, N'K??GI', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (214, N'SOLHAN', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (215, N'ADAKLI', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (216, N'YAYLADERE', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (217, N'YED??SU', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (218, N'AD??LCEVAZ', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (219, N'AHLAT', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (220, N'B??TL??S MERKEZ', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (221, N'H??ZAN', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (222, N'MUTK??', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (223, N'TATVAN', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (224, N'G??ROYMAK', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (225, N'DEN??ZL?? MERKEZ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (226, N'ACIPAYAM', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (227, N'BULDAN', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (228, N'??AL', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (229, N'??AMEL??', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (230, N'??ARDAK', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (231, N'????VR??L', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (232, N'G??NEY', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (233, N'KALE', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (234, N'SARAYK??Y', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (235, N'TAVAS', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (236, N'BABADA??', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (237, N'BEK??LL??', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (238, N'HONAZ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (239, N'SER??NH??SAR', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (240, N'AKK??Y', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (241, N'BAKLAN', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (242, N'BEYA??A??', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (243, N'BOZKURT', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (244, N'D??ZCE MERKEZ', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (245, N'AK??AKOCA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (246, N'YI??ILCA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (247, N'CUMAYER??', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (248, N'G??LYAKA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (249, N'????L??ML??', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (250, N'G??M????OVA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (251, N'KAYNA??LI', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (252, N'D??YARBAKIR MERKEZ', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (253, N'B??SM??L', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (254, N'??ERM??K', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (255, N'??INAR', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (256, N'????NG????', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (257, N'D??CLE', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (258, N'ERGAN??', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (259, N'HAN??', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (260, N'HAZRO', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (261, N'KULP', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (262, N'L??CE', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (263, N'S??LVAN', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (264, N'E????L', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (265, N'KOCAK??Y', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (266, N'ED??RNE MERKEZ', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (267, N'ENEZ', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (268, N'HAVSA', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (269, N'??PSALA', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (270, N'KE??AN', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (271, N'LALAPA??A', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (272, N'MER????', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (273, N'UZUNK??PR??', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (274, N'S??LO??LU', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (275, N'ELAZI?? MERKEZ', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (276, N'A??IN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (277, N'BASK??L', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (278, N'KARAKO??AN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (279, N'KEBAN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (280, N'MADEN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (281, N'PALU', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (282, N'S??VR??CE', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (283, N'ARICAK', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (284, N'KOVANCILAR', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (285, N'ALACAKAYA', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (286, N'ERZURUM MERKEZ', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (287, N'PALAND??KEN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (288, N'A??KALE', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (289, N'??AT', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (290, N'HINIS', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (291, N'HORASAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (292, N'OLTU', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (293, N'??SP??R', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (294, N'KARAYAZI', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (295, N'NARMAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (296, N'OLUR', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (297, N'PAS??NLER', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (298, N'??ENKAYA', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (299, N'TEKMAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (300, N'TORTUM', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (301, N'KARA??OBAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (302, N'UZUNDERE', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (303, N'PAZARYOLU', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (304, N'ILICA', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (305, N'K??PR??K??Y', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (306, N'??AYIRLI', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (307, N'ERZ??NCAN MERKEZ', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (308, N'??L????', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (309, N'KEMAH', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (310, N'KEMAL??YE', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (311, N'REFAH??YE', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (312, N'TERCAN', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (313, N'OTLUKBEL??', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (314, N'ESK????EH??R MERKEZ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (315, N'????FTELER', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (316, N'MAHMUD??YE', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (317, N'M??HALI??LIK', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (318, N'SARICAKAYA', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (319, N'SEY??TGAZ??', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (320, N'S??VR??H??SAR', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (321, N'ALPU', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (322, N'BEYL??KOVA', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (323, N'??N??N??', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (324, N'G??NY??Z??', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (325, N'HAN', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (326, N'M??HALGAZ??', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (327, N'ARABAN', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (328, N'??SLAH??YE', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (329, N'N??Z??P', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (330, N'O??UZEL??', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (331, N'YAVUZEL??', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (332, N'??AH??NBEY', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (333, N'??EH??T KAM??L', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (334, N'KARKAMI??', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (335, N'NURDA??I', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (336, N'G??M????HANE MERKEZ', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (337, N'KELK??T', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (338, N'????RAN', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (339, N'TORUL', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (340, N'K??SE', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (341, N'K??RT??N', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (342, N'ALUCRA', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (343, N'BULANCAK', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (344, N'DEREL??', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (345, N'ESP??YE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (346, N'EYNES??L', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (347, N'G??RESUN MERKEZ', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (348, N'G??RELE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (349, N'KE??AP', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (350, N'??EB??NKARAH??SAR', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (351, N'T??REBOLU', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (352, N'P??PAZ??Z', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (353, N'YA??LIDERE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (354, N'??AMOLUK', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (355, N'??ANAK??I', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (356, N'DO??ANKENT', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (357, N'G??CE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (358, N'HAKKAR?? MERKEZ', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (359, N'??UKURCA', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (360, N'??EMD??NL??', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (361, N'Y??KSEKOVA', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (362, N'ALTIN??Z??', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (363, N'D??RTYOL', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (364, N'HATAY MERKEZ', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (365, N'HASSA', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (366, N'??SKENDERUN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (367, N'KIRIKHAN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (368, N'REYHANLI', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (369, N'SAMANDA??', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (370, N'YAYLADA??', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (371, N'ERZ??N', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (372, N'BELEN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (373, N'KUMLU', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (374, N'ISPARTA MERKEZ', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (375, N'ATABEY', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (376, N'KE????BORLU', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (377, N'E????RD??R', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (378, N'GELENDOST', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (379, N'S??N??RKENT', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (380, N'ULUBORLU', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (381, N'YALVA??', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (382, N'AKSU', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (383, N'G??NEN', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (384, N'YEN????AR BADEML??', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (385, N'I??DIR MERKEZ', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (386, N'ARALIK', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (387, N'TUZLUCA', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (388, N'KARAKOYUNLU', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (389, N'AF????N', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (390, N'ANDIRIN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (391, N'ELB??STAN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (392, N'G??KSUN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (393, N'KAHRAMANMARA?? MERKEZ', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (394, N'PAZARCIK', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (395, N'T??RKO??LU', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (396, N'??A??LAYANCER??T', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (397, N'EK??N??Z??', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (398, N'NURHAK', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (399, N'EFLAN??', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (400, N'ESK??PAZAR', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (401, N'KARAB??K MERKEZ', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (402, N'OVACIK', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (403, N'SAFRANBOLU', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (404, N'YEN??CE', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (405, N'ERMENEK', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (406, N'KARAMAN MERKEZ', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (407, N'AYRANCI', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (408, N'KAZIMKARABEK??R', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (409, N'BA??YAYLA', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (410, N'SARIVEL??LER', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (411, N'KARS MERKEZ', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (412, N'ARPA??AY', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (413, N'D??GOR', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (414, N'KA??IZMAN', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (415, N'SARIKAMI??', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (416, N'SEL??M', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (417, N'SUSUZ', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (418, N'AKYAKA', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (419, N'ABANA', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (420, N'KASTAMONU MERKEZ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (421, N'ARA??', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (422, N'AZDAVAY', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (423, N'BOZKURT', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (424, N'C??DE', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (425, N'??ATALZEYT??N', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (426, N'DADAY', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (427, N'DEVREKAN??', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (428, N'??NEBOLU', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (429, N'K??RE', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (430, N'TA??K??PR??', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (431, N'TOSYA', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (432, N'??HSANGAZ??', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (433, N'PINARBA??I', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (434, N'??ENPAZAR', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (435, N'A??LI', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (436, N'DO??ANYURT', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (437, N'HAN??N??', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (438, N'SEYD??LER', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (439, N'B??NYAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (440, N'DEVEL??', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (441, N'FELAH??YE', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (442, N'??NCESU', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (443, N'PINARBA??I', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (444, N'SARIO??LAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (445, N'SARIZ', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (446, N'TOMARZA', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (447, N'YAHYALI', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (448, N'YE????LH??SAR', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (449, N'AKKI??LA', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (450, N'TALAS', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (451, N'KOCAS??NAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (452, N'MEL??KGAZ??', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (453, N'HACILAR', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (454, N'??ZVATAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (455, N'DER??CE', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (456, N'KESK??N', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (457, N'KIRIKKALE MERKEZ', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (458, N'SALAK YURT', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (459, N'BAH????L??', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (460, N'BALI??EYH', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (461, N'??ELEB??', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (462, N'KARAKE????L??', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (463, N'YAH????HAN', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (464, N'KIRKKLAREL?? MERKEZ', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (465, N'BABAESK??', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (466, N'DEM??RK??Y', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (467, N'KOF??AY', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (468, N'L??LEBURGAZ', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (469, N'V??ZE', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (470, N'KIR??EH??R MERKEZ', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (471, N'??????EKDA??I', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (472, N'KAMAN', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (473, N'MUCUR', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (474, N'AKPINAR', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (475, N'AK??AKENT', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (476, N'BOZTEPE', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (477, N'KOCAEL?? MERKEZ', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (478, N'GEBZE', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (479, N'G??LC??K', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (480, N'KANDIRA', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (481, N'KARAM??RSEL', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (482, N'K??RFEZ', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (483, N'DER??NCE', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (484, N'KONYA MERKEZ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (485, N'AK??EH??R', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (486, N'BEY??EH??R', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (487, N'BOZKIR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (488, N'C??HANBEYL??', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (489, N'??UMRA', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (490, N'DO??ANH??SAR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (491, N'ERE??L??', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (492, N'HAD??M', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (493, N'ILGIN', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (494, N'KADINHANI', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (495, N'KARAPINAR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (496, N'KULU', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (497, N'SARAY??N??', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (498, N'SEYD????EH??R', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (499, N'YUNAK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (500, N'AK??REN', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (501, N'ALTINEK??N', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (502, N'DEREBUCAK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (503, N'H??Y??K', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (504, N'KARATAY', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (505, N'MERAM', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (506, N'SEL??UKLU', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (507, N'TA??KENT', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (508, N'AHIRLI', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (509, N'??ELT??K', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (510, N'DERBENT', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (511, N'EM??RGAZ??', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (512, N'G??NEYSINIR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (513, N'HALKAPINAR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (514, N'TUZLUK??U', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (515, N'YALIH??Y??K', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (516, N'K??TAHYA  MERKEZ', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (517, N'ALTINTA??', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (518, N'DOMAN????', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (519, N'EMET', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (520, N'GED??Z', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (521, N'S??MAV', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (522, N'TAV??ANLI', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (523, N'ASLANAPA', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (524, N'DUMLUPINAR', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (525, N'H??SARCIK', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (526, N'??APHANE', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (527, N'??AVDARH??SAR', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (528, N'PAZARLAR', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (529, N'K??L??S MERKEZ', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (530, N'ELBEYL??', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (531, N'MUSABEYL??', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (532, N'POLATEL??', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (533, N'MALATYA MERKEZ', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (534, N'AK??ADA??', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (535, N'ARAPG??R', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (536, N'ARGUVAN', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (537, N'DARENDE', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (538, N'DO??AN??EH??R', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (539, N'HEK??MHAN', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (540, N'P??T??RGE', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (541, N'YE????LYURT', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (542, N'BATTALGAZ??', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (543, N'DO??ANYOL', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (544, N'KALE', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (545, N'KULUNCAK', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (546, N'YAZIHAN', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (547, N'AKH??SAR', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (548, N'ALA??EH??R', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (549, N'DEM??RC??', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (550, N'G??RDES', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (551, N'KIRKA??A??', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (552, N'KULA', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (553, N'MAN??SA MERKEZ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (554, N'SAL??HL??', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (555, N'SARIG??L', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (556, N'SARUHANLI', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (557, N'SELEND??', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (558, N'SOMA', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (559, N'TURGUTLU', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (560, N'AHMETL??', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (561, N'G??LMARMARA', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (562, N'K??PR??BA??I', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (563, N'DER??K', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (564, N'KIZILTEPE', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (565, N'MARD??N MERKEZ', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (566, N'MAZIDA??I', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (567, N'M??DYAT', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (568, N'NUSAYB??N', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (569, N'??MERL??', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (570, N'SAVUR', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (571, N'YE????LL??', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (572, N'MERS??N MERKEZ', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (573, N'ANAMUR', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (574, N'ERDEML??', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (575, N'G??LNAR', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (576, N'MUT', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (577, N'S??L??FKE', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (578, N'TARSUS', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (579, N'AYDINCIK', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (580, N'BOZYAZI', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (581, N'??AMLIYAYLA', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (582, N'BODRUM', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (583, N'DAT??A', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (584, N'FETH??YE', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (585, N'K??YCE????Z', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (586, N'MARMAR??S', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (587, N'M??LAS', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (588, N'MU??LA MERKEZ', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (589, N'ULA', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (590, N'YATA??AN', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (591, N'DALAMAN', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (592, N'KAVAKLI DERE', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (593, N'ORTACA', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (594, N'BULANIK', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (595, N'MALAZG??RT', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (596, N'MU?? MERKEZ', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (597, N'VARTO', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (598, N'HASK??Y', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (599, N'KORKUT', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (600, N'NEV??EH??R MERKEZ', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (601, N'AVANOS', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (602, N'DER??NKUYU', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (603, N'G??L??EH??R', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (604, N'HACIBEKTA??', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (605, N'KOZAKLI', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (606, N'??RG??P', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (607, N'ACIG??L', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (608, N'N????DE MERKEZ', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (609, N'BOR', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (610, N'??AMARDI', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (611, N'ULUKI??LA', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (612, N'ALTUNH??SAR', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (613, N'????FTL??K', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (614, N'AKKU??', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (615, N'AYBASTI', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (616, N'FATSA', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (617, N'G??LK??Y', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (618, N'KORGAN', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (619, N'KUMRU', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (620, N'MESUD??YE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (621, N'ORDU MERKEZ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (622, N'PER??EMBE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (623, N'ULUBEY', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (624, N'??NYE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (625, N'G??LYALI', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (626, N'G??RGENTEPE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (627, N'??AMA??', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (628, N'??ATALPINAR', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (629, N'??AYBA??I', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (630, N'??K??ZCE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (631, N'KABAD??Z', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (632, N'KABATA??', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (633, N'BAH??E', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (634, N'KAD??RL??', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (635, N'OSMAN??YE MERKEZ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (636, N'D??Z??????', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (637, N'HASANBEYL??', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (638, N'SUMBA??', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (639, N'TOPRAKKALE', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (640, N'R??ZE MERKEZ', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (641, N'ARDE??EN', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (642, N'??AMLIHEM????N', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (643, N'??AYEL??', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (644, N'FINDIKLI', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (645, N'??K??ZDERE', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (646, N'KALKANDERE', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (647, N'PAZAR', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (648, N'G??NEYSU', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (649, N'DEREPAZARI', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (650, N'HEM????N', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (651, N'??Y??DERE', N'Aciklama', 53)
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
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (660, N'FER??ZL??', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (661, N'KARAP??R??EK', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (662, N'S??????TL??', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (663, N'ALA??AM', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (664, N'BAFRA', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (665, N'??AR??AMBA', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (666, N'HAVZA', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (667, N'KAVAK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (668, N'LAD??K', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (669, N'SAMSUN MERKEZ', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (670, N'TERME', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (671, N'VEZ??RK??PR??', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (672, N'ASARCIK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (673, N'ONDOKUZMAYIS', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (674, N'SALIPAZARI', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (675, N'TEKKEK??Y', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (676, N'AYVACIK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (677, N'YAKAKENT', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (678, N'AYANCIK', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (679, N'BOYABAT', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (680, N'S??NOP MERKEZ', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (681, N'DURA??AN', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (682, N'ERGELEK', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (683, N'GERZE', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (684, N'T??RKEL??', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (685, N'D??KMEN', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (686, N'SARAYD??Z??', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (687, N'D??VR??????', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (688, N'GEMEREK', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (689, N'G??R??N', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (690, N'HAF??K', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (691, N'??MRANLI', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (692, N'KANGAL', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (693, N'KOYUL H??SAR', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (694, N'S??VAS MERKEZ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (695, N'SU ??EHR??', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (696, N'??ARKI??LA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (697, N'YILDIZEL??', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (698, N'ZARA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (699, N'AKINCILAR', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (700, N'ALTINYAYLA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (701, N'DO??AN??AR', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (702, N'G??LOVA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (703, N'ULA??', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (704, N'BAYKAN', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (705, N'ERUH', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (706, N'KURTALAN', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (707, N'PERVAR??', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (708, N'S????RT MERKEZ', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (709, N'????RVAR??', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (710, N'AYDINLAR', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (711, N'TEK??RDA?? MERKEZ', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (712, N'??ERKEZK??Y', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (713, N'??ORLU', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (714, N'HAYRABOLU', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (715, N'MALKARA', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (716, N'MURATLI', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (717, N'SARAY', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (718, N'??ARK??Y', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (719, N'MARAMARAERE??L??S??', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (720, N'ALMUS', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (721, N'ARTOVA', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (722, N'TOKAT MERKEZ', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (723, N'ERBAA', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (724, N'N??KSAR', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (725, N'RE??AD??YE', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (726, N'TURHAL', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (727, N'Z??LE', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (728, N'PAZAR', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (729, N'YE????LYURT', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (730, N'BA??????FTL??K', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (731, N'SULUSARAY', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (732, N'TRABZON MERKEZ', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (733, N'AK??AABAT', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (734, N'ARAKLI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (735, N'AR????N', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (736, N'??AYKARA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (737, N'MA??KA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (738, N'OF', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (739, N'S??RMENE', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (740, N'TONYA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (741, N'VAKFIKEB??R', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (742, N'YOMRA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (743, N'BE????KD??Z??', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (744, N'??ALPAZARI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (745, N'??AR??IBA??I', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (746, N'DERNEKPAZARI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (747, N'D??ZK??Y', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (748, N'HAYRAT', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (749, N'K??PR??BA??I', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (750, N'TUNCEL?? MERKEZ', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (751, N'??EM????GEZEK', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (752, N'HOZAT', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (753, N'MAZG??RT', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (754, N'NAZ??M??YE', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (755, N'OVACIK', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (756, N'PERTEK', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (757, N'P??L??M??R', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (758, N'BANAZ', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (759, N'E??ME', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (760, N'KARAHALLI', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (761, N'S??VASLI', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (762, N'ULUBEY', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (763, N'U??AK MERKEZ', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (764, N'BA??KALE', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (765, N'VAN MERKEZ', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (766, N'EDREM??T', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (767, N'??ATAK', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (768, N'ERC????', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (769, N'GEVA??', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (770, N'G??RPINAR', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (771, N'MURAD??YE', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (772, N'??ZALP', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (773, N'BAH??ESARAY', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (774, N'??ALDIRAN', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (775, N'SARAY', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (776, N'YALOVA MERKEZ', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (777, N'ALTINOVA', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (778, N'ARMUTLU', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (779, N'??INARCIK', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (780, N'????FTL??KK??Y', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (781, N'TERMAL', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (782, N'AKDA??MADEN??', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (783, N'BO??AZLIYAN', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (784, N'YOZGAT MERKEZ', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (785, N'??AYIRALAN', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (786, N'??EKEREK', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (787, N'SARIKAYA', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (788, N'SORGUN', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (789, N'??EFAATLI', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (790, N'YERK??Y', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (791, N'KADI??EHR??', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (792, N'SARAYKENT', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (793, N'YEN??FAKILI', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (794, N'??AYCUMA', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (795, N'DEVREK', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (796, N'ZONGULDAK MERKEZ', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (797, N'ERE??L??', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (798, N'ALAPLI', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (799, N'G??K??EBEY', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (800, N'??ANAKKALE MERKEZ', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (801, N'AYVACIK', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (802, N'BAYRAM????', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (803, N'B??GA', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (804, N'BOZCAADA', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (805, N'??AN', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (806, N'ECEABAT', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (807, N'EZ??NE', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (808, N'LAPSEK??', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (809, N'YEN??CE', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (810, N'??ANKIRI MERKEZ', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (811, N'??ERKE??', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (812, N'ELD??VAN', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (813, N'ILGAZ', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (814, N'KUR??UNLU', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (815, N'ORTA', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (816, N'??ABAN??Z??', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (817, N'YAPRAKLI', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (818, N'ATKARACALAR', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (819, N'KIZILIRMAK', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (820, N'BAYRAM??REN', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (821, N'KORGUN', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (822, N'ALACA', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (823, N'BAYAT', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (824, N'??ORUM MERKEZ', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (825, N'??KS??PL??', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (826, N'KARGI', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (827, N'MEC??T??Z??', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (828, N'ORTAK??Y', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (829, N'OSMANCIK', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (830, N'SUNGURLU', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (831, N'DODURGA', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (832, N'LA????N', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (833, N'O??UZLAR', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (834, N'ADALAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (835, N'BAKIRK??Y', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (836, N'BE????KTA??', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (837, N'BEYKOZ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (838, N'BEYO??LU', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (839, N'??ATALCA', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (840, N'EM??N??N??', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (841, N'EY??P', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (842, N'FAT??H', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (843, N'GAZ??OSMANPA??A', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (844, N'KADIK??Y', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (845, N'KARTAL', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (846, N'SARIYER', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (847, N'S??L??VR??', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (848, N'????LE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (849, N'??????L??', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (850, N'??SK??DAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (851, N'ZEYT??NBURNU', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (852, N'B??Y??K??EKMECE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (853, N'KA??ITHANE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (854, N'K??????K??EKMECE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (855, N'PEND??K', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (856, N'??MRAN??YE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (857, N'BAYRAMPA??A', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (858, N'AVCILAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (859, N'BA??CILAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (860, N'BAH??EL??EVLER', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (861, N'G??NG??REN', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (862, N'MALTEPE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (863, N'SULTANBEYL??', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (864, N'TUZLA', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (865, N'ESENLER', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (866, N'AL??A??A', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (867, N'BAYINDIR', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (868, N'BERGAMA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (869, N'BORNOVA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (870, N'??E??ME', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (871, N'D??K??L??', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (872, N'FO??A', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (873, N'KARABURUN', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (874, N'KAR??IYAKA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (875, N'KEMALPA??A', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (876, N'KINIK', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (877, N'K??RAZ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (878, N'MENEMEN', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (879, N'??DEM????', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (880, N'SEFER??H??SAR', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (881, N'SEL??UK', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (882, N'T??RE', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (883, N'TORBALI', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (884, N'URLA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (885, N'BEYDA??', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (886, N'BUCA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (887, N'KONAK', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (888, N'MENDERES', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (889, N'BAL??OVA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (890, N'????GL??', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (891, N'GAZ??EM??R', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (892, N'NARLIDERE', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (893, N'G??ZELBAH??E', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (894, N'??ANLIURFA MERKEZ', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (895, N'AK??AKALE', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (896, N'B??REC??K', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (897, N'BOZOVA', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (898, N'CEYLANPINAR', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (899, N'HALFET??', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (900, N'H??LVAN', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (901, N'S??VEREK', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (902, N'SURU??', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (903, N'V??RAN??EH??R', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (904, N'HARRAN', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (905, N'BEYT??????EBAP', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (906, N'??IRNAK MERKEZ', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (907, N'C??ZRE', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (908, N'??D??L', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (909, N'S??LOP??', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (910, N'ULUDERE', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (911, N'G????L??KONAK', N'Aciklama', 73)
GO
SET IDENTITY_INSERT [dbo].[tbl_Ilce] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Kampanyalar] ON 
GO
INSERT [dbo].[tbl_Kampanyalar] ([KampanyaId], [KampanyaBilgileri], [KampanyaIndirimOran], [KampanyaBaslangicZaman], [KampanyaBitisTarihi], [KampanyaTanim]) VALUES (2, N'K???? Bah??esi ??ndirimi', 25, CAST(N'2022-09-01T00:00:00.000' AS DateTime), CAST(N'2023-02-28T00:00:00.000' AS DateTime), N'K????Bah??esi')
GO
INSERT [dbo].[tbl_Kampanyalar] ([KampanyaId], [KampanyaBilgileri], [KampanyaIndirimOran], [KampanyaBaslangicZaman], [KampanyaBitisTarihi], [KampanyaTanim]) VALUES (4, N'Y??lba???? E??lencesi', 30, CAST(N'2022-12-01T00:00:00.000' AS DateTime), CAST(N'2022-12-31T00:00:00.000' AS DateTime), N'YeniY??l')
GO
INSERT [dbo].[tbl_Kampanyalar] ([KampanyaId], [KampanyaBilgileri], [KampanyaIndirimOran], [KampanyaBaslangicZaman], [KampanyaBitisTarihi], [KampanyaTanim]) VALUES (5, N'AraTatil Kampanyas??', 18, CAST(N'2023-01-15T00:00:00.000' AS DateTime), CAST(N'2023-02-15T00:00:00.000' AS DateTime), N'AraTatil')
GO
SET IDENTITY_INSERT [dbo].[tbl_Kampanyalar] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Kullanici] ON 
GO
INSERT [dbo].[tbl_Kullanici] ([KullaniciId], [KullaniciTipiId], [KullaniciAd], [KullaniciParola], [KullaniciEposta], [KullaniciEpostaOnayKod], [KullaniciEpostaOnay], [KullaniciKay??tTarihi], [KullaniciSonGirisTarihi], [DilId], [ResimId]) VALUES (3, 1, N'Admin', N'123456789', N'admin@gmail.com', N'1234', 1, CAST(N'2022-11-08T00:00:00.000' AS DateTime), CAST(N'2022-11-08T00:00:00.000' AS DateTime), 1, NULL)
GO
INSERT [dbo].[tbl_Kullanici] ([KullaniciId], [KullaniciTipiId], [KullaniciAd], [KullaniciParola], [KullaniciEposta], [KullaniciEpostaOnayKod], [KullaniciEpostaOnay], [KullaniciKay??tTarihi], [KullaniciSonGirisTarihi], [DilId], [ResimId]) VALUES (4, 2, N'Kadir', N'1234', N'kadir@gmail.com', N'1235', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-02-01T00:00:00.000' AS DateTime), 1, NULL)
GO
INSERT [dbo].[tbl_Kullanici] ([KullaniciId], [KullaniciTipiId], [KullaniciAd], [KullaniciParola], [KullaniciEposta], [KullaniciEpostaOnayKod], [KullaniciEpostaOnay], [KullaniciKay??tTarihi], [KullaniciSonGirisTarihi], [DilId], [ResimId]) VALUES (5, 2, N'Omer', N'456', N'Omer@gmail.com', N'1236', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2022-02-01T00:00:00.000' AS DateTime), 1, NULL)
GO
INSERT [dbo].[tbl_Kullanici] ([KullaniciId], [KullaniciTipiId], [KullaniciAd], [KullaniciParola], [KullaniciEposta], [KullaniciEpostaOnayKod], [KullaniciEpostaOnay], [KullaniciKay??tTarihi], [KullaniciSonGirisTarihi], [DilId], [ResimId]) VALUES (7, 2, N'Ahmet', N'789', N'ahmet@gmail.com', N'1237', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1, NULL)
GO
INSERT [dbo].[tbl_Kullanici] ([KullaniciId], [KullaniciTipiId], [KullaniciAd], [KullaniciParola], [KullaniciEposta], [KullaniciEpostaOnayKod], [KullaniciEpostaOnay], [KullaniciKay??tTarihi], [KullaniciSonGirisTarihi], [DilId], [ResimId]) VALUES (8, 2, N'Mehmet', N'000', N'mehmet@gmail.com', N'852', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, NULL)
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
INSERT [dbo].[tbl_OdaDurum] ([OdaId], [DurumKategoriId]) VALUES (1, 1)
GO
INSERT [dbo].[tbl_OdaDurum] ([OdaId], [DurumKategoriId]) VALUES (2, 1)
GO
INSERT [dbo].[tbl_OdaDurum] ([OdaId], [DurumKategoriId]) VALUES (3, 2)
GO
INSERT [dbo].[tbl_OdaDurum] ([OdaId], [DurumKategoriId]) VALUES (4, 1)
GO
INSERT [dbo].[tbl_OdaDurum] ([OdaId], [DurumKategoriId]) VALUES (5, 6)
GO
INSERT [dbo].[tbl_OdaDurum] ([OdaId], [DurumKategoriId]) VALUES (6, 6)
GO
INSERT [dbo].[tbl_OdaDurum] ([OdaId], [DurumKategoriId]) VALUES (7, 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_Odalar] ON 
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaEbatMsqr], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (1, 15, 1, CAST(120.00 AS Decimal(8, 2)), N'Single', 1, 1, 0, 1, 0, 0, 1, N'Single Room', N'15', N'101', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaEbatMsqr], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (2, 20, 2, CAST(200.00 AS Decimal(8, 2)), N'Double', 1, 1, 1, 1, 0, 1, 1, N'Double', N'20', N'201', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaEbatMsqr], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (3, 17, 1, CAST(125.00 AS Decimal(8, 2)), N'Single', 1, 1, 0, 1, 0, 0, 1, N'Single', N'17', N'102', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaEbatMsqr], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (4, 17, 1, CAST(125.00 AS Decimal(8, 2)), N'Single', 1, 1, 0, 1, 0, 1, 1, N'Single', N'17', N'103', 1)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaEbatMsqr], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (5, 22, 2, CAST(210.00 AS Decimal(8, 2)), N'Double', 1, 1, 1, 1, 0, 1, 1, N'Double', N'22', N'203', 2)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaEbatMsqr], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (6, 35, 3, CAST(320.00 AS Decimal(8, 2)), N'King', 1, 1, 1, 1, 1, 1, 1, N'King', N'35', N'301', 3)
GO
INSERT [dbo].[tbl_Odalar] ([OdaId], [OdaEbatMsqr], [OdaTipiId], [OdaFiyat], [OdaYatakTipi], [OdaMiniBarOk], [OdaKlimaOk], [OdaKurutmaOk], [OdaWifiOk], [OdaKasaOk], [OdaBalkonOk], [OdaTvOk], [OdaAciklama], [OdaEbatBoyut], [OdaNo], [OdaKat]) VALUES (7, 38, 3, CAST(350.00 AS Decimal(8, 2)), N'King', 1, 1, 1, 1, 1, 1, 1, N'King', N'38', N'302', 3)
GO
SET IDENTITY_INSERT [dbo].[tbl_Odalar] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_OdaSatisTip] ON 
GO
INSERT [dbo].[tbl_OdaSatisTip] ([OdaSatisTip], [OdaSatisTipAd], [OdaSatisTipAciklama]) VALUES (1, N'Tam Pansiyon', N'Tam Pansiyon Odalar')
GO
INSERT [dbo].[tbl_OdaSatisTip] ([OdaSatisTip], [OdaSatisTipAd], [OdaSatisTipAciklama]) VALUES (2, N'All Inclusive', N'Her??ey Dahil Odalar')
GO
INSERT [dbo].[tbl_OdaSatisTip] ([OdaSatisTip], [OdaSatisTipAd], [OdaSatisTipAciklama]) VALUES (3, N'Oda- Kahvalt??', N'Sadece Oda Kahvalt?? Dahil')
GO
INSERT [dbo].[tbl_OdaSatisTip] ([OdaSatisTip], [OdaSatisTipAd], [OdaSatisTipAciklama]) VALUES (4, N'Yar??m Pansiyon', N'Sadece Ak??am Yeme??i Dahil')
GO
SET IDENTITY_INSERT [dbo].[tbl_OdaSatisTip] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_OdaTipi] ON 
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (1, N'Single', N'Tek Ki??ilik Yatak')
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (2, N'Double', N'??ift Ki??ilik Tek YAtak')
GO
INSERT [dbo].[tbl_OdaTipi] ([OdaTipiId], [OdaTipiAd], [OdaTipiAciklama]) VALUES (3, N'King', N'Kral Dairesi')
GO
SET IDENTITY_INSERT [dbo].[tbl_OdaTipi] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Personel] ON 
GO
INSERT [dbo].[tbl_Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelTcKimlik], [PersonelDogumTarihi], [PersonelUyrukId], [PersonelEposta], [PersonelTelefon], [PersonelPasaportNo], [CinsiyetId], [PersonelIseGirisTarihi], [PersonelIstenCikisTarihi], [PersonelSaatlikUcret], [PersonelMaas], [PersonelSicilNo], [GorevId], [PersonelKategoriID], [PersonelEngelDurumu], [PersonelHesKodu], [IlId], [IlceId], [UlkeId], [PersonelAdres], [PersonelAcilDurumKisiAd], [PersonelAcilDurumKisiTelefon], [ResimId]) VALUES (5, N'Eray', N'Kotan', N'12345678910', CAST(N'1997-01-15T00:00:00.000' AS DateTime), 1, N'eray@gmail.com', N'555 444 33 22 ', NULL, 1, CAST(N'2015-01-01T00:00:00.000' AS DateTime), NULL, CAST(200.00 AS Decimal(8, 2)), CAST(50000.00 AS Decimal(8, 2)), N'123', 1, 2, 0, N'A-1234', 34, 23, 1, N'Dudullu', NULL, NULL, 1)
GO
INSERT [dbo].[tbl_Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelTcKimlik], [PersonelDogumTarihi], [PersonelUyrukId], [PersonelEposta], [PersonelTelefon], [PersonelPasaportNo], [CinsiyetId], [PersonelIseGirisTarihi], [PersonelIstenCikisTarihi], [PersonelSaatlikUcret], [PersonelMaas], [PersonelSicilNo], [GorevId], [PersonelKategoriID], [PersonelEngelDurumu], [PersonelHesKodu], [IlId], [IlceId], [UlkeId], [PersonelAdres], [PersonelAcilDurumKisiAd], [PersonelAcilDurumKisiTelefon], [ResimId]) VALUES (6, N'Kadir', N'Ko??ar', N'12345678900', CAST(N'1997-04-17T00:00:00.000' AS DateTime), 1, N'kadir@gmail.com', N'555 666 77 88', NULL, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, CAST(50.00 AS Decimal(8, 2)), CAST(10000.00 AS Decimal(8, 2)), N'456', 2, 1, 0, N'B-1234', 34, 23, 1, N'??ekmek??y', NULL, NULL, 1)
GO
INSERT [dbo].[tbl_Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelTcKimlik], [PersonelDogumTarihi], [PersonelUyrukId], [PersonelEposta], [PersonelTelefon], [PersonelPasaportNo], [CinsiyetId], [PersonelIseGirisTarihi], [PersonelIstenCikisTarihi], [PersonelSaatlikUcret], [PersonelMaas], [PersonelSicilNo], [GorevId], [PersonelKategoriID], [PersonelEngelDurumu], [PersonelHesKodu], [IlId], [IlceId], [UlkeId], [PersonelAdres], [PersonelAcilDurumKisiAd], [PersonelAcilDurumKisiTelefon], [ResimId]) VALUES (7, N'??mer', N'??zt??rk', N'98765432100', CAST(N'1997-05-24T00:00:00.000' AS DateTime), 1, N'omer@gmail.com', N'555 555 55 55', NULL, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, CAST(50.00 AS Decimal(8, 2)), CAST(10000.00 AS Decimal(8, 2)), N'789', 3, 11, 0, N'C-1234', 34, 23, 1, N'??ekmek??y', NULL, NULL, 1)
GO
INSERT [dbo].[tbl_Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelTcKimlik], [PersonelDogumTarihi], [PersonelUyrukId], [PersonelEposta], [PersonelTelefon], [PersonelPasaportNo], [CinsiyetId], [PersonelIseGirisTarihi], [PersonelIstenCikisTarihi], [PersonelSaatlikUcret], [PersonelMaas], [PersonelSicilNo], [GorevId], [PersonelKategoriID], [PersonelEngelDurumu], [PersonelHesKodu], [IlId], [IlceId], [UlkeId], [PersonelAdres], [PersonelAcilDurumKisiAd], [PersonelAcilDurumKisiTelefon], [ResimId]) VALUES (8, N'Ahmet', N'Ahmet', N'78945612300', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'ahmet@gmail.com', N'555 777 77 77 ', NULL, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, CAST(40.00 AS Decimal(8, 2)), CAST(7000.00 AS Decimal(8, 2)), N'987', 4, 4, 0, N'D-1234', 34, 23, 1, N'Dudullu', NULL, NULL, 1)
GO
INSERT [dbo].[tbl_Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelTcKimlik], [PersonelDogumTarihi], [PersonelUyrukId], [PersonelEposta], [PersonelTelefon], [PersonelPasaportNo], [CinsiyetId], [PersonelIseGirisTarihi], [PersonelIstenCikisTarihi], [PersonelSaatlikUcret], [PersonelMaas], [PersonelSicilNo], [GorevId], [PersonelKategoriID], [PersonelEngelDurumu], [PersonelHesKodu], [IlId], [IlceId], [UlkeId], [PersonelAdres], [PersonelAcilDurumKisiAd], [PersonelAcilDurumKisiTelefon], [ResimId]) VALUES (9, N'Mehmet', N'Mehmet', N'78945632100', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'mehmet@gmail.com', N'555 777 88 99', NULL, 1, CAST(N'2016-01-01T00:00:00.000' AS DateTime), NULL, CAST(40.00 AS Decimal(8, 2)), CAST(7000.00 AS Decimal(8, 2)), N'654', 5, 12, 0, N'E-1234', 34, 23, 1, N'Dudullu', NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Personel] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_PersonelKategori] ON 
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (1, N'Resepsiyon', N'Resepsiyon G??revlisi')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (2, N'M??d??r', N'Otel M??d??r??')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (3, N'Garson', N'Garson')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (4, N'Temizlik G??revlisi', N'Temizlik G??revlisi')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (5, N'A??????', N'A??????')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (6, N'Elektrik??i', N'Elektrik ????leri Sorumlusu')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (7, N'Bilgi ????lem', N'Bilgi ????lem Sorumlusu')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (8, N'G??venlik', N'G??venlik Personeli')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (9, N'Vale', N'Vale ????lemleri Personeli')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (10, N'Stajyer', N'Stajyer Personel')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (11, N'Muhasebe', N'Muhasebe')
GO
INSERT [dbo].[tbl_PersonelKategori] ([PersonelKategoriId], [PersonelKategoriTip], [Aciklama]) VALUES (12, N'??nsan Kayaklar??', N'??nsan Kaynaklar??')
GO
SET IDENTITY_INSERT [dbo].[tbl_PersonelKategori] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Resimler] ON 
GO
INSERT [dbo].[tbl_Resimler] ([ResimId], [ResimUrlAdres], [ResimAciklama], [ResimAktifOk], [ResimAlternatifText]) VALUES (1, N'abc', N'abc', 1, N'abc')
GO
SET IDENTITY_INSERT [dbo].[tbl_Resimler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Ulke] ON 
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (1, N'T??RK??YE', N'TR', N'90')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (2, N'??NG??LTERE', N'GB', N'44')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (3, N'ALMANYA', N'DE', N'49')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (4, N'AMER??KA', N'US', N'1')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (5, N'FRANSA', N'FR', N'33')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (6, N'RUSYA', N'RU', N'70')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (7, N'YUNAN??STAN', N'GR', N'30')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (8, N'JAPONYA', N'JP', N'81')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (9, N'????N', N'CH', N'86')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (10, N'??SRA??L', N'IL', N'972')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (11, N'??TALYA', N'IT', N'39')
GO
INSERT [dbo].[tbl_Ulke] ([UlkeId], [UlkeAd], [UlkeKisaKod], [UlkeTelefonKod]) VALUES (12, N'PAK??STAN', N'PK', N'92')
GO
SET IDENTITY_INSERT [dbo].[tbl_Ulke] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Vardiya] ON 
GO
INSERT [dbo].[tbl_Vardiya] ([VardiyaId], [VardiyaTipi], [VardiyaBaslangicSaati], [VardiyaBitisSaati]) VALUES (1, N'SABAH', CAST(N'08:00:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[tbl_Vardiya] ([VardiyaId], [VardiyaTipi], [VardiyaBaslangicSaati], [VardiyaBitisSaati]) VALUES (2, N'AK??AM', CAST(N'16:00:00' AS Time), CAST(N'00:00:00' AS Time))
GO
INSERT [dbo].[tbl_Vardiya] ([VardiyaId], [VardiyaTipi], [VardiyaBaslangicSaati], [VardiyaBitisSaati]) VALUES (3, N'GECE', CAST(N'00:00:00' AS Time), CAST(N'08:00:00' AS Time))
GO
SET IDENTITY_INSERT [dbo].[tbl_Vardiya] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Yetkiler] ON 
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (1, N'Y??netim', N'Y??netici Yetkileri', N'999', N'999')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (2, N'Muhasebe', N'Muhasebe Yetkileri', N'277', N'277')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (3, N'G??venlik', N'G??venlik Yetkileri', N'377', N'377')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (4, N'Bilgi ????lem ', N'IT Yetkileri', N'499', N'499')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (5, N'Sat??n Alma', N'Sat??n Alma Yetkileri', N'577', N'577')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (6, N'Konsinye', N'Konsinye Yetkileri', N'677', N'677')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (7, N'??nsan Kaynaklar??', N'HR Yetkileri', N'799', N'799')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (8, N'Sat???? ve Pazarlama', N'Sat???? ve Pazarlama Yetkileri', N'877', N'877')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (9, N'??n B??ro', N'??n b??reo ve Desk Yetkileri', N'977', N'977')
GO
INSERT [dbo].[tbl_Yetkiler] ([YetkiId], [YetkiAd], [YetkiAciklama], [YetkiGuvenlikKod], [YetkiAccessKod]) VALUES (10, N'Temizlik', N'Temizlik', N'111', N'111')
GO
SET IDENTITY_INSERT [dbo].[tbl_Yetkiler] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbl_Musteriler]    Script Date: 9.11.2022 19:57:45 ******/
ALTER TABLE [dbo].[tbl_Musteriler] ADD  CONSTRAINT [IX_tbl_Musteriler] UNIQUE NONCLUSTERED 
(
	[MusteriTCKimlik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbl_Personel]    Script Date: 9.11.2022 19:57:45 ******/
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
USE [master]
GO
ALTER DATABASE [DB_Bilgi_Hotel] SET  READ_WRITE 
GO
