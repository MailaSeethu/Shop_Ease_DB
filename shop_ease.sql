USE [master]
GO
/****** Object:  Database [ProductsDB]    Script Date: 12/8/2024 1:45:08 AM ******/
CREATE DATABASE [ProductsDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductsDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ProductsDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProductsDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ProductsDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ProductsDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductsDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductsDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProductsDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProductsDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProductsDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProductsDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProductsDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProductsDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductsDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductsDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductsDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProductsDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProductsDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductsDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProductsDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductsDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProductsDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductsDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductsDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductsDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductsDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductsDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProductsDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductsDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ProductsDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProductsDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductsDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductsDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductsDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProductsDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProductsDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProductsDB', N'ON'
GO
ALTER DATABASE [ProductsDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ProductsDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ProductsDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/8/2024 1:45:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 12/8/2024 1:45:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[MobileNo] [nvarchar](max) NOT NULL,
	[Pincode] [int] NOT NULL,
	[HouseNo] [nvarchar](max) NOT NULL,
	[Area] [nvarchar](max) NOT NULL,
	[LandMark] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buy]    Script Date: 12/8/2024 1:45:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buy](
	[BuyId] [int] IDENTITY(1,1) NOT NULL,
	[AddressId] [int] NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[ProductId] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[StatusTime] [datetime2](7) NOT NULL,
	[NoOfItems] [nvarchar](max) NOT NULL,
	[OrderPlacedTime] [datetime2](7) NOT NULL,
	[Orderid] [nvarchar](max) NOT NULL,
	[TotalPrice] [int] NOT NULL,
 CONSTRAINT [PK_Buy] PRIMARY KEY CLUSTERED 
(
	[BuyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/8/2024 1:45:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[ProductId] [nvarchar](max) NOT NULL,
	[Quantity] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CouponCodes]    Script Date: 12/8/2024 1:45:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CouponCodes](
	[CouponId] [int] IDENTITY(1,1) NOT NULL,
	[Couponcode] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[IsApplicable] [bit] NOT NULL,
 CONSTRAINT [PK_CouponCodes] PRIMARY KEY CLUSTERED 
(
	[CouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 12/8/2024 1:45:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Token] [nvarchar](max) NOT NULL,
	[SecurityAnswer] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/8/2024 1:45:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductPrice] [float] NOT NULL,
	[Noofstocks] [int] NOT NULL,
	[Imageurl] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductRating] [float] NOT NULL,
	[SellerName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240831182232_init', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240831182304_init', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240831182320_init', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240831182334_init', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240831182348_init', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240831182446_CouponCodes', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241010183349_init', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241010183424_init', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241010183440_init', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241010183455_init', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241010183507_init', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241010183608_CouponCodes', N'8.0.8')
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressId], [UserName], [FullName], [Country], [MobileNo], [Pincode], [HouseNo], [Area], [LandMark], [City], [State], [IsDefault]) VALUES (2, N'Seethu', N'Seethu', N'United States', N'6605805303', 66223, N'6611 w140th terrace apt 1701', N'lionsgte', N'opposite sandstone', N'op', N'kansas', 1)
INSERT [dbo].[Address] ([AddressId], [UserName], [FullName], [Country], [MobileNo], [Pincode], [HouseNo], [Area], [LandMark], [City], [State], [IsDefault]) VALUES (3, N'Seethu reddy', N'Seethu Reddy Maila', N'India', N'06303564100', 508001, N'6611 w140th terrace apt 1701', N'lionsgte', N'opp stanstone', N'508001', N'kansas', 1)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Buy] ON 

