USE [master]
GO
/****** Object:  Database [Haba]    Script Date: 22/03/2023 18:55:22 ******/
CREATE DATABASE [Haba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Haba', FILENAME = N'C:\Program Files\Microsoft SQL Server 2019 Express\MSSQL15.SQLEXPRESS\MSSQL\DATA\Haba.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Haba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server 2019 Express\MSSQL15.SQLEXPRESS\MSSQL\DATA\Haba_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Haba] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Haba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Haba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Haba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Haba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Haba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Haba] SET ARITHABORT OFF 
GO
ALTER DATABASE [Haba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Haba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Haba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Haba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Haba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Haba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Haba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Haba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Haba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Haba] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Haba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Haba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Haba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Haba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Haba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Haba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Haba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Haba] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Haba] SET  MULTI_USER 
GO
ALTER DATABASE [Haba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Haba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Haba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Haba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Haba] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Haba] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Haba] SET QUERY_STORE = OFF
GO
USE [Haba]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 22/03/2023 18:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[content_id] [int] IDENTITY(1,1) NOT NULL,
	[section_id] [int] NULL,
	[header] [varchar](255) NULL,
	[title] [varchar](255) NULL,
	[description] [varchar](max) NULL,
	[image] [varchar](max) NULL,
	[url] [varchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [varchar](100) NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [varchar](100) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__Content__655FE510A0D236DF] PRIMARY KEY CLUSTERED 
