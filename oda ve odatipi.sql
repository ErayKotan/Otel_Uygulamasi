USE [DB_Bilgi_Hotel]
GO
/****** Object:  Table [dbo].[tbl_Odalar]    Script Date: 13.11.2022 00:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Odalar](
	[OdaId] [int] IDENTITY(401,1) NOT NULL,
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
/****** Object:  Table [dbo].[tbl_OdaTipi]    Script Date: 13.11.2022 00:28:38 ******/
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
ALTER TABLE [dbo].[tbl_Odalar]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Odalar_tbl_OdaTipi] FOREIGN KEY([OdaTipiId])
REFERENCES [dbo].[tbl_OdaTipi] ([OdaTipiId])
GO
ALTER TABLE [dbo].[tbl_Odalar] CHECK CONSTRAINT [FK_tbl_Odalar_tbl_OdaTipi]
GO