INSERT [dbo].[Buy] ([BuyId], [AddressId], [UserName], [ProductId], [Status], [StatusTime], [NoOfItems], [OrderPlacedTime], [Orderid], [TotalPrice]) VALUES (1, 1, N'Seethu', N'1,2', 4, CAST(N'2024-10-10T13:51:17.7120667' AS DateTime2), N'1,2', CAST(N'2024-10-10T13:51:17.7120667' AS DateTime2), N'v8tdlvpNXkeoi1Q28rc7+A', 227)
INSERT [dbo].[Buy] ([BuyId], [AddressId], [UserName], [ProductId], [Status], [StatusTime], [NoOfItems], [OrderPlacedTime], [Orderid], [TotalPrice]) VALUES (2, 1, N'Seethu', N'2', 3, CAST(N'2024-10-10T13:52:35.2064712' AS DateTime2), N'2', CAST(N'2024-10-10T13:52:35.2064712' AS DateTime2), N'zetn3DYQQk6Y96bx83zmJA', 98)
INSERT [dbo].[Buy] ([BuyId], [AddressId], [UserName], [ProductId], [Status], [StatusTime], [NoOfItems], [OrderPlacedTime], [Orderid], [TotalPrice]) VALUES (3, 1, N'Seethu', N'1', 4, CAST(N'2024-11-03T12:45:41.3994342' AS DateTime2), N'1', CAST(N'2024-11-03T12:45:41.3994342' AS DateTime2), N'4wM0teHujEm84+276GWB8w', 200)
INSERT [dbo].[Buy] ([BuyId], [AddressId], [UserName], [ProductId], [Status], [StatusTime], [NoOfItems], [OrderPlacedTime], [Orderid], [TotalPrice]) VALUES (4, 2, N'Seethu', N'2', 3, CAST(N'2024-11-14T22:06:16.0851833' AS DateTime2), N'3', CAST(N'2024-11-14T22:06:16.0851833' AS DateTime2), N'Cl/qrTfmY0ynQfOaL5BPYg', 126)
INSERT [dbo].[Buy] ([BuyId], [AddressId], [UserName], [ProductId], [Status], [StatusTime], [NoOfItems], [OrderPlacedTime], [Orderid], [TotalPrice]) VALUES (5, 3, N'Seethu reddy', N'3', 4, CAST(N'2024-11-14T22:15:11.7515828' AS DateTime2), N'1', CAST(N'2024-11-14T22:15:11.7515828' AS DateTime2), N'C9V3qzhcHUGjUZOlAbu0BA', 140)
INSERT [dbo].[Buy] ([BuyId], [AddressId], [UserName], [ProductId], [Status], [StatusTime], [NoOfItems], [OrderPlacedTime], [Orderid], [TotalPrice]) VALUES (1004, 2, N'Seethu', N'6,5,4', 3, CAST(N'2024-12-06T00:04:11.8030316' AS DateTime2), N'1,1,1', CAST(N'2024-12-06T00:04:11.8030316' AS DateTime2), N'/F7uvkqFy0qH1scN1gNAFw', 46)
INSERT [dbo].[Buy] ([BuyId], [AddressId], [UserName], [ProductId], [Status], [StatusTime], [NoOfItems], [OrderPlacedTime], [Orderid], [TotalPrice]) VALUES (1005, 2, N'Seethu', N'2', 3, CAST(N'2024-12-07T00:45:51.2746579' AS DateTime2), N'1', CAST(N'2024-12-07T00:45:51.2746579' AS DateTime2), N'RIbFfunC/0ifbNu1Nxvzzw', 61)
INSERT [dbo].[Buy] ([BuyId], [AddressId], [UserName], [ProductId], [Status], [StatusTime], [NoOfItems], [OrderPlacedTime], [Orderid], [TotalPrice]) VALUES (1006, 2, N'Seethu', N'2', 3, CAST(N'2024-12-07T00:48:03.2374130' AS DateTime2), N'1', CAST(N'2024-12-07T00:48:03.2374130' AS DateTime2), N'JIDJ9o8lc02sS766kGv30A', 61)
INSERT [dbo].[Buy] ([BuyId], [AddressId], [UserName], [ProductId], [Status], [StatusTime], [NoOfItems], [OrderPlacedTime], [Orderid], [TotalPrice]) VALUES (1007, 2, N'Seethu', N'2', 3, CAST(N'2024-12-07T01:12:12.6595192' AS DateTime2), N'1', CAST(N'2024-12-07T01:12:12.6595192' AS DateTime2), N'jQ5MxuK+GUm+xOTwDtznpA', 61)
SET IDENTITY_INSERT [dbo].[Buy] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartId], [UserName], [ProductId], [Quantity]) VALUES (10, N'Seethu reddy', N'1,5', N'1,1')
INSERT [dbo].[Cart] ([CartId], [UserName], [ProductId], [Quantity]) VALUES (1010, N'Seethu24', N'2', N'1')
INSERT [dbo].[Cart] ([CartId], [UserName], [ProductId], [Quantity]) VALUES (1017, N'Seethu', N'1', N'1')
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[CouponCodes] ON 

