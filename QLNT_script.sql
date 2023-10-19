USE [master]
GO
/****** Object:  Database [QL_NoiThat]    Script Date: 19/10/2023 10:40:16 PM ******/
CREATE DATABASE [QL_NoiThat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_NoiThat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.PIRANA\MSSQL\DATA\QL_NoiThat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_NoiThat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.PIRANA\MSSQL\DATA\QL_NoiThat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL_NoiThat] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_NoiThat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_NoiThat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_NoiThat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_NoiThat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_NoiThat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_NoiThat] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_NoiThat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_NoiThat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_NoiThat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_NoiThat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_NoiThat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_NoiThat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_NoiThat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_NoiThat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_NoiThat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_NoiThat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_NoiThat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_NoiThat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_NoiThat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_NoiThat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_NoiThat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_NoiThat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_NoiThat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_NoiThat] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_NoiThat] SET  MULTI_USER 
GO
ALTER DATABASE [QL_NoiThat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_NoiThat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_NoiThat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_NoiThat] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_NoiThat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_NoiThat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_NoiThat', N'ON'
GO
ALTER DATABASE [QL_NoiThat] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL_NoiThat] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL_NoiThat]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
 CONSTRAINT [PK__Customer__A4AE64B8B5C2A2B7] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
 CONSTRAINT [PK__Employee__7AD04FF14DB4975D] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FurnitureCategories]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FurnitureCategories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK__Furnitur__19093A2B57BF922E] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FurnitureProducts]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FurnitureProducts](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[CategoryID] [int] NULL,
	[SupplierID] [int] NULL,
	[Price] [decimal](10, 2) NULL,
	[QuantityInStock] [int] NULL,
 CONSTRAINT [PK__Furnitur__B40CC6ED37F9CDF4] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceDate] [date] NULL,
	[CustomerID] [int] NULL,
	[EmployeeID] [int] NULL,
	[TotalAmount] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Invoices__D796AAD59A12A73E] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[GroupID] [int] NULL,
	[ScreenID] [int] NULL,
	[HasPermission] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseHistory]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseHistory](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[ProductID] [int] NULL,
	[PurchaseDate] [date] NULL,
 CONSTRAINT [PK__Purchase__4D7B4ADD72E3B3FF] PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrders]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NULL,
	[EmployeeID] [int] NULL,
	[SupplierID] [int] NULL,
	[TotalAmount] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Purchase__C3905BAF1B6CB0AD] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screens]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screens](
	[ScreenID] [int] NOT NULL,
	[ScreenName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ScreenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](100) NULL,
	[ContactName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
 CONSTRAINT [PK__Supplier__4BE666947AE95BE3] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroups]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroups](
	[GroupID] [int] NOT NULL,
	[GroupName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroupUsers]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroupUsers](
	[ID] [int] NOT NULL,
	[GroupID] [int] NULL,
	[Username] [nvarchar](50) NULL,
 CONSTRAINT [PK__UserGrou__3214EC27FC9425A4] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19/10/2023 10:40:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [nvarchar](50) NOT NULL,
	[PasswordHash] [nvarchar](100) NOT NULL,
	[EmployeeID] [int] NULL,
 CONSTRAINT [PK__Users__1788CCAC6DA6F5D1] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (1, N'Nguyễn', N'Văn A', N'nguyenvana@gmail.com', N'0901234567', N'123 Đường A, TPHCM')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (2, N'Trần', N'Thị B', N'tranthib@gmail.com', N'0909876543', N'456 Đường B, TP BẠC LIÊU')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (3, N'Lê', N'Tuấn C', N'letuanc@gmail.com', N'0905555555', N'789 Đường C, TP ĐÀ NẴNG')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (4, N'Phạm', N'Thị D', N'phamthid@gmail.com', N'0901111222', N'456 Đường D, TPHCM')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (5, N'Hồ', N'Quốc E', N'hoquoce@gmail.com', N'0903333444', N'123 Đường E, TP NHA TRANG')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (6, N'Dương', N'Thị F', N'duongthif@gmail.com', N'0907777888', N'789 Đường F, TP CẦN THƠ')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (7, N'Vũ', N'Như G', N'vunhug@gmail.com', N'0905555666', N'123 Đường G, TPHCM')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (8, N'Ngô', N'Tuấn H', N'ngotuanh@gmail.com', N'0908888999', N'456 Đường H, TP LẠNG SƠN')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (9, N'Mai', N'Thị I', N'maithii@gmail.com', N'0906666777', N'789 Đường I, TP TUYÊN QUANG')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (10, N'Đặng', N'Quốc J', N'dangquocj@gmail.com', N'0902222111', N'123 Đường J, TP ĐỒNG NAI')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (11, N'Đỗ', N'Thị K', N'dothik@gmail.com', N'0901212121', N'456 Đường K, TPHCM')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (12, N'Bùi', N'Như L', N'buinhul@gmail.com', N'0908888333', N'789 Đường L, TP KHÁNH HÒA')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (13, N'Lương', N'Tuấn M', N'luongtuanm@gmail.com', N'0905555777', N'123 Đường M, TP VĨNH LONG')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (14, N'Đinh', N'Thị N', N'dinhthin@gmail.com', N'0904444333', N'456 Đường N, TP SÓC TRĂNG')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (15, N'Lý', N'Quốc O', N'lyquoco@gmail.com', N'0903333222', N'789 Đường O, TP CÀ MAU')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (16, N'Huỳnh', N'Thị P', N'huynhthip@gmail.com', N'0906666888', N'123 Đường P, TPHCM')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (17, N'Võ', N'Tuấn Q', N'votuanq@gmail.com', N'0909999666', N'456 Đường Q, TP BUÔN MÊ THUỘC')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (18, N'Châu', N'Thị R', N'chauthir@gmail.com', N'0907777444', N'789 Đường R, TP QUẢNG NAM')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (19, N'Kim', N'Quốc S', N'kimquocs@gmail.com', N'0901111333', N'123 Đường S, TPHCM')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (20, N'Chung', N'Thị T', N'chungthit@gmail.com', N'0902222777', N'456 Đường T, TPHCM')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (1, N'Nguyễn', N'Văn A', N'nguyenvana@gmail.com', N'0901234567', N'123 Đường A')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (2, N'Trần', N'Thị B', N'tranthib@gmail.com', N'0909876543', N'456 Đường B')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (3, N'Lê', N'Tuấn C', N'letuanc@gmail.com', N'0905555555', N'789 Đường C')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (4, N'Phạm', N'Thị D', N'phamthid@gmail.com', N'0901111222', N'456 Đường D')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (5, N'Hồ', N'Quốc E', N'hoquoce@gmail.com', N'0903333444', N'123 Đường E')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (6, N'Dương', N'Thị F', N'duongthif@gmail.com', N'0907777888', N'789 Đường F')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (7, N'Vũ', N'Như G', N'vunhug@gmail.com', N'0905555666', N'123 Đường G')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (8, N'Ngô', N'Tuấn H', N'ngotuanh@gmail.com', N'0908888999', N'456 Đường H')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (9, N'Mai', N'Thị I', N'maithii@gmail.com', N'0906666777', N'789 Đường I')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (10, N'Đặng', N'Quốc J', N'dangquocj@gmail.com', N'0902222111', N'123 Đường J')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (11, N'Đỗ', N'Thị K', N'dothik@gmail.com', N'0901212121', N'456 Đường K')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (12, N'Bùi', N'Như L', N'buinhul@gmail.com', N'0908888333', N'789 Đường L')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (13, N'Lương', N'Tuấn M', N'luongtuanm@gmail.com', N'0905555777', N'123 Đường M')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (14, N'Đinh', N'Thị N', N'dinhthin@gmail.com', N'0904444333', N'456 Đường N')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (15, N'Lý', N'Quốc O', N'lyquoco@gmail.com', N'0903333222', N'789 Đường O')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (16, N'Huỳnh', N'Thị P', N'huynhthip@gmail.com', N'0906666888', N'123 Đường P')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (17, N'Võ', N'Tuấn Q', N'votuanq@gmail.com', N'0909999666', N'456 Đường Q')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (18, N'Châu', N'Thị R', N'chauthir@gmail.com', N'0907777444', N'789 Đường R')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (19, N'Kim', N'Quốc S', N'kimquocs@gmail.com', N'0901111333', N'123 Đường S')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Address]) VALUES (20, N'Chung', N'Thị T', N'chungthit@gmail.com', N'0902222777', N'456 Đường T')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[FurnitureCategories] ON 

INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (1, N'Bàn ăn')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (2, N'Ghế sofa')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (3, N'Giường ngủ')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (4, N'Tủ quần áo')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (5, N'Bàn làm việc')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (6, N'Kệ sách')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (7, N'Ghế làm việc')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (8, N'Ghế ăn')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (9, N'Bàn trà')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (10, N'Tủ TV')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (11, N'Ghế thư giãn')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (12, N'Ghế ăn nhanh')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (13, N'Kệ TV')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (14, N'Bàn làm việc cho trẻ em')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (15, N'Ghế trẻ em')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (16, N'Giường trẻ em')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (17, N'Ghế thư giãn trẻ em')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (18, N'Kệ sách cho trẻ em')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (19, N'Ghế ăn cho trẻ em')
INSERT [dbo].[FurnitureCategories] ([CategoryID], [CategoryName]) VALUES (20, N'Bàn trò chơi')
SET IDENTITY_INSERT [dbo].[FurnitureCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[FurnitureProducts] ON 

INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (1, N'Bàn trà gỗ thông', N'Bàn trà gỗ thông cao cấp', 9, 11, CAST(4000.00 AS Decimal(10, 2)), 15)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (2, N'Ghế sofa da tự nhiên', N'Ghế sofa da tự nhiên màu nâu', 2, 12, CAST(1300.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (3, N'Tủ quần áo gỗ sồi nhập khẩu', N'Tủ quần áo gỗ sồi nhập khẩu', 4, 13, CAST(3200.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (4, N'Giường ngủ gỗ thông tự nhiên', N'Giường ngủ gỗ thông tự nhiên', 3, 14, CAST(1900.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (5, N'Kệ sách gỗ sồi', N'Kệ sách gỗ sồi chất lượng', 6, 15, CAST(900.00 AS Decimal(10, 2)), 14)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (6, N'Bàn làm việc gỗ tự nhiên', N'Bàn làm việc gỗ tự nhiên', 5, 16, CAST(700.00 AS Decimal(10, 2)), 12)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (7, N'Ghế ăn gỗ óc chó', N'Ghế ăn gỗ óc chó cao cấp', 8, 17, CAST(200.00 AS Decimal(10, 2)), 25)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (8, N'Tủ TV gỗ cao cấp', N'Tủ TV gỗ cao cấp màu trắng', 10, 18, CAST(750.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (9, N'Giường tầng gỗ sồi', N'Giường tầng gỗ sồi tự nhiên', 3, 19, CAST(2400.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (10, N'Bàn trà gỗ dầu', N'Bàn trà gỗ dầu cao cấp', 9, 20, CAST(4700.00 AS Decimal(10, 2)), 12)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (11, N'Ghế sofa da cao cấp', N'Ghế sofa da cao cấp màu xám', 2, 1, CAST(1400.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (12, N'Tủ quần áo gỗ thông', N'Tủ quần áo gỗ thông', 4, 2, CAST(3100.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (13, N'Giường ngủ gỗ cao cấp', N'Giường ngủ gỗ cao cấp', 3, 3, CAST(1700.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (14, N'Kệ sách gỗ óc chó', N'Kệ sách gỗ óc chó', 6, 4, CAST(950.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (15, N'Bàn làm việc gỗ tự nhiên', N'Bàn làm việc gỗ tự nhiên', 5, 5, CAST(720.00 AS Decimal(10, 2)), 11)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (16, N'Ghế ăn gỗ dầu', N'Ghế ăn gỗ dầu cao cấp', 8, 6, CAST(180.00 AS Decimal(10, 2)), 18)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (17, N'Tủ TV gỗ sồi', N'Tủ TV gỗ sồi', 10, 7, CAST(780.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (18, N'Giường tầng gỗ cao cấp', N'Giường tầng gỗ cao cấp', 3, 8, CAST(2300.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (19, N'Bàn trà gỗ sồi', N'Bàn trà gỗ sồi', 9, 9, CAST(4500.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[FurnitureProducts] ([ProductID], [ProductName], [Description], [CategoryID], [SupplierID], [Price], [QuantityInStock]) VALUES (20, N'Ghế sofa da nhập khẩu', N'Ghế sofa da nhập khẩu', 2, 10, CAST(1100.00 AS Decimal(10, 2)), 4)
SET IDENTITY_INSERT [dbo].[FurnitureProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 

INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (1, CAST(N'2023-10-16' AS Date), 1, 1, CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (2, CAST(N'2023-10-16' AS Date), 2, 2, CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (3, CAST(N'2023-10-16' AS Date), 3, 3, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (4, CAST(N'2023-10-16' AS Date), 4, 4, CAST(1800.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (5, CAST(N'2023-10-16' AS Date), 5, 5, CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (6, CAST(N'2023-10-16' AS Date), 6, 6, CAST(600.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (7, CAST(N'2023-10-16' AS Date), 7, 7, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (8, CAST(N'2023-10-16' AS Date), 8, 8, CAST(700.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (9, CAST(N'2023-10-16' AS Date), 9, 9, CAST(2200.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (10, CAST(N'2023-10-16' AS Date), 10, 10, CAST(5500.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (11, CAST(N'2023-10-16' AS Date), 11, 11, CAST(1400.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (12, CAST(N'2023-10-16' AS Date), 12, 12, CAST(3100.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (13, CAST(N'2023-10-16' AS Date), 13, 13, CAST(1700.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (14, CAST(N'2023-10-16' AS Date), 14, 14, CAST(950.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (15, CAST(N'2023-10-16' AS Date), 15, 15, CAST(720.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (16, CAST(N'2023-10-16' AS Date), 16, 16, CAST(180.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (17, CAST(N'2023-10-16' AS Date), 17, 17, CAST(780.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (18, CAST(N'2023-10-16' AS Date), 18, 18, CAST(2300.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (19, CAST(N'2023-10-16' AS Date), 19, 19, CAST(4500.00 AS Decimal(10, 2)))
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [CustomerID], [EmployeeID], [TotalAmount]) VALUES (20, CAST(N'2023-10-16' AS Date), 20, 20, CAST(1100.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
INSERT [dbo].[Permissions] ([GroupID], [ScreenID], [HasPermission]) VALUES (1, 1, 1)
INSERT [dbo].[Permissions] ([GroupID], [ScreenID], [HasPermission]) VALUES (1, 2, 1)
INSERT [dbo].[Permissions] ([GroupID], [ScreenID], [HasPermission]) VALUES (1, 3, 1)
INSERT [dbo].[Permissions] ([GroupID], [ScreenID], [HasPermission]) VALUES (1, 4, 1)
INSERT [dbo].[Permissions] ([GroupID], [ScreenID], [HasPermission]) VALUES (1, 5, 1)
INSERT [dbo].[Permissions] ([GroupID], [ScreenID], [HasPermission]) VALUES (2, 1, 1)
INSERT [dbo].[Permissions] ([GroupID], [ScreenID], [HasPermission]) VALUES (2, 2, 1)
INSERT [dbo].[Permissions] ([GroupID], [ScreenID], [HasPermission]) VALUES (2, 3, 1)
INSERT [dbo].[Permissions] ([GroupID], [ScreenID], [HasPermission]) VALUES (2, 4, 1)
INSERT [dbo].[Permissions] ([GroupID], [ScreenID], [HasPermission]) VALUES (2, 5, 1)
GO
SET IDENTITY_INSERT [dbo].[PurchaseHistory] ON 

INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (1, 1, 1, CAST(N'2023-10-16' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (2, 2, 3, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (3, 3, 5, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (4, 4, 7, CAST(N'2023-10-14' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (5, 5, 9, CAST(N'2023-10-13' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (6, 6, 11, CAST(N'2023-10-13' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (7, 7, 13, CAST(N'2023-10-12' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (8, 8, 15, CAST(N'2023-10-11' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (9, 9, 17, CAST(N'2023-10-10' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (10, 10, 19, CAST(N'2023-10-09' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (11, 11, 2, CAST(N'2023-10-08' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (12, 12, 4, CAST(N'2023-10-08' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (13, 13, 6, CAST(N'2023-10-07' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (14, 14, 8, CAST(N'2023-10-06' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (15, 15, 10, CAST(N'2023-10-05' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (16, 16, 12, CAST(N'2023-10-04' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (17, 17, 14, CAST(N'2023-10-03' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (18, 18, 16, CAST(N'2023-10-02' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (19, 19, 18, CAST(N'2023-10-01' AS Date))
INSERT [dbo].[PurchaseHistory] ([HistoryID], [CustomerID], [ProductID], [PurchaseDate]) VALUES (20, 20, 20, CAST(N'2023-09-30' AS Date))
SET IDENTITY_INSERT [dbo].[PurchaseHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrders] ON 

INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (1, CAST(N'2023-10-16' AS Date), 1, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (2, CAST(N'2023-10-17' AS Date), 2, 2, CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (3, CAST(N'2023-10-18' AS Date), 3, 3, CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (4, CAST(N'2023-10-19' AS Date), 4, 4, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (5, CAST(N'2023-10-20' AS Date), 5, 5, CAST(1250.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (6, CAST(N'2023-10-21' AS Date), 6, 6, CAST(1800.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (7, CAST(N'2023-10-22' AS Date), 7, 7, CAST(950.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (8, CAST(N'2023-10-23' AS Date), 8, 8, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (9, CAST(N'2023-10-24' AS Date), 9, 9, CAST(1350.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (10, CAST(N'2023-10-25' AS Date), 10, 10, CAST(600.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (11, CAST(N'2023-10-26' AS Date), 11, 11, CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (12, CAST(N'2023-10-27' AS Date), 12, 12, CAST(1750.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (13, CAST(N'2023-10-28' AS Date), 13, 13, CAST(2200.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (14, CAST(N'2023-10-29' AS Date), 14, 14, CAST(2800.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (15, CAST(N'2023-10-30' AS Date), 15, 15, CAST(1100.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (16, CAST(N'2023-10-31' AS Date), 16, 16, CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (17, CAST(N'2023-11-01' AS Date), 17, 17, CAST(1900.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (18, CAST(N'2023-11-02' AS Date), 18, 18, CAST(1300.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (19, CAST(N'2023-11-03' AS Date), 19, 19, CAST(700.00 AS Decimal(10, 2)))
INSERT [dbo].[PurchaseOrders] ([OrderID], [OrderDate], [EmployeeID], [SupplierID], [TotalAmount]) VALUES (20, CAST(N'2023-11-04' AS Date), 20, 20, CAST(2400.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[PurchaseOrders] OFF
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName]) VALUES (1, N'MH_QLNV')
INSERT [dbo].[Screens] ([ScreenID], [ScreenName]) VALUES (2, N'MH_QLNT')
INSERT [dbo].[Screens] ([ScreenID], [ScreenName]) VALUES (3, N'MH_QLHD')
INSERT [dbo].[Screens] ([ScreenID], [ScreenName]) VALUES (4, N'MH_QLPN')
INSERT [dbo].[Screens] ([ScreenID], [ScreenName]) VALUES (5, N'MH_QLLichSuMuaHang')
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (1, N'Nhà cung cấp A', N'Người liên hệ A', N'supplierA@gmail.com', N'0901111111', N'123 Đường A, TPHCM')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (2, N'Nhà cung cấp B', N'Người liên hệ B', N'supplierB@gmail.com', N'0902222222', N'456 Đường B, TP BẠC LIÊU')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (3, N'Nhà cung cấp C', N'Người liên hệ C', N'supplierC@gmail.com', N'0903333333', N'789 Đường C, TP ĐÀ NẴNG')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (4, N'Nhà cung cấp D', N'Người liên hệ D', N'supplierD@gmail.com', N'0904444444', N'123 Đường D, TPHCM')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (5, N'Nhà cung cấp E', N'Người liên hệ E', N'supplierE@gmail.com', N'0905555555', N'456 Đường E, TP NHA TRANG')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (6, N'Nhà cung cấp F', N'Người liên hệ F', N'supplierF@gmail.com', N'0906666666', N'789 Đường F, TP CẦN THƠ')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (7, N'Nhà cung cấp G', N'Người liên hệ G', N'supplierG@gmail.com', N'0907777777', N'123 Đường G, TPHCM')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (8, N'Nhà cung cấp H', N'Người liên hệ H', N'supplierH@gmail.com', N'0908888888', N'456 Đường H, TP LẠNG SƠN')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (9, N'Nhà cung cấp I', N'Người liên hệ I', N'supplierI@gmail.com', N'0909999999', N'789 Đường I, TP TUYÊN QUANG')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (10, N'Nhà cung cấp J', N'Người liên hệ J', N'supplierJ@gmail.com', N'0901234567', N'123 Đường J, TP ĐỒNG NAI')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (11, N'Nhà cung cấp K', N'Người liên hệ K', N'supplierK@gmail.com', N'0907654321', N'456 Đường K, TPHCM')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (12, N'Nhà cung cấp L', N'Người liên hệ L', N'supplierL@gmail.com', N'0909876543', N'789 Đường L, TP KHÁNH HÒA')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (13, N'Nhà cung cấp M', N'Người liên hệ M', N'supplierM@gmail.com', N'0901111222', N'123 Đường M, TP VĨNH LONG')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (14, N'Nhà cung cấp N', N'Người liên hệ N', N'supplierN@gmail.com', N'0903333444', N'456 Đường N, TP SÓC TRĂNG')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (15, N'Nhà cung cấp O', N'Người liên hệ O', N'supplierO@gmail.com', N'0907777888', N'789 Đường O, TP CÀ MAU')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (16, N'Nhà cung cấp P', N'Người liên hệ P', N'supplierP@gmail.com', N'0905555666', N'123 Đường P, TPHCM')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (17, N'Nhà cung cấp Q', N'Người liên hệ Q', N'supplierQ@gmail.com', N'0908888999', N'456 Đường Q, TP BUÔN MÊ THUỘC')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (18, N'Nhà cung cấp R', N'Người liên hệ R', N'supplierR@gmail.com', N'0906666777', N'789 Đường R, TP QUẢNG NAM')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (19, N'Nhà cung cấp S', N'Người liên hệ S', N'supplierS@gmail.com', N'0901111333', N'123 Đường S, TPHCM')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Email], [Phone], [Address]) VALUES (20, N'Nhà cung cấp T', N'Người liên hệ T', N'supplierT@gmail.com', N'0902222777', N'456 Đường T, TPHCM')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
INSERT [dbo].[UserGroups] ([GroupID], [GroupName]) VALUES (1, N'admin')
INSERT [dbo].[UserGroups] ([GroupID], [GroupName]) VALUES (2, N'user')
INSERT [dbo].[UserGroups] ([GroupID], [GroupName]) VALUES (3, N'customer')
GO
INSERT [dbo].[UserGroupUsers] ([ID], [GroupID], [Username]) VALUES (1, 1, N'admin')
INSERT [dbo].[UserGroupUsers] ([ID], [GroupID], [Username]) VALUES (2, 2, N'Anv')
INSERT [dbo].[UserGroupUsers] ([ID], [GroupID], [Username]) VALUES (3, 2, N'Btt')
GO
INSERT [dbo].[Users] ([Username], [PasswordHash], [EmployeeID]) VALUES (N'admin', N'123', NULL)
INSERT [dbo].[Users] ([Username], [PasswordHash], [EmployeeID]) VALUES (N'Anv', N'123', 1)
INSERT [dbo].[Users] ([Username], [PasswordHash], [EmployeeID]) VALUES (N'Btt', N'123', 2)
GO
ALTER TABLE [dbo].[FurnitureProducts]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureProducts_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[FurnitureCategories] ([CategoryID])
GO
ALTER TABLE [dbo].[FurnitureProducts] CHECK CONSTRAINT [FK_FurnitureProducts_Category]
GO
ALTER TABLE [dbo].[FurnitureProducts]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureProducts_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[FurnitureProducts] CHECK CONSTRAINT [FK_FurnitureProducts_Supplier]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Customer]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Employee]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Screens] FOREIGN KEY([ScreenID])
REFERENCES [dbo].[Screens] ([ScreenID])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Screens]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_UserGroups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroups] ([GroupID])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_UserGroups]
GO
ALTER TABLE [dbo].[PurchaseHistory]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseHistory_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[PurchaseHistory] CHECK CONSTRAINT [FK_PurchaseHistory_Customer]
GO
ALTER TABLE [dbo].[PurchaseHistory]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseHistory_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[FurnitureProducts] ([ProductID])
GO
ALTER TABLE [dbo].[PurchaseHistory] CHECK CONSTRAINT [FK_PurchaseHistory_Product]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrders_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [FK_PurchaseOrders_Employee]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrders_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [FK_PurchaseOrders_Supplier]
GO
ALTER TABLE [dbo].[UserGroupUsers]  WITH CHECK ADD  CONSTRAINT [FK_UserGroupUsers_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroups] ([GroupID])
GO
ALTER TABLE [dbo].[UserGroupUsers] CHECK CONSTRAINT [FK_UserGroupUsers_Group]
GO
ALTER TABLE [dbo].[UserGroupUsers]  WITH CHECK ADD  CONSTRAINT [FK_UserGroupUsers_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[UserGroupUsers] CHECK CONSTRAINT [FK_UserGroupUsers_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_Employee]
GO
USE [master]
GO
ALTER DATABASE [QL_NoiThat] SET  READ_WRITE 
GO
