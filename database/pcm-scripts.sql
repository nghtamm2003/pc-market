USE [master]
GO
/****** Object:  Database [pc-market]    Script Date: 5/3/2024 4:21:17 PM ******/
CREATE DATABASE [pc-market]
GO
ALTER DATABASE [pc-market] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pc-market].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pc-market] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pc-market] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pc-market] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pc-market] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pc-market] SET ARITHABORT OFF 
GO
ALTER DATABASE [pc-market] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pc-market] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pc-market] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pc-market] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pc-market] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pc-market] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pc-market] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pc-market] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pc-market] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pc-market] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pc-market] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pc-market] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pc-market] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pc-market] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pc-market] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pc-market] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pc-market] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pc-market] SET RECOVERY FULL 
GO
ALTER DATABASE [pc-market] SET  MULTI_USER 
GO
ALTER DATABASE [pc-market] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pc-market] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pc-market] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pc-market] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pc-market] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [pc-market] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'pc-market', N'ON'
GO
ALTER DATABASE [pc-market] SET QUERY_STORE = ON
GO
ALTER DATABASE [pc-market] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [pc-market]
GO
/****** Object:  Table [dbo].[chiTietHDB]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietHDB](
	[maHDB] [nvarchar](10) NOT NULL,
	[maMay] [nvarchar](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [chiTietHDB_pk] PRIMARY KEY CLUSTERED 
(
	[maHDB] ASC,
	[maMay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chiTietHDN]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietHDN](
	[maHDN] [nvarchar](10) NOT NULL,
	[maMay] [nvarchar](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [bigint] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [chiTietHDN_pk] PRIMARY KEY CLUSTERED 
(
	[maHDN] ASC,
	[maMay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPU]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPU](
	[maCPU] [nvarchar](10) NOT NULL,
	[tenCPU] [nvarchar](50) NOT NULL,
	[socket] [nvarchar](10) NOT NULL,
	[tocDo] [float] NOT NULL,
	[maHSX] [nvarchar](10) NOT NULL,
	[moTa] [nvarchar](200) NULL,
 CONSTRAINT [CPU_PK] PRIMARY KEY CLUSTERED 
(
	[maCPU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GPU]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPU](
	[maGPU] [nvarchar](10) NOT NULL,
	[tenGPU] [nvarchar](50) NOT NULL,
	[loaiGPU] [nvarchar](30) NOT NULL,
	[dungLuong] [nvarchar](50) NOT NULL,
	[maHSX] [nvarchar](10) NOT NULL,
	[moTa] [nvarchar](200) NULL,
 CONSTRAINT [GPU_PK] PRIMARY KEY CLUSTERED 
(
	[maGPU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hangSanXuat]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hangSanXuat](
	[maHSX] [nvarchar](10) NOT NULL,
	[tenHSX] [nvarchar](50) NOT NULL,
 CONSTRAINT [hangSanXuat_pk] PRIMARY KEY CLUSTERED 
(
	[maHSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoaDonBan]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoaDonBan](
	[maHDB] [nvarchar](10) NOT NULL,
	[ngayBan] [date] NOT NULL,
	[maNV] [nvarchar](10) NOT NULL,
	[maKhach] [nvarchar](10) NOT NULL,
	[tongTien] [bigint] NOT NULL,
 CONSTRAINT [hoaDonBan_pk] PRIMARY KEY CLUSTERED 
(
	[maHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoaDonNhap]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoaDonNhap](
	[maHDN] [nvarchar](10) NOT NULL,
	[ngayNhap] [date] NOT NULL,
	[maNV] [nvarchar](10) NOT NULL,
	[maNCC] [nvarchar](10) NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [hoaDonNhap_pk] PRIMARY KEY CLUSTERED 
(
	[maHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachHang]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachHang](
	[maKhach] [nvarchar](10) NOT NULL,
	[tenKhach] [nvarchar](100) NOT NULL,
	[diaChi] [nvarchar](200) NULL,
	[dienThoai] [nvarchar](10) NOT NULL,
 CONSTRAINT [khachHang_pk] PRIMARY KEY CLUSTERED 
(
	[maKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaiMay]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiMay](
	[maLoaiMay] [nvarchar](10) NOT NULL,
	[tenLoaiMay] [nvarchar](50) NOT NULL,
 CONSTRAINT [loaiMay_pk] PRIMARY KEY CLUSTERED 
(
	[maLoaiMay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mainboard]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mainboard](
	[maMainboard] [nvarchar](10) NOT NULL,
	[tenMainboard] [nvarchar](50) NOT NULL,
	[socket] [nvarchar](10) NOT NULL,
	[moTa] [nvarchar](200) NULL,
	[maHSX] [nvarchar](10) NOT NULL,
 CONSTRAINT [mainboard_pk] PRIMARY KEY CLUSTERED 
(
	[maMainboard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manHinh]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manHinh](
	[maMH] [nvarchar](10) NOT NULL,
	[sizeMH] [float] NOT NULL,
	[tamNenMH] [nvarchar](10) NOT NULL,
	[tanSoQuet] [int] NOT NULL,
 CONSTRAINT [manHinh_pk] PRIMARY KEY CLUSTERED 
(
	[maMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mayTinh]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mayTinh](
	[tenMay] [nvarchar](100) NOT NULL,
	[maMay] [nvarchar](10) NOT NULL,
	[maLoaiMay] [nvarchar](10) NOT NULL,
	[maMainboard] [nvarchar](10) NULL,
	[maCPU] [nvarchar](10) NOT NULL,
	[maRam] [nvarchar](10) NOT NULL,
	[maGPU] [nvarchar](10) NOT NULL,
	[maOC] [nvarchar](10) NOT NULL,
	[maMH] [nvarchar](10) NULL,
	[maHSX] [nvarchar](10) NULL,
	[giaNhap] [bigint] NOT NULL,
	[giaBan] [bigint] NOT NULL,
	[soLuong] [int] NOT NULL,
	[thoiGianBH] [int] NULL,
	[ghiChu] [nvarchar](200) NULL,
	[hinhAnh] [image] NULL,
 CONSTRAINT [mayTinh_pk] PRIMARY KEY CLUSTERED 
(
	[maMay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhaCungCap]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhaCungCap](
	[maNCC] [nvarchar](10) NOT NULL,
	[tenNCC] [nvarchar](100) NOT NULL,
	[diaChi] [nvarchar](200) NOT NULL,
	[dienThoai] [nvarchar](10) NOT NULL,
 CONSTRAINT [nhaCungCap_pk] PRIMARY KEY CLUSTERED 
(
	[maNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanVien]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanVien](
	[maNV] [nvarchar](10) NOT NULL,
	[tenNV] [nvarchar](50) NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[gioiTinh] [nvarchar](5) NOT NULL,
	[diaChi] [nvarchar](200) NOT NULL,
	[dienThoai] [nvarchar](10) NOT NULL,
 CONSTRAINT [nhanVien_pk] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oCung]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oCung](
	[maOC] [nvarchar](10) NOT NULL,
	[tenOC] [nvarchar](100) NOT NULL,
	[dungLuong] [int] NOT NULL,
	[loaiOC] [nvarchar](10) NOT NULL,
	[maHSX] [nvarchar](10) NOT NULL,
	[moTa] [nvarchar](200) NULL,
 CONSTRAINT [oCung_pk] PRIMARY KEY CLUSTERED 
(
	[maOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ram]    Script Date: 5/3/2024 4:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ram](
	[maRam] [nvarchar](10) NOT NULL,
	[tenRam] [nvarchar](50) NOT NULL,
	[loaiRam] [nvarchar](10) NULL,
	[bus] [int] NULL,
	[dungLuong] [int] NOT NULL,
	[maHSX] [nvarchar](10) NOT NULL,
	[moTa] [nvarchar](200) NULL,
 CONSTRAINT [ram_pk] PRIMARY KEY CLUSTERED 
(
	[maRam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU001', N'Intel Core i3-12100F', N'LGA1700', 3.3, N'HSX004', N'4 nhân 8 luồng, 12MB Cache, tốc độ tối đa 4.3GHz')
INSERT [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU002', N'Intel Core i9 14900K', N'LGA1700', 3.2, N'HSX004', N'24 nhân 36 luồng, 36MB Cache, tốc độ tối đa 6.0GHz')
INSERT [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU003', N'AMD Ryzen 5 5600G', N'AM4', 3.9, N'HSX005', N'6 nhân 12 luồng, 16MB Cache, tốc độ tối đa 4.4GHz')
INSERT [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU004', N'AMD Ryzen 7 7735HS', N'FP7', 3.2, N'HSX005', N'8 nhân 16 luồng, 16MB Cache, tốc độ tối đa 4.7GHz')
INSERT [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU005', N'Intel Core Ultra 5 125H', N'BGA2049', 2.5, N'HSX004', N'14 nhân 18 luồng, 18MB Cache, tốc độ tối đa 4.5GHz')
INSERT [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU006', N'Apple M3', N'M3', 2.8, N'HSX006', N'8 nhân 8 luồng, tốc độ tối đa 4.1GHz')
GO
INSERT [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU001', N'GIGABYTE GeForce GTX 1660 SUPER D6 6G', N'Rời', N'6‎GB GDDR6', N'HSX010', N'3 cổng DP 1.4 + 1 cổng HDMI 2.0B')
INSERT [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU002', N'Asus TUF RTX 4070 12GB Gaming', N'Rời', N'12GB GDDR6X', N'HSX003', N'2 cổng HDMI 2.1 + 3 cổng DP 1.4A')
INSERT [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU003', N'AMD Vega 7', N'Tích hợp', N'512MB', N'HSX005', NULL)
INSERT [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU004', N'NVIDIA GeForce RTX 3050 (Laptop)', N'Rời', N'8GB GDDR6', N'HSX011', NULL)
INSERT [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU005', N'Intel ARC Graphics', N'Tích hợp', N'512MB', N'HSX004', NULL)
INSERT [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU006', N'Apple M3', N'Tích hợp', N'512MB LPDDR5', N'HSX006', NULL)
GO
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX001', N'Asrock')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX002', N'MSI')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX003', N'Asus')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX004', N'Intel')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX005', N'AMD')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX006', N'Apple')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX007', N'Kingston')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX008', N'PNY')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX009', N'Dell')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX010', N'Gigabyte')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX011', N'NVIDIA')
INSERT [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX012', N'Samsung')
GO
INSERT [dbo].[loaiMay] ([maLoaiMay], [tenLoaiMay]) VALUES (N'LAP', N'Máy tính xách tay')
INSERT [dbo].[loaiMay] ([maLoaiMay], [tenLoaiMay]) VALUES (N'PC', N'Máy tính để bàn')
GO
INSERT [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN001', N'Asrock B660M Pro RS', N'LGA1700', N'Kích thước Micro-ATX, 4 khe cắm RAM (tối đa 128GB), 4 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME (3.0/4.0)', N'HSX001')
INSERT [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN002', N'MSI B450M PRO-VDH MAX', N'AM4', N'Kích thước Micro-ATX, 4 khe cắm RAM (tối đa 128GB), 4 khe cắm ổ cứng SATA 6Gb/s + 1 khe cắm ổ cứng M2 NVME 3.0', N'HSX002')
INSERT [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN003', N'Asus PRIME Z790-P D4-CSM', N'LGA1700', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 4 khe cắm ổ cứng SATA 6Gb/s + 3 khe cắm ổ cứng M2 NVME (3.0/4.0)', N'HSX003')
GO
INSERT [dbo].[manHinh] ([maMH], [sizeMH], [tamNenMH], [tanSoQuet]) VALUES (N'MONI001', 14, N'IPS', 144)
INSERT [dbo].[manHinh] ([maMH], [sizeMH], [tamNenMH], [tanSoQuet]) VALUES (N'MONI002', 13.4, N'IPS', 90)
INSERT [dbo].[manHinh] ([maMH], [sizeMH], [tamNenMH], [tanSoQuet]) VALUES (N'MONI003', 15.3, N'Retina', 60)
GO
INSERT [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'Asus ROG Zephyrus G14 GA402NJ-L4056W', N'COM001', N'LAP', NULL, N'CPU004', N'RAM004', N'GPU004', N'DISK003', N'MONI001', N'HSX003', 27990000, 30390000, 22, 24, N'Đổi mới trong 15 ngày', NULL)
INSERT [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'Dell XPS 13 9340 71034922', N'COM002', N'LAP', NULL, N'CPU005', N'RAM005', N'GPU005', N'DISK002', N'MONI002', N'HSX009', 47490000, 51490000, 8, 12, N'Đổi mới trong 15 ngày, Dịch vụ bảo hành tại nơi sử dụng của hãng Dell', NULL)
INSERT [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'Apple MacBook Air 15 inch M3 - Midnight', N'COM003', N'LAP', NULL, N'CPU006', N'RAM006', N'GPU006', N'DISK004', N'MONI003', N'HSX006', 29990000, 31990000, 47, 12, N'Bảo hành tại trung tâm bảo hành APPLE VN', NULL)
INSERT [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'PC Standard 1', N'COM004', N'PC', N'MAIN001', N'CPU001', N'RAM003', N'GPU001', N'DISK001', NULL, NULL, 11990000, 13090000, 55, NULL, N'Bảo hành theo từng linh kiện', NULL)
INSERT [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'PC Studio Graphics 1', N'COM005', N'PC', N'MAIN003', N'CPU002', N'RAM002', N'GPU002', N'DISK002', NULL, NULL, 52990000, 55990000, 7, NULL, N'Bảo hành theo từng linh kiện', NULL)
INSERT [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'PC Designer 1', N'COM006', N'PC', N'MAIN002', N'CPU003', N'RAM001', N'GPU003', N'DISK001', NULL, NULL, 6990000, 7699000, 72, NULL, N'Bảo hành theo từng linh kiện', NULL)
GO
INSERT [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP001', N'Nguyễn Văn A', CAST(N'2003-12-30' AS Date), N'Nam', N'Hà Nội', N'0123456789')
INSERT [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP002', N'Trần Ngọc B', CAST(N'2003-02-28' AS Date), N'Nữ', N'Hải Phòng', N'0987654321')
GO
INSERT [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK001', N'SSD Kingston A400', 480, N'SSD', N'HSX007', NULL)
INSERT [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK002', N'Kingston SSD KC3000 PCIe 4.0', 1024, N'SSD', N'HSX007', NULL)
INSERT [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK003', N'SSD Samsung 980 PCIe NVMe V-NAND', 512, N'SSD', N'HSX012', NULL)
INSERT [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK004', N'Apple M3 SSD', 256, N'SSD', N'HSX006', NULL)
GO
INSERT [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM001', N'Kingston FURY Beast', N'DDR4', 3200, 8, N'HSX007', NULL)
INSERT [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM002', N'Kingston FURY Beast RGB', N'DDR4', 3200, 32, N'HSX007', NULL)
INSERT [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM003', N'PNY Desktop', N'DDR4', 3200, 8, N'HSX008', NULL)
INSERT [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM004', N'ROG (Zephyrus G14 GA402NJ-L4056W)', N'DDR5', 4800, 16, N'HSX003', N'2x8GB, 1 thanh rời + 1 thanh hàn chết')
INSERT [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM005', N'XPS (XPS 13 9340 71034922)', N'LPDDR5X', 7467, 16, N'HSX009', NULL)
INSERT [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM006', N'Apple (MacBook Air 15 M3)', N'', NULL, 8, N'HSX006', NULL)
GO
ALTER TABLE [dbo].[chiTietHDB]  WITH CHECK ADD  CONSTRAINT [chiTietHDB_hoaDonBan_FK] FOREIGN KEY([maHDB])
REFERENCES [dbo].[hoaDonBan] ([maHDB])
GO
ALTER TABLE [dbo].[chiTietHDB] CHECK CONSTRAINT [chiTietHDB_hoaDonBan_FK]
GO
ALTER TABLE [dbo].[chiTietHDB]  WITH CHECK ADD  CONSTRAINT [chiTietHDB_mayTinh_FK] FOREIGN KEY([maMay])
REFERENCES [dbo].[mayTinh] ([maMay])
GO
ALTER TABLE [dbo].[chiTietHDB] CHECK CONSTRAINT [chiTietHDB_mayTinh_FK]
GO
ALTER TABLE [dbo].[chiTietHDN]  WITH CHECK ADD  CONSTRAINT [chiTietHDN_hoaDonNhap_FK] FOREIGN KEY([maHDN])
REFERENCES [dbo].[hoaDonNhap] ([maHDN])
GO
ALTER TABLE [dbo].[chiTietHDN] CHECK CONSTRAINT [chiTietHDN_hoaDonNhap_FK]
GO
ALTER TABLE [dbo].[chiTietHDN]  WITH CHECK ADD  CONSTRAINT [chiTietHDN_mayTinh_FK] FOREIGN KEY([maMay])
REFERENCES [dbo].[mayTinh] ([maMay])
GO
ALTER TABLE [dbo].[chiTietHDN] CHECK CONSTRAINT [chiTietHDN_mayTinh_FK]
GO
ALTER TABLE [dbo].[CPU]  WITH CHECK ADD  CONSTRAINT [CPU_hangSanXuat_FK] FOREIGN KEY([maHSX])
REFERENCES [dbo].[hangSanXuat] ([maHSX])
GO
ALTER TABLE [dbo].[CPU] CHECK CONSTRAINT [CPU_hangSanXuat_FK]
GO
ALTER TABLE [dbo].[GPU]  WITH CHECK ADD  CONSTRAINT [GPU_hangSanXuat_FK] FOREIGN KEY([maHSX])
REFERENCES [dbo].[hangSanXuat] ([maHSX])
GO
ALTER TABLE [dbo].[GPU] CHECK CONSTRAINT [GPU_hangSanXuat_FK]
GO
ALTER TABLE [dbo].[hoaDonBan]  WITH CHECK ADD  CONSTRAINT [hoaDonBan_khachHang_FK] FOREIGN KEY([maKhach])
REFERENCES [dbo].[khachHang] ([maKhach])
GO
ALTER TABLE [dbo].[hoaDonBan] CHECK CONSTRAINT [hoaDonBan_khachHang_FK]
GO
ALTER TABLE [dbo].[hoaDonBan]  WITH CHECK ADD  CONSTRAINT [hoaDonBan_nhanVien_FK] FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[hoaDonBan] CHECK CONSTRAINT [hoaDonBan_nhanVien_FK]
GO
ALTER TABLE [dbo].[hoaDonNhap]  WITH CHECK ADD  CONSTRAINT [hoaDonNhap_nhaCungCap_FK] FOREIGN KEY([maNCC])
REFERENCES [dbo].[nhaCungCap] ([maNCC])
GO
ALTER TABLE [dbo].[hoaDonNhap] CHECK CONSTRAINT [hoaDonNhap_nhaCungCap_FK]
GO
ALTER TABLE [dbo].[hoaDonNhap]  WITH CHECK ADD  CONSTRAINT [hoaDonNhap_nhanVien_FK] FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[hoaDonNhap] CHECK CONSTRAINT [hoaDonNhap_nhanVien_FK]
GO
ALTER TABLE [dbo].[mainboard]  WITH CHECK ADD  CONSTRAINT [mainboard_hangSanXuat_FK] FOREIGN KEY([maHSX])
REFERENCES [dbo].[hangSanXuat] ([maHSX])
GO
ALTER TABLE [dbo].[mainboard] CHECK CONSTRAINT [mainboard_hangSanXuat_FK]
GO
ALTER TABLE [dbo].[mayTinh]  WITH CHECK ADD  CONSTRAINT [mayTinh_CPU_FK] FOREIGN KEY([maCPU])
REFERENCES [dbo].[CPU] ([maCPU])
GO
ALTER TABLE [dbo].[mayTinh] CHECK CONSTRAINT [mayTinh_CPU_FK]
GO
ALTER TABLE [dbo].[mayTinh]  WITH CHECK ADD  CONSTRAINT [mayTinh_GPU_FK] FOREIGN KEY([maGPU])
REFERENCES [dbo].[GPU] ([maGPU])
GO
ALTER TABLE [dbo].[mayTinh] CHECK CONSTRAINT [mayTinh_GPU_FK]
GO
ALTER TABLE [dbo].[mayTinh]  WITH CHECK ADD  CONSTRAINT [mayTinh_hangSanXuat_FK] FOREIGN KEY([maHSX])
REFERENCES [dbo].[hangSanXuat] ([maHSX])
GO
ALTER TABLE [dbo].[mayTinh] CHECK CONSTRAINT [mayTinh_hangSanXuat_FK]
GO
ALTER TABLE [dbo].[mayTinh]  WITH CHECK ADD  CONSTRAINT [mayTinh_loaiMay_FK] FOREIGN KEY([maLoaiMay])
REFERENCES [dbo].[loaiMay] ([maLoaiMay])
GO
ALTER TABLE [dbo].[mayTinh] CHECK CONSTRAINT [mayTinh_loaiMay_FK]
GO
ALTER TABLE [dbo].[mayTinh]  WITH CHECK ADD  CONSTRAINT [mayTinh_mainboard_FK] FOREIGN KEY([maMainboard])
REFERENCES [dbo].[mainboard] ([maMainboard])
GO
ALTER TABLE [dbo].[mayTinh] CHECK CONSTRAINT [mayTinh_mainboard_FK]
GO
ALTER TABLE [dbo].[mayTinh]  WITH CHECK ADD  CONSTRAINT [mayTinh_manHinh_FK] FOREIGN KEY([maMH])
REFERENCES [dbo].[manHinh] ([maMH])
GO
ALTER TABLE [dbo].[mayTinh] CHECK CONSTRAINT [mayTinh_manHinh_FK]
GO
ALTER TABLE [dbo].[mayTinh]  WITH CHECK ADD  CONSTRAINT [mayTinh_oCung_FK] FOREIGN KEY([maOC])
REFERENCES [dbo].[oCung] ([maOC])
GO
ALTER TABLE [dbo].[mayTinh] CHECK CONSTRAINT [mayTinh_oCung_FK]
GO
ALTER TABLE [dbo].[mayTinh]  WITH CHECK ADD  CONSTRAINT [mayTinh_ram_FK] FOREIGN KEY([maRam])
REFERENCES [dbo].[ram] ([maRam])
GO
ALTER TABLE [dbo].[mayTinh] CHECK CONSTRAINT [mayTinh_ram_FK]
GO
ALTER TABLE [dbo].[oCung]  WITH CHECK ADD  CONSTRAINT [oCung_hangSanXuat_FK] FOREIGN KEY([maHSX])
REFERENCES [dbo].[hangSanXuat] ([maHSX])
GO
ALTER TABLE [dbo].[oCung] CHECK CONSTRAINT [oCung_hangSanXuat_FK]
GO
ALTER TABLE [dbo].[ram]  WITH CHECK ADD  CONSTRAINT [ram_hangSanXuat_FK] FOREIGN KEY([maHSX])
REFERENCES [dbo].[hangSanXuat] ([maHSX])
GO
ALTER TABLE [dbo].[ram] CHECK CONSTRAINT [ram_hangSanXuat_FK]
GO
USE [master]
GO
ALTER DATABASE [pc-market] SET  READ_WRITE 
GO
