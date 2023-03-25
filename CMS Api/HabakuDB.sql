/*
 Navicat Premium Data Transfer

 Source Server         : Latihan
 Source Server Type    : SQL Server
 Source Server Version : 15002000 (15.00.2000)
 Source Host           : localhost:1433
 Source Catalog        : HabakuDB
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000 (15.00.2000)
 File Encoding         : 65001

 Date: 25/03/2023 14:37:48
*/


-- ----------------------------
-- Table structure for Content
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Content]') AND type IN ('U'))
	DROP TABLE [dbo].[Content]
GO

CREATE TABLE [dbo].[Content] (
  [content_id] int  IDENTITY(1,1) NOT NULL,
  [section_id] int  NULL,
  [header] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [title] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [image] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [url] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_at] datetime  NULL,
  [created_by] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [modified_at] datetime  NULL,
  [modified_by] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[Content] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Content
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Content] ON
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'1', N'1', N'Solusi Belanja Hemat dan Mudah', N'Ini Tittle', N'Membantu pengadaan barang para pelaku usaha di bidang kesehatan dan kecantikan.

Dapatkan pengalaman belanja terbaik untuk kebutuhan usaha Anda bersama kami!', N'/cover/img/941958c9-59b8-403a-bc20-273a9c7899ea_hero-homepage-desk-illustration.png', N'https://google.com', N'2023-03-22 19:49:17.883', N'bagas.tampan@projectkita.id', N'2023-03-24 00:47:53.250', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'2', N'2', N'Apa itu Habaku?', N'Ini Tittle Section 2', N'Habaku - B2B Marketplace bagi pelaku usaha retail di bidang kesehatan dan kecantikan yang menawarkan kemudahan serta fleksibilitas dalam memperoleh produk berkualitas asli dengan harga yang bersahabat.