(
	[content_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 22/03/2023 18:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[menu_id] [int] IDENTITY(1,1) NOT NULL,
	[menu_name] [varchar](100) NULL,
	[status] [bit] NULL,
	[created_at] [datetime] NULL,
	[created_by] [varchar](100) NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [varchar](100) NULL,
 CONSTRAINT [PK__Menu__4CA0FADC0BC66416] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 22/03/2023 18:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[section_id] [int] IDENTITY(1,1) NOT NULL,
	[menu_id] [int] NULL,
	[section_name] [varchar](100) NULL,
	[section_number] [int] NULL,
	[created_at] [datetime] NULL,
	[created_by] [varchar](100) NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [varchar](100) NULL,
	[section_approve] [int] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__Section__F842676A49FED687] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22/03/2023 18:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](100) NULL,
	[password] [varchar](255) NULL,
	[role] [varchar](50) NULL,
	[created_at] [datetime] NULL,
	[created_by] [varchar](100) NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [varchar](100) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__User__B9BE370F5CBA3204] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (8, 1, N'Solusi Tepat Belanja Hemat dan Cepat.', N'-', N'Membantu para pelaku usaha dalam melakukan pengadaan barang dengan proses belanja yang TEPAT, HEMAT, dan CEPAT untuk mendapatkan keuntungan maksimal.

#PastiLebihUntung', N'/cover/img/a32efcf3-8f0b-48f9-8c2d-e7c2fb9f9882_hero-homepage-desk-illustration.png', N'https://play.google.com/store/apps/details?id=com.dataprods.scs&pli=1', CAST(N'2023-03-20T22:34:48.230' AS DateTime), N'bagas.tampan@projectkita.id', NULL, NULL, 1)
INSERT [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (9, 2, N'Apa itu Habaku?', N'-', N'Habaku adalah B2B marketplace untuk pelaku usaha retail yang menyediakan produk kesehatan, kecantikan serta mom & baby untuk mendapatkan produk yang berkualitas dan beragam dengan jumlah yang tidak terbatas dan harga bersahabat.

Kami mengutamakan kepuasan pelanggan dengan menyediakan platform belanja yang mudah diakses, proses belanja yang mudah, pilihan metode pembayaran yang akurat, serta pengiriman yang aman.', N'/cover/img/313fc14a-c246-436b-ba6c-2cc44539afac_about-habaku-illustration.png', N'https://www.Test.com', CAST(N'2023-03-20T22:36:51.570' AS DateTime), N'bagas.tampan@projectkita.id', NULL, NULL, 1)
INSERT [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (10, 3, N'Kenapa Harus Belanja di Habaku?', N'Belanja Lebih Mudah', N'Belanja kapan saja dengan pembayaran yang mudah, serta pengiriman yang cepat.', N'/cover/img/993ae23d-6ed3-4e3c-b44c-724e508e7b44_easyuse-illustration.png', N'https://www.test.com', CAST(N'2023-03-20T22:38:00.883' AS DateTime), N'bagas.tampan@projectkita.id', NULL, NULL, 1)
INSERT [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (11, 3, N'Kenapa Harus Belanja di Habaku?', N'Banyak Penawaran Eksklusif', N'Berbagai tawaran eksklusif dari mulai diskon produk, voucher spesial, hingga gratis ongkir.', N'/cover/img/08a71c05-b56b-47d2-bb81-5a984dc41430_exclusive-deals-illustration.png', N'https://www.test.com', CAST(N'2023-03-20T22:43:12.150' AS DateTime), N'bagas.tampan@projectkita.id', NULL, NULL, 1)
INSERT [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (12, 3, N'Kenapa Harus Belanja di Habaku?', N'Bonus dan Reward', N'Semakin sering belanja, semakin banyak peluang untuk dapat bonus dan reward spesial.', N'/cover/img/7e1e0edb-2e69-43b1-bef7-5e0ff0a9e205_bonus-rewards-illustration.png', N'https://www.test.com', CAST(N'2023-03-20T22:43:52.103' AS DateTime), N'bagas.tampan@projectkita.id', NULL, NULL, 1)
INSERT [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (13, 4, N'Apa Kata Mereka ?', N'Bagas', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam velit leo, tincidunt a tempus quis, euismod non elit. Suspendisse ligula est, dignissim ut nisi sed, blandit ultrices purus. Sed at.', N'/cover/img/9043f2dc-b551-435a-85c9-087667c11503_3d-avatar-1.png', N'https://www.test.com', CAST(N'2023-03-22T15:18:00.343' AS DateTime), N'bagas.tampan@projectkita.id', NULL, NULL, 1)
INSERT [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (14, 4, N'Apa Kata Mereka ?', N'Wijaya', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam velit leo, tincidunt a tempus quis, euismod non elit. Suspendisse ligula est, dignissim ut nisi sed, blandit ultrices purus. Sed at.', N'/cover/img/22a73e3f-2283-474a-8de3-ae6b63d5389f_3d-avatar-2.png', N'https://www.test.com', CAST(N'2023-03-22T15:18:34.500' AS DateTime), N'bagas.tampan@projectkita.id', NULL, NULL, 1)
INSERT [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (15, 4, N'Apa Kata Mereka ?', N'Jaya', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam velit leo, tincidunt a tempus quis, euismod non elit. Suspendisse ligula est, dignissim ut nisi sed, blandit ultrices purus. Sed at.', N'/cover/img/77a4add0-5b6f-426b-bd52-3b12dcc9913e_3d-avatar-3.png', N'https://www.test.com', CAST(N'2023-03-22T15:19:02.637' AS DateTime), N'bagas.tampan@projectkita.id', NULL, NULL, 1)
INSERT [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (16, 4, N'Apa Kata Mereka ?', N'gaswi', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam velit leo, tincidunt a tempus quis, euismod non elit. Suspendisse ligula est, dignissim ut nisi sed, blandit ultrices purus. Sed at.', N'/cover/img/4786a773-45d8-4532-b023-6d0aa2917579_3d-avatar-1.png', N'https://www.test.com', CAST(N'2023-03-22T15:19:36.597' AS DateTime), N'bagas.tampan@projectkita.id', NULL, NULL, 1)
INSERT [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (17, 5, N'Download Aplikasi Habaku Sekarang!', N'-', N'Dapatkan voucher spesial untuk pengguna pertama, dan promo menarik lainnya!', N'/cover/img/b8b27987-f93e-4d89-a42b-5ec3d78907d1_phone-barcode-desk-illustration.png', N'https://play.google.com/store/apps/details?id=com.dataprods.scs', CAST(N'2023-03-22T15:21:04.913' AS DateTime), N'bagas.tampan@projectkita.id', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1, N'Beranda', 1, CAST(N'2023-03-04T11:51:29.220' AS DateTime), N'Bagas Luar Biasa Tampan', NULL, NULL)
INSERT [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (2, N'Produk', 1, CAST(N'2023-03-04T11:59:49.590' AS DateTime), N'Bagas Yang Paling Tampan', CAST(N'2023-03-12T22:41:40.333' AS DateTime), N'bagas.tampan@projectkita.id')
INSERT [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (3, N'Artikel', 1, CAST(N'2023-03-04T13:40:22.387' AS DateTime), N'Bagas Mempesona', NULL, NULL)
INSERT [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (4, N'Tentang Kami', 1, CAST(N'2023-03-04T15:04:57.567' AS DateTime), N'Bagas Wijaya', CAST(N'2023-03-12T21:17:50.060' AS DateTime), N'bagas.tampan@projectkita.id')
INSERT [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (5, N'Hubungi Kami', 1, CAST(N'2023-03-14T13:50:00.000' AS DateTime), N'Bagas GG', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (1, 1, N'Section 1', 1, CAST(N'2023-03-11T13:04:29.253' AS DateTime), N'Bagas Luar Biasa', CAST(N'2023-03-15T13:12:11.373' AS DateTime), N'bagas.tampan@projectkita.id', 1, 1)
INSERT [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (2, 1, N'Section 2', 2, CAST(N'2023-03-12T11:15:53.220' AS DateTime), N'Bagas Tampan', NULL, NULL, 1, 1)
INSERT [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (3, 1, N'Section 3', 3, CAST(N'2023-03-12T11:16:17.440' AS DateTime), N'Bagas Tampan', NULL, NULL, 3, 1)
INSERT [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (4, 1, N'Section 4', 4, CAST(N'2023-03-14T13:42:47.000' AS DateTime), N'Bagas Tampan', NULL, NULL, 10, 1)
INSERT [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (5, 1, N'Section 5', 5, CAST(N'2023-03-14T13:44:12.000' AS DateTime), N'Bagas Tampan', NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Section] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [user_name], [password], [role], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (1, N'bagas.tampan@projectkita.id', N'Admin123', N'SuperAdmin', CAST(N'2023-03-09T20:29:44.300' AS DateTime), N'Bagas Amazing', CAST(N'2023-03-09T21:57:59.440' AS DateTime), N'string', 1)
INSERT [dbo].[User] ([user_id], [user_name], [password], [role], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (2, N'Nuari Project2', N'12345678', N'Super Admin1', CAST(N'2023-03-10T00:03:14.247' AS DateTime), N'Farhan', NULL, NULL, 1)
INSERT [dbo].[User] ([user_id], [user_name], [password], [role], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (3, N'Bagas Lagi', N'Admin123321', N'Hamba Allah', CAST(N'2023-03-10T00:14:19.113' AS DateTime), N'Hamba Allah', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Content]  WITH CHECK ADD  CONSTRAINT [FK_CONTENT_SECTION] FOREIGN KEY([section_id])
REFERENCES [dbo].[Section] ([section_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Content] CHECK CONSTRAINT [FK_CONTENT_SECTION]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_SECTION_MENU] FOREIGN KEY([menu_id])
REFERENCES [dbo].[Menu] ([menu_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_SECTION_MENU]
GO
USE [master]
GO
ALTER DATABASE [Haba] SET  READ_WRITE 
GO