INSERT [dbo].[CouponCodes] ([CouponId], [Couponcode], [description], [IsApplicable]) VALUES (1, N'SHOPEASE20', N'Flat $20 off on minimum purchase of $50 and Free shipping.', 1)
INSERT [dbo].[CouponCodes] ([CouponId], [Couponcode], [description], [IsApplicable]) VALUES (2, N'SUMMERSALE', N'Flat 25% off on summer collection.', 0)
INSERT [dbo].[CouponCodes] ([CouponId], [Couponcode], [description], [IsApplicable]) VALUES (3, N'FREESHIP', N'Free shipping on orders over $50', 1)
INSERT [dbo].[CouponCodes] ([CouponId], [Couponcode], [description], [IsApplicable]) VALUES (4, N'SAVE10', N'Flat $10  off on your first purchase (min purchase of $50).', 1)
INSERT [dbo].[CouponCodes] ([CouponId], [Couponcode], [description], [IsApplicable]) VALUES (5, N'BUY2GET50OFF', N'Buy 2, Get 50% Off on the 3rd One.', 1)
SET IDENTITY_INSERT [dbo].[CouponCodes] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([LoginId], [UserName], [FirstName], [LastName], [Email], [Password], [Token], [SecurityAnswer], [Role]) VALUES (1, N'Seethu', N'Seethu', N'Maila', N'mailaseethureddy335@gmail.com', N'xXG2Mei41zio1i4Ig/BMa9HnFfzArYngJCP1he0c8/Y8/grX', N' ', N'me', N'User')
INSERT [dbo].[Login] ([LoginId], [UserName], [FirstName], [LastName], [Email], [Password], [Token], [SecurityAnswer], [Role]) VALUES (2, N'Seethu24', N'Seethu Admin', N'admin', N'mailaseethureddy3356@gmail.com', N'U5iSuv2uaeE89fTmi11xU6IV6UAoWEUzF6RdJ963Kpb+2rCP', N' ', N'me', N'Admin')
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (1, N'Electronics', N'Apple AirPods (3rd Generation) Wireless Ear Buds, Bluetooth Headphones, Personalized Spatial Audio, Sweat and Water Resistant, Lightning Charging Case Included, Up to 30 Hours of Battery Life', 189.99, 17, N'https://th.bing.com/th?id=OIP.1lnPiC5kC4p5yZ0q8IGS9wHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2', N'The AirPods (3rd generation) provide personalized spatial audio with dynamic head tracking and Dolby Atmos support, while being IPX4 rated for sweat and water resistance. With a Lightning Charging Case, they offer up to 6 hours of listening time and 30 hours total. Features include pinch-perfect control, always-on ‘Hey Siri’ functionality, and seamless pairing with Apple devices, allowing for automatic audio switching.', 1, N'Appario Retail Private Ltd')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (2, N'Fashion', N'Men''s Nike Sportswear Club Fleece Pullover Hoodie', 48.75, -1, N'https://media.kohlsimg.com/is/image/kohls/3583992_Black_White?wid=805&hei=805&op_sharpen=1', N'A closet staple, the Nike Sportswear Club Fleece men''s pullover hoodie combines classic style with the soft comfort of fleece for an elevated, everyday look that you really can wear every day. The comfy fleece interior of this men''s Nike hoodie lets you coast through the day in comfort.', 2.5, N'Maruti Enterprises')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (3, N'Electronics', N'oneplus', 150, 8, N'https://fdn2.gsmarena.com/vv/bigpic/realme-10-pro.jpg', N'oneplus 10 Pro+ 5G (Nebula Blue, 128 GB) (8 GB RAM)', 3, N'Oppo Mobiles India Private Limited')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (4, N'Home & Kitchen', N'Heritage66 Thermal Coffee Carafe -Triple Wall Vacuum insulated Flask', 26.99, 2, N'https://m.media-amazon.com/images/I/51USDDRcTjL._AC_SX679_.jpg', N'Your Perfect Cup of Coffee, Every Time. Holds 8 US Cups--- Excellent for Home, Office, Restaurant, or Gathering. Our thermal carafe is made with durable high-quality stainless steel, triple-layer vacuum insulation, and sweat-free design with zero condensation. The superior thermal retention will keep your beverages tasting fresh every time.', 4.2, N'Vinod Cookware')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (5, N'Books', N'I Don''t Love You Anymore: Moving On and Living Your Best Life', 12.99, 5, N'https://m.media-amazon.com/images/I/61J5Z-OYUUL._SY522_.jpg', N'Dear reader, I hope this book feels like a warm hug to you. I wrote this book for the ones who feel everything too deeply. You’re right, I wrote this book for you. This book was meant to find you if you’ve ever loved someone who didn’t love you back, if you’ve ever over-invested in the wrong people or if you have a hard time letting go. I Don’t Love You Anymore is a book that’ll feel like home to you. I promise it’ll hold you gently on your worst days.', 5, N'Penguin Ananda (8 October 2018)')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (6, N'Watches', N'KXAITO Men''s Watches Sports Outdoor Waterproof Military Watch Date Multi Function Tactics LED Alarm Stopwatch', 21.99, 10, N'https://m.media-amazon.com/images/I/61iYG7ArviL._AC_UL480_FMwebp_QL65_.jpg', N'Military Sport Design: Fashionable sporty dial design, military style outlook. Large Dial (acrylic crystal glass window, case diameter high-quality watch band, Reinforced resin band design is more ergonomic, comfortable to wear. Dial diameter is 2 inch / 50mm).', 0, N'Vee Ess Sales Pvt Ltd')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (7, N'Perfume', N'Dossier - Powdery Tobacco - Eau de Parfum - Inspired by T.Ford Tobacco Vanille - Perfume Luxury', 39, 7, N'https://m.media-amazon.com/images/I/61i9Rwk3OhL._AC_UL480_FMwebp_QL65_.jpg', N'PURE FRAGRANCE POWDERY TOBACCO: Features the unique scent of tobacco leaves, highlighted by sweet honey and fruity notes with a touch of ginger. The rich base includes vanilla, tonka bean, dry fruit, and cacao for added depth.', 0, N'Vini Cosmetics')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (8, N'Bags', N'Dell EcoLoop Pro Slim Backpack 15', 49.99, 6, N'https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/electronics-software-and-accessories/accessories/dell/carrying-case/ecoloop-pro-slim-backpack-cp5724s/media-gallery/en/carrying-cases-backpack-ecoloop-cp5724s-gallery-1-en.psd?fmt=png-alpha&pscan=auto&scl=1&hei=476&wid=472&qlt=100,1&resMode=sharp2&size=472,476&chrss=full', N'Get the Dell EcoLoop Pro Slim Backpack 15 that protects your gear on-the-go and helps reduce environmental impact.', 4.2, N'Cannycom Store')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (9, N'HeadPhones', N'Dell Pro Stereo Headset | WH3022', 69.99, 8, N'https://snpi.dell.com/snp/images/products/large/520-AAUL_MVI4.jpg', N'Experience exceptional audio clarity with this Teams certified wired headset that allows you to wear the microphone on either side for a customized fit.', 4.2, N'gadgets storm')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (10, N'Monitors', N'Dell 27 QHD Monitor (USB-C) | S2722DC', 259.99, 8, N'https://i.dell.com/is/image/DellContent//content/dam/ss2/product-images/dell-client-products/peripherals/monitors/s-series/s2722dc/media-gallery/s2722dc_cfp_00000ff090_gy.psd?fmt=png-alpha&pscan=auto&scl=1&hei=476&wid=476&qlt=100,1&resMode=sharp2&size=476,476&chrss=full', N'Feature Height Adjustment, Anti Glare Screen, Pivot Adjustment, USB Hub, High Dynamic Range.', 4.2, N'BenQ, BenQ Corporation 16 Jihu Road, Neihu 114, Taipei, Taiwan')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (11, N'Watches', N'Citizen Diamond Maleficent Sleeping Beauty Womens Diamond Accent Black Stainless Steel Bracelet Watch Em0595-51w', 32.85, 9, N'https://jcpenney.scene7.com/is/image/JCPenney/DP0423202011002668M.tif?$gallery$&wid=350&hei=350&op_sharpen=1', N'Case style: Analog watch with a stainless steel circular case Dial style: Black dial with silver hands Strap style: Stainless steel strap with a butterfly clasp for comfort and style.', 4, N'VRP Telematics')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (12, N'Beauty & Personal Care', N'MEICOLY USA Flag Pride Face Body Glitter', 8.98, 10, N'https://m.media-amazon.com/images/I/81lA6H0sVkL.__AC_SX300_SY300_QL70_FMwebp_.jpg', N'This vibrant and festive glitter gel is designed to enhance your beauty for any celebration or event. Made in USA, this hypoallergenic formula is easy to apply and remove.', 0, N'Go Ho')
INSERT [dbo].[Products] ([ProductId], [ProductCategory], [ProductName], [ProductPrice], [Noofstocks], [Imageurl], [ProductDescription], [ProductRating], [SellerName]) VALUES (13, N'Fashion', N'tshirt', 15, 5, N'https://jiffyimg.imgix.net/143850_5000_000C_030_G2023_SD_F_24252.jpg?ixlib=rb-0.3.5&auto=format&fit=fill&fill=solid&trim-color=FFFFFF&trim=color&trim-tol=8&w=307&h=480&q=80&dpr=2', N'Unisex Heavy Cotton™ T-Shirt', 0, N'Seethu')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [ProductsDB] SET  READ_WRITE 
GO