Nikmati pengalaman belanja kebutuhan toko dengan mudah dalam satu genggaman dengan pilihan metode pembayaran beragam serta pengiriman yang aman. Kepuasan Anda adalah prioritas kami!', N'/cover/img/c83fdc44-e223-4f60-b28e-4b66fe836cb2_about-habaku-illustration.png', N'https://google.com', N'2023-03-22 19:50:45.787', N'bagas.tampan@projectkita.id', N'2023-03-24 01:02:49.047', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'3', N'3', N'Kenapa Harus Belanja di Habaku?', N'Belanja Lebih Mudah', N'Belanja dari banyak supplier dalam satu genggaman dengan beragam metode pembayaran.', N'/cover/img/6720d952-061b-4e88-9889-3fa5a56b09de_easyuse-illustration.png', N'https://google.com', N'2023-03-24 01:12:41.167', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'4', N'3', N'Kenapa Harus Belanja di Habaku?', N'Banyak Penawaran Eksklusif', N'Berbagai promo menarik, mulai dari diskon produk, voucher spesial, hingga gratis ongkir untuk setiap pembelian.', N'/cover/img/3dc31999-9f17-4dca-829d-a782c6c750a7_exclusive-deals-illustration.png', N'https://google.com', N'2023-03-24 01:12:41.167', N'bagas.tampan@projectkita.id', N'2023-03-24 01:31:11.870', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'5', N'3', N'Kenapa Harus Belanja di Habaku?', N'Bonus dan Reward', N'Semakin sering belanja, semakin banyak peluang untuk mendapatkan manfaat ekstra dari pembelian yang Anda lakukan.', N'/cover/img/e8cea74c-e220-4589-b85a-ea977b71c5d5_bonus-rewards-illustration.png', N'https://google.com', N'2023-03-24 01:12:41.167', N'bagas.tampan@projectkita.id', N'2023-03-24 01:32:38.550', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'6', N'4', N'Apa Kata Mereka?', N'Person 1', N'Lorem ipsum dolor sit amet consectetur. Facilisi vitae tortor lorem ornare. Ut sagittis augue quam sagittis et velit pulvinar rutrum aliquet. Sed at at ultricies gravida. Sed felis libero mi aliquam sed a neque bibendum semper.', N'/cover/img/34943116-52f1-46aa-bdeb-6dcc33ba83a2_3d-avatar-1.png', N'https://google.com', N'2023-03-24 01:39:35.450', N'bagas.tampan@projectkita.id', N'2023-03-24 01:43:37.510', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'7', N'4', N'Apa Kata Mereka?', N'Person 2', N'Lorem ipsum dolor sit amet consectetur. Facilisi vitae tortor lorem ornare. Ut sagittis augue quam sagittis et velit pulvinar rutrum aliquet. Sed at at ultricies gravida. Sed felis libero mi aliquam sed a neque bibendum semper.', N'/cover/img/181bcaba-0c9c-46be-a399-74a0f38195e8_3d-avatar-2.png', N'https://google.com', N'2023-03-24 01:39:35.450', N'bagas.tampan@projectkita.id', N'2023-03-24 01:43:37.510', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'8', N'4', N'Apa Kata Mereka?', N'Person 3', N'Lorem ipsum dolor sit amet consectetur. Facilisi vitae tortor lorem ornare. Ut sagittis augue quam sagittis et velit pulvinar rutrum aliquet. Sed at at ultricies gravida. Sed felis libero mi aliquam sed a neque bibendum semper.', N'/cover/img/77a4add0-5b6f-426b-bd52-3b12dcc9913e_3d-avatar-3.png', N'https://google.com', N'2023-03-24 01:39:35.450', N'bagas.tampan@projectkita.id', N'2023-03-24 01:43:37.510', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'9', N'4', N'Apa Kata Mereka?', N'Person 4', N'Lorem ipsum dolor sit amet consectetur. Facilisi vitae tortor lorem ornare. Ut sagittis augue quam sagittis et velit pulvinar rutrum aliquet. Sed at at ultricies gravida. Sed felis libero mi aliquam sed a neque bibendum semper.', N'/cover/img/34943116-52f1-46aa-bdeb-6dcc33ba83a2_3d-avatar-1.png', N'https://google.com', N'2023-03-24 01:39:35.450', N'bagas.tampan@projectkita.id', N'2023-03-24 01:43:37.510', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'10', N'4', N'Apa Kata Mereka?', N'Person 5', N'Lorem ipsum dolor sit amet consectetur. Facilisi vitae tortor lorem ornare. Ut sagittis augue quam sagittis et velit pulvinar rutrum aliquet. Sed at at ultricies gravida. Sed felis libero mi aliquam sed a neque bibendum semper.', N'/cover/img/181bcaba-0c9c-46be-a399-74a0f38195e8_3d-avatar-2.png', N'https://google.com', N'2023-03-24 01:39:35.450', N'bagas.tampan@projectkita.id', N'2023-03-24 01:43:37.510', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'11', N'4', N'Apa Kata Mereka?', N'Person 6', N'Lorem ipsum dolor sit amet consectetur. Facilisi vitae tortor lorem ornare. Ut sagittis augue quam sagittis et velit pulvinar rutrum aliquet. Sed at at ultricies gravida. Sed felis libero mi aliquam sed a neque bibendum semper.', N'/cover/img/77a4add0-5b6f-426b-bd52-3b12dcc9913e_3d-avatar-3.png', N'https://google.com', N'2023-03-24 01:39:35.450', N'bagas.tampan@projectkita.id', N'2023-03-24 01:43:37.510', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'12', N'5', N'Download Aplikasi Habaku Sekarang!', N'Ini Tittle Section 5', N'Dapatkan voucher spesial untuk pengguna pertama, dan promo menarik lainnya!', N'/cover/img/2a63b9f3-41b9-46db-a2d1-1b301181dbef_phone-barcode-desk-illustration.png', N'https://play.google.com/store/apps/details?id=com.dataprods.scs', N'2023-03-24 02:24:32.153', N'bagas.tampan@projectkita.id', N'2023-03-24 02:26:34.457', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'13', N'6', N'Habaku Solution', N'Aplikasi Mudah Diakses', N'Mengutamakan kemudahan pengguna dalam melakukan pembelian produk dengan alur yang mudah dimengerti dan ringkas.', N'/cover/img/e1d9b76c-1a74-4ac2-ae78-2e9efeea161d_produk-aplikasi-mudah-illustration.png', N'https://google.com', N'2023-03-24 03:00:05.793', N'bagas.tampan@projectkita.id', N'2023-03-24 03:33:27.653', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'14', N'6', N'Habaku Solution', N'Menyediakan Produk Berkualitas', N'Bekerja sama dengan distributor terpercaya untuk memberikan produk berkualitas bagi para mitra usaha Habaku.', N'/cover/img/66343008-ed1f-4cfc-bdd0-e6ecc46de124_produk-kualitas-illustration.png', N'https://google.com', N'2023-03-24 03:00:05.793', N'bagas.tampan@projectkita.id', N'2023-03-24 03:51:01.833', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'15', N'6', N'Habaku Solution', N'Penawaran Harga Terbaik', N'Menawarkan harga terbaik dengan berbagai promo dan potongan serta proses pembayaran yang mudah dan aman.', N'/cover/img/c7dd16bc-b6ed-41ee-affc-c0a2a3bb2ae2_produk-harga-terbaik-illustration.png', N'https://google.com', N'2023-03-24 03:00:05.793', N'bagas.tampan@projectkita.id', N'2023-03-24 04:38:26.343', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'16', N'7', N'Habaku Ecosystem', N'Ini Tittle Section 2', N'Ini Description Section 2', N'/cover/img/798dadcf-2aaf-45ce-bdc7-419a1ec7c466_produk-bi-directional-illustration.png', N'https://google.com', N'2023-03-24 17:03:33.427', N'bagas.tampan@projectkita.id', N'2023-03-24 17:15:40.010', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'17', N'8', N'Metode Pembayaran', N'Cash on Delivery', N'Bayar pesanan secara tunai setelah produk tiba di tempat Anda.', N'/cover/img/bc3ad32e-1a0a-4f57-9dbb-6aa19f185b07_produk-pembayaran-cod-illustration.png', N'https://google.com', N'2023-03-24 17:16:35.597', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'18', N'8', N'Metode Pembayaran', N'Prepaid Payment', N'Pesanan Anda akan langsung dikirim setelah pembayaran melalui virtual account dikonfirmasi.', N'/cover/img/c58cbf5b-c8cf-4e7d-b112-46bd3bd5faf1_produk-pembayaran-prepaid-illustration.png', N'https://google.com', N'2023-03-24 17:27:50.803', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'19', N'9', N'Promo Spesial Buat Kamu!', N'Ini Tittle Section 4', N'Belanja produk berkualitas melalui Habaku dan dapatkan berbagai promo eksklusif untuk mencapai keuntungan maksimal.', N'/cover/img/d71c9feb-c1cd-47dd-bc88-424f204b6268_produk-promo-illustration.png', N'https://play.google.com/store/apps/details?id=com.dataprods.scs', N'2023-03-24 18:19:52.293', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'20', N'10', N'Download Aplikasi Habaku Sekarang!', N'Ini Tittle Section 5', N'Dapatkan voucher spesial untuk pengguna pertama, dan promo menarik lainnya!', N'/cover/img/7ae70e79-8dc4-4aa1-8a39-3835cb4af876_phone-barcode-desk-illustration.png', N'https://play.google.com/store/apps/details?id=com.dataprods.scs', N'2023-03-24 18:28:24.860', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'21', N'15', N'Tentang Habaku', N'Ini Tittle Section 1', N'Habaku - B2B Marketplace bagi pelaku usaha retail di bidang kesehatan dan kecantikan yang menawarkan kemudahan serta fleksibilitas dalam memperoleh produk berkualitas asli dengan harga yang bersahabat.', N'/cover/img/0757ae8c-fd4c-4267-a963-6b10c8fda61f_tk-hero-illustration.png', N'https://google.com', N'2023-03-25 10:49:58.473', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'22', N'16', N'Visi & Misi', N'Visi', N'Menjadi platform teknologi terdepan yang mendukung pertumbuhan bisnis retailer dan mengintegrasikan rantai pasok produk kesehatan dan kecantikan.', N'/cover/img/8b1da60b-7799-4192-8b2b-8e20f4844da6_kim-artcher-1-cycles-1.png', N'https://google.com', N'2023-03-25 11:09:35.300', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'23', N'16', N'Visi & Misi', N'Misi', N'Mendorong pertumbuhan bisnis retailer dengan menggunakan platform teknologi cerdas yang dapat meningkatkan efisiensi dan efektivitas operasional.', N'/cover/img/d242f438-261f-4ae9-812f-b35e9671908a_Arrow-target-corner-1.png', N'https://google.com', N'2023-03-25 11:20:08.070', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'24', N'17', N'Ini Header Section 3', N'Ini Tittle Section 3', N'#PastiLebihUntung', N'/cover/img/a86313bd-a847-4974-b447-c0d26c482010_no-image.png', N'https://google.com', N'2023-03-25 11:34:30.810', N'bagas.tampan@projectkita.id', N'2023-03-25 11:45:46.407', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'25', N'19', N'Alamat Habaku', N'Ini Tittle Section 1', N'PT. SANO SOLUSI BERDIKARI
Menara Palma, Lantai 17
Jalan H.R. Rasuna Said Kavling VI Nomor 9 Kuningan Timur, Setiabudi, Jakarta Selatan, DKI Jakarta (12950).', N'/cover/img/0605f332-df57-439b-b70b-95bd8c146dff_no-image.png', N'https://t.ly/habaku-office', N'2023-03-25 13:17:38.793', N'bagas.tampan@projectkita.id', N'2023-03-25 13:44:44.030', N'bagas.tampan@projectkita.id', N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'26', N'20', N'Kritik dan Saran', N'Ini Tittle Section 2', N'Bantu kami untuk menjadi lebih baik dengan membagikan kritik dan saran serta pertanyaan terkait Habaku.', N'/cover/img/8e84da9a-1a19-491d-a629-49443c217637_kritik-dan-saran-illustartion.png', N'https://forms.gle/GTpcQsSoHKApsXcB6', N'2023-03-25 13:22:34.087', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'27', N'21', N'Ajukan Pertanyaan', N'+62 811 343 777 5', N'Jika Anda memiliki pertanyaan atau kendala, silakan hubungi kami melalui:', N'/cover/img/3288ead6-420d-460b-ac58-0d46850c27ea_no-image.png', N'https://wa.link/5o1zcu', N'2023-03-25 13:33:48.210', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Content] ([content_id], [section_id], [header], [title], [description], [image], [url], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'28', N'21', N'Ajukan Pertanyaan', N'sma.habaku@gmail.com', N'Jika Anda memiliki pertanyaan atau kendala, silakan hubungi kami melalui:', N'/cover/img/d1acef4e-4b0d-4056-a76b-42afc15de458_no-image.png', N'https://mailto:sma.habaku@gmail.com', N'2023-03-25 13:35:53.283', N'bagas.tampan@projectkita.id', NULL, NULL, N'1')
GO

SET IDENTITY_INSERT [dbo].[Content] OFF
GO


-- ----------------------------
-- Table structure for Menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Menu]') AND type IN ('U'))
	DROP TABLE [dbo].[Menu]
GO

CREATE TABLE [dbo].[Menu] (
  [menu_id] int  IDENTITY(1,1) NOT NULL,
  [menu_name] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit  NULL,
  [created_at] datetime  NULL,
  [created_by] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [modified_at] datetime  NULL,
  [modified_by] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Menu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Menu] ON
GO

INSERT INTO [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (N'1', N'Beranda', N'1', N'2023-03-04 11:51:29.220', N'Bagas Luar Biasa Tampan', NULL, NULL)
GO

INSERT INTO [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (N'2', N'Produk', N'1', N'2023-03-04 11:59:49.590', N'Bagas Yang Paling Tampan', N'2023-03-12 22:41:40.333', N'bagas.tampan@projectkita.id')
GO

INSERT INTO [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (N'3', N'Artikel', N'1', N'2023-03-04 13:40:22.387', N'Bagas Mempesona', NULL, NULL)
GO

INSERT INTO [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (N'4', N'Tentang Kami', N'1', N'2023-03-04 15:04:57.567', N'Bagas Wijaya', N'2023-03-12 21:17:50.060', N'bagas.tampan@projectkita.id')
GO

INSERT INTO [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (N'5', N'Hubungi Kami', N'1', N'2023-03-14 13:50:00.000', N'Bagas GG', NULL, NULL)
GO

INSERT INTO [dbo].[Menu] ([menu_id], [menu_name], [status], [created_at], [created_by], [modified_at], [modified_by]) VALUES (N'6', N'Detail Artikel', N'1', N'2023-03-14 14:04:03.000', N'Bagas GG', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[Menu] OFF
GO


-- ----------------------------
-- Table structure for Section
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Section]') AND type IN ('U'))
	DROP TABLE [dbo].[Section]
GO

CREATE TABLE [dbo].[Section] (
  [section_id] int  IDENTITY(1,1) NOT NULL,
  [menu_id] int  NULL,
  [section_name] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [section_number] int  NULL,
  [created_at] datetime  NULL,
  [created_by] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [modified_at] datetime  NULL,
  [modified_by] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [section_approve] int  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[Section] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Section
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Section] ON
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'1', N'1', N'Section 1', N'1', N'2023-03-11 13:04:29.253', N'Bagas Luar Biasa', N'2023-03-12 11:17:58.283', N'Bagas Tampan', N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'2', N'1', N'Section 2', N'2', N'2023-03-12 11:15:53.220', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'3', N'1', N'Section 3', N'3', N'2023-03-12 11:16:17.440', N'Bagas Tampan', N'2023-03-24 13:22:20.533', N'bagas.tampan@projectkita.id', N'3', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'4', N'1', N'Section 4', N'4', N'2023-03-14 13:42:47.000', N'Bagas Tampan', N'2023-03-24 13:22:53.747', N'bagas.tampan@projectkita.id', N'6', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'5', N'1', N'Section 5', N'5', N'2023-03-14 13:44:12.000', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'6', N'2', N'Section 1', N'1', N'2023-03-14 13:45:15.000', N'Bagas Tampan', N'2023-03-24 13:21:30.567', N'bagas.tampan@projectkita.id', N'3', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'7', N'2', N'Section 2', N'2', N'2023-03-14 13:45:49.000', N'Bagas Tampan', N'2023-03-24 15:54:00.117', N'bagas.tampan@projectkita.id', N'2', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'8', N'2', N'Section 3', N'3', N'2023-03-14 13:45:49.000', N'Bagas Tampan', N'2023-03-24 17:27:28.080', N'bagas.tampan@projectkita.id', N'2', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'9', N'2', N'Section 4', N'4', N'2023-03-14 13:45:49.000', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'10', N'2', N'Section 5', N'5', N'2023-03-14 13:45:49.000', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'11', N'3', N'Section 1', N'1', N'2023-03-12 11:15:53.220', N'Bagas Tampan', N'2023-03-14 23:35:37.823', N'bagas.tampan@projectkita.id', N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'12', N'3', N'Section 2', N'2', N'2023-03-12 11:16:17.440', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'13', N'6', N'Section 1', N'1', N'2023-03-14 13:42:47.000', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'14', N'6', N'Section 2', N'2', N'2023-03-14 13:44:12.000', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'15', N'4', N'Section 1', N'1', N'2023-03-14 13:45:15.000', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'16', N'4', N'Section 2', N'2', N'2023-03-14 13:45:49.000', N'Bagas Tampan', N'2023-03-25 11:19:31.957', N'bagas.tampan@projectkita.id', N'2', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'17', N'4', N'Section 3', N'3', N'2023-03-14 13:45:49.000', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'18', N'4', N'Section 4', N'4', N'2023-03-14 13:45:49.000', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'19', N'5', N'Section 1', N'1', N'2023-03-14 13:45:49.000', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'20', N'5', N'Section 2', N'2', N'2023-03-14 13:45:49.000', N'Bagas Tampan', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Section] ([section_id], [menu_id], [section_name], [section_number], [created_at], [created_by], [modified_at], [modified_by], [section_approve], [status]) VALUES (N'21', N'5', N'Section 3', N'3', N'2023-03-14 13:45:49.000', N'Bagas Tampan', N'2023-03-25 13:32:06.723', N'bagas.tampan@projectkita.id', N'2', N'1')
GO

SET IDENTITY_INSERT [dbo].[Section] OFF
GO


-- ----------------------------
-- Table structure for User
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type IN ('U'))
	DROP TABLE [dbo].[User]
GO

CREATE TABLE [dbo].[User] (
  [user_id] int  IDENTITY(1,1) NOT NULL,
  [user_name] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_at] datetime  NULL,
  [created_by] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [modified_at] datetime  NULL,
  [modified_by] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[User] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of User
-- ----------------------------
SET IDENTITY_INSERT [dbo].[User] ON
GO

INSERT INTO [dbo].[User] ([user_id], [user_name], [password], [role], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'1', N'bagas.tampan@projectkita.id', N'Admin123', N'SuperAdmin', N'2023-03-09 20:29:44.300', N'Bagas Amazing', N'2023-03-09 21:57:59.440', N'string', N'1')
GO

INSERT INTO [dbo].[User] ([user_id], [user_name], [password], [role], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'2', N'Nuari Project2', N'12345678', N'Super Admin1', N'2023-03-10 00:03:14.247', N'Farhan', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[User] ([user_id], [user_name], [password], [role], [created_at], [created_by], [modified_at], [modified_by], [status]) VALUES (N'3', N'Bagas Lagi', N'Admin123321', N'Hamba Allah', N'2023-03-10 00:14:19.113', N'Hamba Allah', NULL, NULL, N'1')
GO

SET IDENTITY_INSERT [dbo].[User] OFF
GO


-- ----------------------------
-- Auto increment value for Content
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Content]', RESEED, 28)
GO


-- ----------------------------
-- Primary Key structure for table Content
-- ----------------------------
ALTER TABLE [dbo].[Content] ADD CONSTRAINT [PK__Content__655FE510A0D236DF] PRIMARY KEY CLUSTERED ([content_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Menu
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Menu]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table Menu
-- ----------------------------
ALTER TABLE [dbo].[Menu] ADD CONSTRAINT [PK__Menu__4CA0FADC0BC66416] PRIMARY KEY CLUSTERED ([menu_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Section
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Section]', RESEED, 22)
GO


-- ----------------------------
-- Primary Key structure for table Section
-- ----------------------------
ALTER TABLE [dbo].[Section] ADD CONSTRAINT [PK__Section__F842676A49FED687] PRIMARY KEY CLUSTERED ([section_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for User
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[User]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table User
-- ----------------------------
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK__User__B9BE370F5CBA3204] PRIMARY KEY CLUSTERED ([user_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Content
-- ----------------------------
ALTER TABLE [dbo].[Content] ADD CONSTRAINT [FK_CONTENT_SECTION] FOREIGN KEY ([section_id]) REFERENCES [dbo].[Section] ([section_id]) ON DELETE NO ACTION ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table Section
-- ----------------------------
ALTER TABLE [dbo].[Section] ADD CONSTRAINT [FK_SECTION_MENU] FOREIGN KEY ([menu_id]) REFERENCES [dbo].[Menu] ([menu_id]) ON DELETE NO ACTION ON UPDATE CASCADE
GO

