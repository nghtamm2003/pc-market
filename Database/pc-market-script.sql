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
ALTER DATABASE [pc-market] SET DISABLE_BROKER
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
ALTER DATABASE [pc-market] SET MULTI_USER
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

/*
 Navicat Premium Data Transfer

 Source Server         : SQL Server@localhost
 Source Server Type    : SQL Server
 Source Server Version : 16004115 (16.00.4115)
 Source Catalog        : pc-market
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16004115 (16.00.4115)
 File Encoding         : 65001

 Date: 08/06/2024 21:57:39
*/


-- ----------------------------
-- Table structure for chiTietHDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[chiTietHDB]') AND type IN ('U'))
    DROP TABLE [dbo].[chiTietHDB]
GO

CREATE TABLE [dbo].[chiTietHDB] (
                                    [maHDB] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                    [maMay] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                    [soLuong] int  NOT NULL,
                                    [thanhTien] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[chiTietHDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of chiTietHDB
-- ----------------------------
INSERT INTO [dbo].[chiTietHDB] ([maHDB], [maMay], [soLuong], [thanhTien]) VALUES (N'HDB07062024_105700', N'COM002', N'1', N'50975100')
GO

INSERT INTO [dbo].[chiTietHDB] ([maHDB], [maMay], [soLuong], [thanhTien]) VALUES (N'HDB07062024_105700', N'COM004', N'2', N'25918200')
GO

INSERT INTO [dbo].[chiTietHDB] ([maHDB], [maMay], [soLuong], [thanhTien]) VALUES (N'HDB07062024_193420', N'COM001', N'16', N'481377600')
GO

INSERT INTO [dbo].[chiTietHDB] ([maHDB], [maMay], [soLuong], [thanhTien]) VALUES (N'HDB08062024_213233', N'COM004', N'90', N'1178100000')
GO


-- ----------------------------
-- Table structure for chiTietHDN
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[chiTietHDN]') AND type IN ('U'))
    DROP TABLE [dbo].[chiTietHDN]
GO

CREATE TABLE [dbo].[chiTietHDN] (
                                    [maHDN] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                    [maMay] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                    [soLuong] int  NOT NULL,
                                    [thanhTien] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[chiTietHDN] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of chiTietHDN
-- ----------------------------
INSERT INTO [dbo].[chiTietHDN] ([maHDN], [maMay], [soLuong], [thanhTien]) VALUES (N'HDN07062024_105614', N'COM001', N'2', N'60780000')
GO

INSERT INTO [dbo].[chiTietHDN] ([maHDN], [maMay], [soLuong], [thanhTien]) VALUES (N'HDN07062024_105614', N'COM004', N'4', N'121560000')
GO

INSERT INTO [dbo].[chiTietHDN] ([maHDN], [maMay], [soLuong], [thanhTien]) VALUES (N'HDN07062024_105632', N'COM001', N'1', N'30390000')
GO

INSERT INTO [dbo].[chiTietHDN] ([maHDN], [maMay], [soLuong], [thanhTien]) VALUES (N'HDN07062024_164833', N'COM001', N'1', N'27990000')
GO

INSERT INTO [dbo].[chiTietHDN] ([maHDN], [maMay], [soLuong], [thanhTien]) VALUES (N'HDN07062024_193335', N'COM006', N'10', N'69900000')
GO

INSERT INTO [dbo].[chiTietHDN] ([maHDN], [maMay], [soLuong], [thanhTien]) VALUES (N'HDN08062024_212058', N'COM004', N'100', N'1199000000')
GO


-- ----------------------------
-- Table structure for CPU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CPU]') AND type IN ('U'))
    DROP TABLE [dbo].[CPU]
GO

CREATE TABLE [dbo].[CPU] (
                             [maCPU] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [tenCPU] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [socket] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [tocDo] float(53)  NOT NULL,
                             [maHSX] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [moTa] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[CPU] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CPU
-- ----------------------------
INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU001', N'Intel Core i3-12100F', N'LGA1700', N'3.3', N'HSX004', N'4 nhân 8 luồng, 12MB Cache, tốc độ tối đa 4.3GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU002', N'Intel Core i9 14900K', N'LGA1700', N'3.2', N'HSX004', N'24 nhân 36 luồng, 36MB Cache, tốc độ tối đa 6.0GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU003', N'AMD Ryzen 5 5600G', N'AM4', N'3.9', N'HSX005', N'6 nhân 12 luồng, 16MB Cache, tốc độ tối đa 4.4GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU004', N'AMD Ryzen 7 7735HS', N'FP7', N'3.2', N'HSX005', N'8 nhân 16 luồng, 16MB Cache, tốc độ tối đa 4.7GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU005', N'Intel Core Ultra 5 125H', N'BGA2049', N'2.5', N'HSX004', N'14 nhân 18 luồng, 18MB Cache, tốc độ tối đa 4.5GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU006', N'Apple M3', N'M3', N'2.8', N'HSX006', N'8 nhân 8 luồng, tốc độ tối đa 4.1GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU007', N'Intel Core i5-12600K', N'LGA1700', N'3.7', N'HSX004', N'10 nhân 16 luồng, 20MB Cache, tốc độ tối đa 4.9GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU008', N'AMD Ryzen 9 5900X', N'AM4', N'3.7', N'HSX005', N'12 nhân 24 luồng, 70MB Cache, tốc độ tối đa 4.8GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU009', N'Intel Core i7-12700KF', N'LGA1700', N'3.6', N'HSX004', N'12 nhân 20 luồng, 25MB Cache, tốc độ tối đa 5.0GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU010', N'AMD Ryzen 5 3600', N'AM4', N'3.6', N'HSX005', N'6 nhân 12 luồng, 35MB Cache, tốc độ tối đa 4.2GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU011', N'Intel Core i9-11900K', N'LGA1200', N'3.5', N'HSX004', N'8 nhân 16 luồng, 16MB Cache, tốc độ tối đa 5.3GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU012', N'AMD Ryzen 7 5800X', N'AM4', N'3.8', N'HSX005', N'8 nhân 16 luồng, 36MB Cache, tốc độ tối đa 4.7GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU013', N'Intel Core i3-10100F', N'LGA1200', N'3.6', N'HSX004', N'4 nhân 8 luồng, 6MB Cache, tốc độ tối đa 4.3GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU014', N'AMD Ryzen 3 3300X', N'AM4', N'3.8', N'HSX005', N'4 nhân 8 luồng, 18MB Cache, tốc độ tối đa 4.3GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU015', N'Intel Core i5-10400', N'LGA1200', N'2.9', N'HSX004', N'6 nhân 12 luồng, 12MB Cache, tốc độ tối đa 4.3GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU016', N'AMD Ryzen 7 3700X', N'AM4', N'3.6', N'HSX005', N'8 nhân 16 luồng, 36MB Cache, tốc độ tối đa 4.4GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU017', N'Intel Core i7-10700K', N'LGA1200', N'3.8', N'HSX004', N'8 nhân 16 luồng, 16MB Cache, tốc độ tối đa 5.1GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU018', N'AMD Ryzen 5 5600X', N'AM4', N'3.7', N'HSX005', N'6 nhân 12 luồng, 35MB Cache, tốc độ tối đa 4.6GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU019', N'Intel Core i9-10900KF', N'LGA1200', N'3.7', N'HSX004', N'10 nhân 20 luồng, 20MB Cache, tốc độ tối đa 5.3GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU020', N'AMD Ryzen 9 5950X', N'AM4', N'3.4', N'HSX005', N'16 nhân 32 luồng, 72MB Cache, tốc độ tối đa 4.9GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU021', N'Intel Core i5-11600K', N'LGA1200', N'3.9', N'HSX004', N'6 nhân 12 luồng, 12MB Cache, tốc độ tối đa 4.9GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU022', N'AMD Ryzen 5 3500X', N'AM4', N'3.6', N'HSX005', N'6 nhân 6 luồng, 35MB Cache, tốc độ tối đa 4.1GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU023', N'Intel Core i9-10850K', N'LGA1200', N'3.6', N'HSX004', N'10 nhân 20 luồng, 20MB Cache, tốc độ tối đa 5.2GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU024', N'AMD Ryzen 5 3400G', N'AM4', N'3.7', N'HSX005', N'4 nhân 8 luồng, 6MB Cache, tốc độ tối đa 4.2GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU025', N'Intel Core i5-10600KF', N'LGA1200', N'4.1', N'HSX004', N'6 nhân 12 luồng, 12MB Cache, tốc độ tối đa 4.8GHz')
GO

INSERT INTO [dbo].[CPU] ([maCPU], [tenCPU], [socket], [tocDo], [maHSX], [moTa]) VALUES (N'CPU026', N'AMD Ryzen 7 2700X', N'AM4', N'3.7', N'HSX005', N'8 nhân 16 luồng, 20MB Cache, tốc độ tối đa 4.3GHz')
GO


-- ----------------------------
-- Table structure for GPU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GPU]') AND type IN ('U'))
    DROP TABLE [dbo].[GPU]
GO

CREATE TABLE [dbo].[GPU] (
                             [maGPU] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [tenGPU] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [loaiGPU] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [dungLuong] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [maHSX] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [moTa] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[GPU] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GPU
-- ----------------------------
INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU001', N'GIGABYTE GeForce GTX 1660 SUPER D6 6G', N'Rời', N'6‎GB GDDR6', N'HSX010', N'3 cổng DP 1.4 + 1 cổng HDMI 2.0B')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU002', N'Asus TUF RTX 4070 12GB Gaming', N'Rời', N'12GB GDDR6X', N'HSX003', N'2 cổng HDMI 2.1 + 3 cổng DP 1.4A')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU003', N'AMD Vega 7', N'Tích hợp', N'512MB', N'HSX005', NULL)
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU004', N'NVIDIA GeForce RTX 3050 (Laptop)', N'Rời', N'8GB GDDR6', N'HSX011', NULL)
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU005', N'Intel ARC Graphics', N'Tích hợp', N'512MB', N'HSX004', NULL)
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU006', N'Apple M3', N'Tích hợp', N'512MB LPDDR5', N'HSX006', NULL)
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU007', N'NVIDIA GeForce RTX 3080', N'Rời', N'10GB GDDR6X', N'HSX011', N'2 cổng HDMI 2.1, 3 cổng DisplayPort 1.4a')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU008', N'AMD Radeon RX 6900 XT', N'Rời', N'16GB GDDR6', N'HSX005', N'1 cổng HDMI 2.1, 2 cổng DisplayPort 1.4, 1 cổng USB-C')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU009', N'NVIDIA GeForce RTX 3090', N'Rời', N'24GB GDDR6X', N'HSX011', N'1 cổng HDMI 2.1, 3 cổng DisplayPort 1.4a')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU010', N'AMD Radeon RX 6700 XT', N'Rời', N'12GB GDDR6', N'HSX005', N'1 cổng HDMI 2.1, 3 cổng DisplayPort 1.4')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU011', N'NVIDIA GeForce GTX 1650', N'Rời', N'4GB GDDR6', N'HSX011', N'1 cổng HDMI 2.0b, 1 cổng DisplayPort 1.4, 1 cổng DVI-D')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU012', N'AMD Radeon RX 5500 XT', N'Rời', N'8GB GDDR6', N'HSX005', N'1 cổng HDMI 2.0b, 1 cổng DisplayPort 1.4, 1 cổng DVI-D')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU013', N'NVIDIA GeForce RTX 3060 Ti', N'Rời', N'8GB GDDR6', N'HSX011', N'1 cổng HDMI 2.1, 3 cổng DisplayPort 1.4a')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU014', N'AMD Radeon RX 6600 XT', N'Rời', N'8GB GDDR6', N'HSX005', N'1 cổng HDMI 2.1, 3 cổng DisplayPort 1.4')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU015', N'NVIDIA GeForce GTX 1660 Ti', N'Rời', N'6GB GDDR6', N'HSX011', N'1 cổng HDMI 2.0b, 1 cổng DisplayPort 1.4, 1 cổng DVI-D')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU016', N'AMD Radeon RX 6800', N'Rời', N'16GB GDDR6', N'HSX005', N'1 cổng HDMI 2.1, 2 cổng DisplayPort 1.4, 1 cổng USB-C')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU017', N'NVIDIA GeForce RTX 3070', N'Rời', N'8GB GDDR6', N'HSX011', N'1 cổng HDMI 2.1, 3 cổng DisplayPort 1.4a')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU018', N'AMD Radeon RX 5700 XT', N'Rời', N'8GB GDDR6', N'HSX005', N'1 cổng HDMI 2.0b, 1 cổng DisplayPort 1.4, 1 cổng DVI-D')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU019', N'NVIDIA GeForce RTX 3060', N'Rời', N'12GB GDDR6', N'HSX011', N'1 cổng HDMI 2.1, 3 cổng DisplayPort 1.4a')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU020', N'AMD Radeon RX 5600 XT', N'Rời', N'6GB GDDR6', N'HSX005', N'1 cổng HDMI 2.0b, 1 cổng DisplayPort 1.4, 1 cổng DVI-D')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU021', N'NVIDIA GeForce GTX 1050 Ti', N'Rời', N'4GB GDDR5', N'HSX011', N'1 cổng HDMI 2.0b, 1 cổng DisplayPort 1.4, 1 cổng DVI-D')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU022', N'AMD Radeon RX 580', N'Rời', N'8GB GDDR5', N'HSX005', N'1 cổng HDMI 2.0b, 1 cổng DisplayPort 1.4, 1 cổng DVI-D')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU023', N'NVIDIA GeForce RTX 2080', N'Rời', N'8GB GDDR6', N'HSX011', N'1 cổng HDMI 2.0b, 3 cổng DisplayPort 1.4')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU024', N'AMD Radeon RX 570', N'Rời', N'4GB GDDR5', N'HSX005', N'1 cổng HDMI 2.0b, 1 cổng DisplayPort 1.4, 1 cổng DVI-D')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU025', N'NVIDIA GeForce GTX 1080 Ti', N'Rời', N'11GB GDDR5X', N'HSX011', N'1 cổng HDMI 2.0b, 3 cổng DisplayPort 1.4')
GO

INSERT INTO [dbo].[GPU] ([maGPU], [tenGPU], [loaiGPU], [dungLuong], [maHSX], [moTa]) VALUES (N'GPU026', N'AMD Radeon RX 470', N'Rời', N'4GB GDDR5', N'HSX005', N'1 cổng HDMI 2.0b, 1 cổng DisplayPort 1.4, 1 cổng DVI-D')
GO


-- ----------------------------
-- Table structure for hangSanXuat
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[hangSanXuat]') AND type IN ('U'))
    DROP TABLE [dbo].[hangSanXuat]
GO

CREATE TABLE [dbo].[hangSanXuat] (
                                     [maHSX] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                     [tenHSX] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[hangSanXuat] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of hangSanXuat
-- ----------------------------
INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX001', N'Asrock')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX002', N'MSI')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX003', N'Asus')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX004', N'Intel')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX005', N'AMD')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX006', N'Apple')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX007', N'Kingston')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX008', N'PNY')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX009', N'Dell')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX010', N'Gigabyte')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX011', N'NVIDIA')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX012', N'Samsung')
GO

INSERT INTO [dbo].[hangSanXuat] ([maHSX], [tenHSX]) VALUES (N'HSX013', N'Western Digital')
GO

-- ----------------------------
-- Table structure for hoaDonBan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[hoaDonBan]') AND type IN ('U'))
    DROP TABLE [dbo].[hoaDonBan]
GO

CREATE TABLE [dbo].[hoaDonBan] (
                                   [maHDB] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                   [ngayBan] date  NOT NULL,
                                   [maNV] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                   [maKhach] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                   [tongTien] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[hoaDonBan] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of hoaDonBan
-- ----------------------------
INSERT INTO [dbo].[hoaDonBan] ([maHDB], [ngayBan], [maNV], [maKhach], [tongTien]) VALUES (N'HDB07062024_105700', N'2024-06-07', N'EMP002', N'CUS001', N'76893300')
GO

INSERT INTO [dbo].[hoaDonBan] ([maHDB], [ngayBan], [maNV], [maKhach], [tongTien]) VALUES (N'HDB07062024_193420', N'2024-06-07', N'EMP001', N'CUS001', N'481377600')
GO

INSERT INTO [dbo].[hoaDonBan] ([maHDB], [ngayBan], [maNV], [maKhach], [tongTien]) VALUES (N'HDB08062024_213233', N'2024-06-08', N'EMP002', N'CUS001', N'1178100000')
GO


-- ----------------------------
-- Table structure for hoaDonNhap
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[hoaDonNhap]') AND type IN ('U'))
    DROP TABLE [dbo].[hoaDonNhap]
GO

CREATE TABLE [dbo].[hoaDonNhap] (
                                    [maHDN] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                    [ngayNhap] date  NOT NULL,
                                    [maNV] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                    [maNCC] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                    [tongTien] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[hoaDonNhap] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of hoaDonNhap
-- ----------------------------
INSERT INTO [dbo].[hoaDonNhap] ([maHDN], [ngayNhap], [maNV], [maNCC], [tongTien]) VALUES (N'HDN07062024_105614', N'2024-06-07', N'EMP001', N'NCC05', N'182340000')
GO

INSERT INTO [dbo].[hoaDonNhap] ([maHDN], [ngayNhap], [maNV], [maNCC], [tongTien]) VALUES (N'HDN07062024_105632', N'2024-06-07', N'EMP002', N'NCC02', N'30390000')
GO

INSERT INTO [dbo].[hoaDonNhap] ([maHDN], [ngayNhap], [maNV], [maNCC], [tongTien]) VALUES (N'HDN07062024_164833', N'2024-06-07', N'EMP002', N'NCC01', N'27990000')
GO

INSERT INTO [dbo].[hoaDonNhap] ([maHDN], [ngayNhap], [maNV], [maNCC], [tongTien]) VALUES (N'HDN07062024_193335', N'2024-06-07', N'EMP001', N'NCC04', N'69900000')
GO

INSERT INTO [dbo].[hoaDonNhap] ([maHDN], [ngayNhap], [maNV], [maNCC], [tongTien]) VALUES (N'HDN08062024_212058', N'2024-06-08', N'EMP002', N'NCC02', N'1199000000')
GO


-- ----------------------------
-- Table structure for khachHang
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[khachHang]') AND type IN ('U'))
    DROP TABLE [dbo].[khachHang]
GO

CREATE TABLE [dbo].[khachHang] (
                                   [maKhach] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                   [tenKhach] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                   [diaChi] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
                                   [dienThoai] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[khachHang] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of khachHang
-- ----------------------------
INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS001', N'Nguyễn Hoàng Tâm', N'Số 12 Chùa Bộc, Đống Đa, Hà Nội', N'(012) 345-6789')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS002', N'Trần Thị Bích Ngọc', N'Số 15 Hoàng Quốc Việt, Cầu Giấy, Hà Nội', N'0912345678')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS003', N'Nguyễn Văn Tâm', N'123 Lý Thường Kiệt, P.12, Q.5, Tp. Hồ Chí Minh', N'0908765432')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS004', N'Lê Thị Minh Anh', N'456 Nguyễn Trãi, Thanh Xuân, Hà Nội', N'0987654321')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS005', N'Phạm Văn Hải', N'789 Hai Bà Trưng, Q.1, Tp. Hồ Chí Minh', N'0901234567')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS006', N'Võ Thị Hồng Nhung', N'Số 9 Trần Phú, Hà Đông, Hà Nội', N'0918765432')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS007', N'Trịnh Văn Sơn', N'Số 10 Bạch Đằng, Q.3, Tp. Hồ Chí Minh', N'0934567890')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS008', N'Nguyễn Thị Thu Hà', N'Số 11 Phan Đăng Lưu, Bình Thạnh, Tp. Hồ Chí Minh', N'0909876543')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS009', N'Hoàng Văn Bình', N'Số 12 Lý Tự Trọng, Q.1, Tp. Hồ Chí Minh', N'0981234567')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS010', N'Phạm Thị Lan', N'13 Nguyễn Thị Minh Khai, Q.1, Tp. Hồ Chí Minh', N'0912345678')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS011', N'Nguyễn Thanh Tùng', N'14 Trường Chinh, Thanh Xuân, Hà Nội', N'0909876543')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS012', N'Phan Thị Mỹ Linh', N'15 Điện Biên Phủ, Q.1, Tp. Hồ Chí Minh', N'0934567890')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS013', N'Lê Văn Phúc', N'Số 16 Trần Hưng Đạo, Q.1, Tp. Hồ Chí Minh', N'0918765432')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS014', N'Trần Thị Thu Hằng', N'17 Hoàng Hoa Thám, Ba Đình, Hà Nội', N'0987654321')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS015', N'Nguyễn Văn Hùng', N'18 Lê Duẩn, Q.1, Tp. Hồ Chí Minh', N'0901234567')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS016', N'Phạm Thị Hương', N'19 Nguyễn Huệ, Q.1, Tp. Hồ Chí Minh', N'0912345678')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS017', N'Trịnh Văn Dũng', N'20 Lê Thánh Tôn, Q.1, Tp. Hồ Chí Minh', N'0909876543')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS018', N'Nguyễn Thị Thanh', N'21 Lý Thái Tổ, Q.10, Tp. Hồ Chí Minh', N'0934567890')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS019', N'Lê Thị Phương', N'22 Nguyễn Văn Cừ, Q.5, Tp. Hồ Chí Minh', N'0918765432')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS020', N'Trần Văn Quang', N'23 Võ Văn Tần, Q.3, Tp. Hồ Chí Minh', N'0981234567')
GO

INSERT INTO [dbo].[khachHang] ([maKhach], [tenKhach], [diaChi], [dienThoai]) VALUES (N'CUS021', N'Nguyễn Thị Ngọc Lan', N'24 Lê Lợi, Q.1, Tp. Hồ Chí Minh', N'0912345678')
GO


-- ----------------------------
-- Table structure for loaiMay
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[loaiMay]') AND type IN ('U'))
    DROP TABLE [dbo].[loaiMay]
GO

CREATE TABLE [dbo].[loaiMay] (
                                 [maLoaiMay] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                 [tenLoaiMay] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[loaiMay] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of loaiMay
-- ----------------------------
INSERT INTO [dbo].[loaiMay] ([maLoaiMay], [tenLoaiMay]) VALUES (N'LAP', N'Máy tính xách tay')
GO

INSERT INTO [dbo].[loaiMay] ([maLoaiMay], [tenLoaiMay]) VALUES (N'PC', N'Máy tính để bàn')
GO


-- ----------------------------
-- Table structure for mainboard
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[mainboard]') AND type IN ('U'))
    DROP TABLE [dbo].[mainboard]
GO

CREATE TABLE [dbo].[mainboard] (
                                   [maMainboard] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                   [tenMainboard] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                   [socket] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                   [moTa] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
                                   [maHSX] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[mainboard] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of mainboard
-- ----------------------------
INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN001', N'Asrock B660M Pro RS', N'LGA1700', N'Kích thước Micro-ATX, 4 khe cắm RAM (tối đa 128GB), 4 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME (3.0/4.0)', N'HSX001')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN002', N'MSI B450M PRO-VDH MAX', N'AM4', N'Kích thước Micro-ATX, 4 khe cắm RAM (tối đa 128GB), 4 khe cắm ổ cứng SATA 6Gb/s + 1 khe cắm ổ cứng M2 NVME 3.0', N'HSX002')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN003', N'Asus PRIME Z790-P D4-CSM', N'LGA1700', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 4 khe cắm ổ cứng SATA 6Gb/s + 3 khe cắm ổ cứng M2 NVME (3.0/4.0)', N'HSX003')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN004', N'Gigabyte B550 AORUS ELITE', N'AM4', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 4 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME 3.0', N'HSX010')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN005', N'MSI MPG Z590 GAMING EDGE WIFI', N'LGA1200', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 3 khe cắm ổ cứng M2 NVME 3.0', N'HSX002')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN006', N'Asus ROG STRIX B550-F GAMING', N'AM4', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME 3.0', N'HSX003')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN007', N'Asrock B450 Steel Legend', N'AM4', N'Kích thước ATX, 4 khe cắm RAM (tối đa 64GB), 6 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME 3.0', N'HSX001')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN008', N'Gigabyte Z490 AORUS ULTRA', N'LGA1200', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 3 khe cắm ổ cứng M2 NVME 3.0', N'HSX010')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN009', N'MSI MAG B550 TOMAHAWK', N'AM4', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME 3.0', N'HSX002')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN010', N'Asus PRIME B550-PLUS', N'AM4', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME 3.0', N'HSX003')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN011', N'Gigabyte B450M DS3H', N'AM4', N'Kích thước Micro-ATX, 4 khe cắm RAM (tối đa 64GB), 6 khe cắm ổ cứng SATA 6Gb/s + 1 khe cắm ổ cứng M2 NVME 3.0', N'HSX010')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN012', N'MSI B450 TOMAHAWK MAX', N'AM4', N'Kích thước ATX, 4 khe cắm RAM (tối đa 64GB), 6 khe cắm ổ cứng SATA 6Gb/s + 1 khe cắm ổ cứng M2 NVME 3.0', N'HSX002')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN013', N'Asus TUF GAMING B550M-PLUS', N'AM4', N'Kích thước Micro-ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME 3.0', N'HSX003')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN014', N'Asrock B550 Phantom Gaming 4', N'AM4', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME 3.0', N'HSX001')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN015', N'Gigabyte Z590 VISION D', N'LGA1200', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 3 khe cắm ổ cứng M2 NVME 3.0', N'HSX010')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN016', N'MSI MPG B550 GAMING PLUS', N'AM4', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME 3.0', N'HSX002')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN017', N'Asus PRIME Z490-A', N'LGA1200', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 3 khe cắm ổ cứng M2 NVME 3.0', N'HSX003')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN018', N'Asrock B550M Pro4', N'AM4', N'Kích thước Micro-ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 2 khe cắm ổ cứng M2 NVME 3.0', N'HSX001')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN019', N'Gigabyte Z590 AORUS PRO AX', N'LGA1200', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 3 khe cắm ổ cứng M2 NVME 3.0', N'HSX010')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN020', N'MSI MPG Z490 GAMING CARBON WIFI', N'LGA1200', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 3 khe cắm ổ cứng M2 NVME 3.0', N'HSX002')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN021', N'Asus ROG STRIX Z490-E GAMING', N'LGA1200', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 3 khe cắm ổ cứng M2 NVME 3.0', N'HSX003')
GO

INSERT INTO [dbo].[mainboard] ([maMainboard], [tenMainboard], [socket], [moTa], [maHSX]) VALUES (N'MAIN022', N'Asrock Z490 Taichi', N'LGA1200', N'Kích thước ATX, 4 khe cắm RAM (tối đa 128GB), 6 khe cắm ổ cứng SATA 6Gb/s + 3 khe cắm ổ cứng M2 NVME 3.0', N'HSX001')
GO

-- ----------------------------
-- Table structure for manHinh
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manHinh]') AND type IN ('U'))
    DROP TABLE [dbo].[manHinh]
GO

CREATE TABLE [dbo].[manHinh] (
                                 [maMH] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                 [thongTin] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[manHinh] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of manHinh
-- ----------------------------
INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI001', N'14inch, tấm nền IPS, tần số quét 144Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI002', N'13,4inch, tấm nền IPS, tần số quét 90Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI003', N'15,3inch, tấm nền Retina, tần số quét 60Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI004', N'27inch, tấm nền IPS, tần số quét 165Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI005', N'24inch, tấm nền TN, tần số quét 144Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI006', N'34inch, tấm nền VA, tần số quét 100Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI007', N'32inch, tấm nền IPS, tần số quét 75Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI008', N'29inch, tấm nền IPS, tần số quét 60Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI009', N'27inch, tấm nền TN, tần số quét 240Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI010', N'24inch, tấm nền IPS, tần số quét 75Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI011', N'21.5inch, tấm nền VA, tần số quét 60Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI012', N'27inch, tấm nền OLED, tần số quét 120Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI013', N'32inch, tấm nền TN, tần số quét 144Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI014', N'23.8inch, tấm nền IPS, tần số quét 75Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI015', N'28inch, tấm nền TN, tần số quét 60Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI016', N'30inch, tấm nền IPS, tần số quét 100Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI017', N'32inch, tấm nền VA, tần số quét 165Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI018', N'24.5inch, tấm nền TN, tần số quét 144Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI019', N'27inch, tấm nền VA, tần số quét 240Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI020', N'31.5inch, tấm nền IPS, tần số quét 75Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI021', N'27inch, tấm nền OLED, tần số quét 144Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI022', N'32inch, tấm nền TN, tần số quét 165Hz')
GO

INSERT INTO [dbo].[manHinh] ([maMH], [thongTin]) VALUES (N'MONI023', N'23.6inch, tấm nền IPS, tần số quét 60Hz')
GO

-- ----------------------------
-- Table structure for mayTinh
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[mayTinh]') AND type IN ('U'))
    DROP TABLE [dbo].[mayTinh]
GO

CREATE TABLE [dbo].[mayTinh] (
                                 [tenMay] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                 [maMay] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                 [maLoaiMay] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                 [maMainboard] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
                                 [maCPU] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                 [maRam] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                 [maGPU] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                 [maOC] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                 [maMH] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
                                 [maHSX] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
                                 [giaNhap] bigint  NOT NULL,
                                 [giaBan] bigint  NOT NULL,
                                 [soLuong] int  NOT NULL,
                                 [thoiGianBH] int  NULL,
                                 [ghiChu] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
                                 [hinhAnh] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[mayTinh] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of mayTinh
-- ----------------------------
INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'Asus ROG Zephyrus G14 GA402NJ-L4056W', N'COM001', N'LAP', NULL, N'CPU004', N'RAM004', N'GPU004', N'DISK003', N'MONI001', N'HSX003', N'27990000', N'36387000', N'0', N'24', N'Đổi mới trong 15 ngày', NULL)
GO

INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'Dell XPS 13 9340 71034922', N'COM002', N'LAP', NULL, N'CPU005', N'RAM005', N'GPU005', N'DISK002', N'MONI002', N'HSX009', N'47490000', N'61737000', N'3', N'12', N'Đổi mới trong 15 ngày, Dịch vụ bảo hành tại nơi sử dụng của hãng Dell', NULL)
GO

INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'Apple MacBook Air 15 inch M3 - Midnight', N'COM003', N'LAP', NULL, N'CPU006', N'RAM006', N'GPU006', N'DISK004', N'MONI003', N'HSX006', N'29990000', N'38987000', N'52', N'12', N'Bảo hành tại trung tâm bảo hành APPLE VN', NULL)
GO

INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'PC Standard 1', N'COM004', N'PC', N'MAIN001', N'CPU001', N'RAM003', N'GPU001', N'DISK001', NULL, NULL, N'11990000', N'15587000', N'72', NULL, N'Bảo hành theo từng linh kiện', NULL)
GO

INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'PC Studio Graphics 1', N'COM005', N'PC', N'MAIN003', N'CPU002', N'RAM002', N'GPU002', N'DISK002', NULL, NULL, N'52990000', N'68887000', N'7', NULL, N'Bảo hành theo từng linh kiện', NULL)
GO

INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh]) VALUES (N'PC Designer 1', N'COM006', N'PC', N'MAIN002', N'CPU003', N'RAM001', N'GPU003', N'DISK001', NULL, NULL, N'6990000', N'9087000', N'82', N'0', N'Bảo hành theo từng linh kiện', N'')
GO

INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh])
VALUES
    (N'Asus TUF Gaming F15', N'COM007', N'LAP', NULL, N'CPU003', N'RAM005', N'GPU001', N'DISK001', N'MONI001', N'HSX003', 20000000, 26000000, 10, 24, N'Bảo hành 2 năm', NULL)
GO

INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh])
VALUES
    (N'MSI Prestige 14', N'COM008', N'LAP', NULL, N'CPU002', N'RAM002', N'GPU004', N'DISK004', N'MONI002', N'HSX002', 25000000, 32500000, 5, 24, N'Bảo hành 1 năm', NULL)
GO

INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh])
VALUES
    (N'HP Spectre x360', N'COM009', N'LAP', NULL, N'CPU001', N'RAM001', N'GPU003', N'DISK003', N'MONI003', N'HSX004', 22000000, 28600000, 8, 12, N'Bảo hành 1 năm', NULL)
GO

INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh])
VALUES
    (N'Acer Aspire 5', N'COM010', N'LAP', NULL, N'CPU004', N'RAM004', N'GPU005', N'DISK005', N'MONI004', N'HSX010', 15000000, 19500000, 20, 12, N'Bảo hành 1 năm', NULL)
GO

INSERT INTO [dbo].[mayTinh] ([tenMay], [maMay], [maLoaiMay], [maMainboard], [maCPU], [maRam], [maGPU], [maOC], [maMH], [maHSX], [giaNhap], [giaBan], [soLuong], [thoiGianBH], [ghiChu], [hinhAnh])
VALUES
    (N'Lenovo Legion 5', N'COM011', N'LAP', NULL, N'CPU005', N'RAM006', N'GPU006', N'DISK006', N'MONI005', N'HSX005', 30000000, 39000000, 15, 24, N'Bảo hành 2 năm', NULL)
GO


-- ----------------------------
-- Table structure for nhaCungCap
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[nhaCungCap]') AND type IN ('U'))
    DROP TABLE [dbo].[nhaCungCap]
GO

CREATE TABLE [dbo].[nhaCungCap] (
                                    [maNCC] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                    [tenNCC] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                    [diaChi] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                    [dienThoai] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[nhaCungCap] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of nhaCungCap
-- ----------------------------
INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC01', N'Điện Tử Kim Thiên Bảo', N'22-24 Đường Số 10, Khu Dân Cư Trung Sơn, P. Bình Hưng, H. Bình Chánh, Tp. Hồ Chí Minh, Việt Nam', N'0907225889')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC02', N'Bình Minh Phát', N'22-24 Đường Số 10, Khu Dân Cư Trung Sơn, P. Bình Hưng, H. Bình Chánh, Tp. Hồ Chí Minh', N'0937625889')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC03', N'Đình Hậu', N'Số 91 Phạm Như Xương, Phường Hoà Khánh Nam, Quận Liên Chiểu, Tp. Đà Nẵng', N'0948637037')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC04', N'Nguyên Kim', N'245B Trần Quang Khải, Phường Tân Định, Quận 1, Tp. Hồ Chí Minh', N'0967225889')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC05', N'Công Ty CP Máy Tính H - SKY', N'Số 73, Ngõ 68 Xuân Thủy, Q. Cầu Giấy, Hà Nội', N'0901268889')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC06', N'FPT Shop', N'216 Trần Duy Hưng, Cầu Giấy, Hà Nội', N'0912345678')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC07', N'TGDD', N'25 Nguyễn Hữu Thọ, Phước Kiển, Nhà Bè, Tp. Hồ Chí Minh', N'0908765432')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC08', N'CellphoneS', N'364 Cộng Hòa, Tân Bình, Tp. Hồ Chí Minh', N'0987654321')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC09', N'Phúc Anh', N'152 Phạm Văn Đồng, Bắc Từ Liêm, Hà Nội', N'0901234567')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC10', N'Hoàng Hà Mobile', N'126 Cầu Giấy, Cầu Giấy, Hà Nội', N'0918765432')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC11', N'TMD', N'19 Nguyễn Thị Minh Khai, Q.1, Tp. Hồ Chí Minh', N'0934567890')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC12', N'ShopDunk', N'57 Lý Thường Kiệt, Hoàn Kiếm, Hà Nội', N'0912345678')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC13', N'Digiworld', N'49 Trần Hưng Đạo, Q.1, Tp. Hồ Chí Minh', N'0909876543')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC14', N'TechOne', N'80 Lý Tự Trọng, Q.1, Tp. Hồ Chí Minh', N'0934567890')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC15', N'GearVN', N'98 Cách Mạng Tháng 8, Q.3, Tp. Hồ Chí Minh', N'0918765432')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC16', N'Phong Vũ', N'1 Hoàng Hoa Thám, Ba Đình, Hà Nội', N'0987654321')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC17', N'Mobile World', N'12 Trần Phú, Hà Đông, Hà Nội', N'0901234567')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC18', N'MaxMobile', N'13 Điện Biên Phủ, Q.1, Tp. Hồ Chí Minh', N'0912345678')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC19', N'Viettel Store', N'9 Bạch Đằng, Q.3, Tp. Hồ Chí Minh', N'0909876543')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC20', N'StoreDigi', N'10 Phan Đăng Lưu, Bình Thạnh, Tp. Hồ Chí Minh', N'0934567890')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC21', N'HnamMobile', N'11 Lý Tự Trọng, Q.1, Tp. Hồ Chí Minh', N'0912345678')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC22', N'Trung Tâm Laptop Cũ', N'12 Lê Lợi, Q.1, Tp. Hồ Chí Minh', N'0909876543')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC23', N'BK Computer', N'14 Võ Văn Tần, Q.3, Tp. Hồ Chí Minh', N'0934567890')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC24', N'Pico', N'15 Trường Chinh, Thanh Xuân, Hà Nội', N'0918765432')
GO

INSERT INTO [dbo].[nhaCungCap] ([maNCC], [tenNCC], [diaChi], [dienThoai]) VALUES (N'NCC25', N'Ngọc Sơn', N'16 Nguyễn Văn Cừ, Q.5, Tp. Hồ Chí Minh', N'0981234567')
GO

-- ----------------------------
-- Table structure for nhanVien
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[nhanVien]') AND type IN ('U'))
    DROP TABLE [dbo].[nhanVien]
GO

CREATE TABLE [dbo].[nhanVien] (
                                  [maNV] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                  [tenNV] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                  [ngaySinh] date  NOT NULL,
                                  [gioiTinh] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                  [diaChi] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                  [dienThoai] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[nhanVien] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of nhanVien
-- ----------------------------
INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP001', N'Nguyễn Văn A', N'2003-12-30', N'Nam', N'Hà Nội', N'0123456789')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP002', N'Trần Ngọc B', N'2003-02-28', N'Nữ', N'Hải Phòng', N'0987654321')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP003', N'Hoàng Văn C', N'2002-01-15', N'Nam', N'Hà Nội', N'0123456790')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP004', N'Nguyễn Thị D', N'1998-04-25', N'Nữ', N'Bắc Ninh', N'0987654322')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP005', N'Trần Văn E', N'1999-08-10', N'Nam', N'Hải Dương', N'0987654323')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP006', N'Lê Thị F', N'1997-12-20', N'Nữ', N'Nam Định', N'0912345679')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP007', N'Phạm Văn G', N'2000-05-05', N'Nam', N'Quảng Ninh', N'0987654324')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP008', N'Vũ Thị H', N'1996-11-30', N'Nữ', N'Hà Nam', N'0987654325')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP009', N'Doãn Văn I', N'1998-07-15', N'Nam', N'Hải Phòng', N'0987654326')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP010', N'Trịnh Thị J', N'1995-03-10', N'Nữ', N'Bắc Giang', N'0912345680')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP011', N'Tô Văn K', N'2001-09-25', N'Nam', N'Lạng Sơn', N'0987654327')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP012', N'Nguyễn Thị L', N'1997-02-20', N'Nữ', N'Phú Thọ', N'0987654328')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP013', N'Bùi Văn M', N'1999-06-30', N'Nam', N'Vĩnh Phúc', N'0912345681')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP014', N'Hoàng Thị N', N'1996-12-15', N'Nữ', N'Yên Bái', N'0987654329')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP015', N'Nguyễn Văn O', N'1998-05-20', N'Nam', N'Hà Giang', N'0987654330')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP016', N'Phạm Thị P', N'2000-10-10', N'Nữ', N'Hà Tĩnh', N'0912345682')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP017', N'Trần Văn Q', N'1997-08-05', N'Nam', N'Quảng Bình', N'0987654331')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP018', N'Lê Thị R', N'1996-03-15', N'Nữ', N'Bình Định', N'0987654332')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP019', N'Phạm Văn S', N'2002-12-20', N'Nam', N'Khánh Hòa', N'0912345683')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP020', N'Nguyễn Thị T', N'1999-04-25', N'Nữ', N'Ninh Bình', N'0987654333')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP021', N'Trịnh Văn U', N'2001-07-05', N'Nam', N'Bình Phước', N'0987654334')
GO

INSERT INTO [dbo].[nhanVien] ([maNV], [tenNV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai]) VALUES (N'EMP022', N'Võ Thị V', N'2003-03-20', N'Nữ', N'Gia Lai', N'0912345684')
GO

-- ----------------------------
-- Table structure for oCung
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[oCung]') AND type IN ('U'))
    DROP TABLE [dbo].[oCung]
GO

CREATE TABLE [dbo].[oCung] (
                               [maOC] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                               [tenOC] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                               [dungLuong] int  NOT NULL,
                               [loaiOC] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                               [maHSX] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                               [moTa] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[oCung] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of oCung
-- ----------------------------
INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK001', N'SSD Kingston A400', N'480', N'SSD', N'HSX007', NULL)
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK002', N'Kingston SSD KC3000 PCIe 4.0', N'1024', N'SSD', N'HSX007', NULL)
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK003', N'SSD Samsung 980 PCIe NVMe V-NAND', N'512', N'SSD', N'HSX012', NULL)
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK004', N'Apple M3 SSD', N'256', N'SSD', N'HSX006', NULL)
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK005', N'SSD Samsung 970 EVO Plus', N'500', N'SSD', N'HSX012', N'Tốc độ đọc/ghi tuần tự: 3500/3300 MB/s')
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK006', N'Kingston A2000', N'1024', N'SSD', N'HSX007', N'Tốc độ đọc/ghi tuần tự: 2200/2000 MB/s')
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK007', N'WD Blue SN550', N'500', N'SSD', N'HSX013', N'Tốc độ đọc/ghi tuần tự: 2400/1750 MB/s')
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK008', N'Kingston NV1', N'1024', N'SSD', N'HSX007', N'Tốc độ đọc/ghi tuần tự: 2100/1700 MB/s')
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK009', N'Samsung 860 EVO', N'500', N'SSD', N'HSX012', N'Tốc độ đọc/ghi tuần tự: 550/520 MB/s')
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK010', N'Samsung 980', N'1024', N'SSD', N'HSX012', N'Tốc độ đọc/ghi tuần tự: 3500/3000 MB/s')
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK011', N'WD Black SN750', N'500', N'SSD', N'HSX013', N'Tốc độ đọc/ghi tuần tự: 3430/2600 MB/s')
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK012', N'Kingston KC600', N'1024', N'SSD', N'HSX007', N'Tốc độ đọc/ghi tuần tự: 550/520 MB/s')
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK013', N'Samsung 870 QVO', N'2048', N'SSD', N'HSX012', N'Tốc độ đọc/ghi tuần tự: 560/530 MB/s')
GO

INSERT INTO [dbo].[oCung] ([maOC], [tenOC], [dungLuong], [loaiOC], [maHSX], [moTa]) VALUES (N'DISK014', N'Kingston A400', N'240', N'SSD', N'HSX007', N'Tốc độ đọc/ghi tuần tự: 500/350 MB/s')
GO



-- ----------------------------
-- Table structure for ram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ram]') AND type IN ('U'))
    DROP TABLE [dbo].[ram]
GO

CREATE TABLE [dbo].[ram] (
                             [maRam] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [tenRam] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [loaiRam] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
                             [bus] int  NULL,
                             [dungLuong] int  NOT NULL,
                             [maHSX] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                             [moTa] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ram] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ram
-- ----------------------------
INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM001', N'Kingston FURY Beast', N'DDR4', N'3200', N'8', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM002', N'Kingston FURY Beast RGB', N'DDR4', N'3200', N'32', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM003', N'PNY Desktop', N'DDR4', N'3200', N'8', N'HSX008', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM004', N'ROG (Zephyrus G14 GA402NJ-L4056W)', N'DDR5', N'4800', N'16', N'HSX003', N'2x8GB, 1 thanh rời + 1 thanh hàn chết')
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM005', N'XPS (XPS 13 9340 71034922)', N'LPDDR5X', N'7467', N'16', N'HSX009', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM006', N'Apple (MacBook Air 15 M3)', N'', NULL, N'8', N'HSX006', N'')
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM007', N'Kingston HyperX Fury', N'DDR4', N'3200', N'8', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM008', N'Kingston HyperX Predator', N'DDR4', N'3600', N'16', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM009', N'Kingston HyperX Fury RGB', N'DDR4', N'3200', N'16', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM010', N'Kingston Fury Beast', N'DDR4', N'3000', N'8', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM011', N'Kingston Fury Renegade', N'DDR4', N'3600', N'32', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM012', N'Kingston Fury Impact', N'DDR4', N'2666', N'8', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM013', N'Kingston Fury Impact', N'DDR4', N'3200', N'16', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM014', N'Kingston HyperX Impact', N'DDR4', N'3200', N'32', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM015', N'Kingston HyperX Fury', N'DDR4', N'2666', N'16', N'HSX007', NULL)
GO

INSERT INTO [dbo].[ram] ([maRam], [tenRam], [loaiRam], [bus], [dungLuong], [maHSX], [moTa]) VALUES (N'RAM016', N'Kingston HyperX Predator RGB', N'DDR4', N'3200', N'16', N'HSX007', NULL)
GO


-- ----------------------------
-- Table structure for taiKhoan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[taiKhoan]') AND type IN ('U'))
    DROP TABLE [dbo].[taiKhoan]
GO

CREATE TABLE [dbo].[taiKhoan] (
                                  [maTaiKhoan] int  NOT NULL,
                                  [tenTaiKhoan] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
                                  [matKhau] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[taiKhoan] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of taiKhoan
-- ----------------------------
INSERT INTO [dbo].[taiKhoan] ([maTaiKhoan], [tenTaiKhoan], [matKhau]) VALUES (N'1', N'admin', N'admin')
GO


-- ----------------------------
-- Primary Key structure for table chiTietHDB
-- ----------------------------
ALTER TABLE [dbo].[chiTietHDB] ADD CONSTRAINT [chiTietHDB_pk] PRIMARY KEY CLUSTERED ([maHDB], [maMay])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table chiTietHDN
-- ----------------------------
ALTER TABLE [dbo].[chiTietHDN] ADD CONSTRAINT [chiTietHDN_pk] PRIMARY KEY CLUSTERED ([maHDN], [maMay])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table CPU
-- ----------------------------
ALTER TABLE [dbo].[CPU] ADD CONSTRAINT [CPU_PK] PRIMARY KEY CLUSTERED ([maCPU])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table GPU
-- ----------------------------
ALTER TABLE [dbo].[GPU] ADD CONSTRAINT [GPU_PK] PRIMARY KEY CLUSTERED ([maGPU])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table hangSanXuat
-- ----------------------------
ALTER TABLE [dbo].[hangSanXuat] ADD CONSTRAINT [hangSanXuat_pk] PRIMARY KEY CLUSTERED ([maHSX])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table hoaDonBan
-- ----------------------------
ALTER TABLE [dbo].[hoaDonBan] ADD CONSTRAINT [hoaDonBan_pk] PRIMARY KEY CLUSTERED ([maHDB])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table hoaDonNhap
-- ----------------------------
ALTER TABLE [dbo].[hoaDonNhap] ADD CONSTRAINT [hoaDonNhap_pk] PRIMARY KEY CLUSTERED ([maHDN])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table khachHang
-- ----------------------------
ALTER TABLE [dbo].[khachHang] ADD CONSTRAINT [khachHang_pk] PRIMARY KEY CLUSTERED ([maKhach])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table loaiMay
-- ----------------------------
ALTER TABLE [dbo].[loaiMay] ADD CONSTRAINT [loaiMay_pk] PRIMARY KEY CLUSTERED ([maLoaiMay])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table mainboard
-- ----------------------------
ALTER TABLE [dbo].[mainboard] ADD CONSTRAINT [mainboard_pk] PRIMARY KEY CLUSTERED ([maMainboard])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table manHinh
-- ----------------------------
ALTER TABLE [dbo].[manHinh] ADD CONSTRAINT [manHinh_pk] PRIMARY KEY CLUSTERED ([maMH])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table mayTinh
-- ----------------------------
ALTER TABLE [dbo].[mayTinh] ADD CONSTRAINT [mayTinh_pk] PRIMARY KEY CLUSTERED ([maMay])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table nhaCungCap
-- ----------------------------
ALTER TABLE [dbo].[nhaCungCap] ADD CONSTRAINT [nhaCungCap_pk] PRIMARY KEY CLUSTERED ([maNCC])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table nhanVien
-- ----------------------------
ALTER TABLE [dbo].[nhanVien] ADD CONSTRAINT [nhanVien_pk] PRIMARY KEY CLUSTERED ([maNV])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table oCung
-- ----------------------------
ALTER TABLE [dbo].[oCung] ADD CONSTRAINT [oCung_pk] PRIMARY KEY CLUSTERED ([maOC])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ram
-- ----------------------------
ALTER TABLE [dbo].[ram] ADD CONSTRAINT [ram_pk] PRIMARY KEY CLUSTERED ([maRam])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table taiKhoan
-- ----------------------------
ALTER TABLE [dbo].[taiKhoan] ADD CONSTRAINT [taiKhoan_pk] PRIMARY KEY CLUSTERED ([maTaiKhoan])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table chiTietHDB
-- ----------------------------
ALTER TABLE [dbo].[chiTietHDB] ADD CONSTRAINT [chiTietHDB_hoaDonBan_FK] FOREIGN KEY ([maHDB]) REFERENCES [dbo].[hoaDonBan] ([maHDB]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[chiTietHDB] ADD CONSTRAINT [chiTietHDB_mayTinh_FK] FOREIGN KEY ([maMay]) REFERENCES [dbo].[mayTinh] ([maMay]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table chiTietHDN
-- ----------------------------
ALTER TABLE [dbo].[chiTietHDN] ADD CONSTRAINT [chiTietHDN_hoaDonNhap_FK] FOREIGN KEY ([maHDN]) REFERENCES [dbo].[hoaDonNhap] ([maHDN]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[chiTietHDN] ADD CONSTRAINT [chiTietHDN_mayTinh_FK] FOREIGN KEY ([maMay]) REFERENCES [dbo].[mayTinh] ([maMay]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CPU
-- ----------------------------
ALTER TABLE [dbo].[CPU] ADD CONSTRAINT [CPU_hangSanXuat_FK] FOREIGN KEY ([maHSX]) REFERENCES [dbo].[hangSanXuat] ([maHSX]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GPU
-- ----------------------------
ALTER TABLE [dbo].[GPU] ADD CONSTRAINT [GPU_hangSanXuat_FK] FOREIGN KEY ([maHSX]) REFERENCES [dbo].[hangSanXuat] ([maHSX]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table hoaDonBan
-- ----------------------------
ALTER TABLE [dbo].[hoaDonBan] ADD CONSTRAINT [hoaDonBan_khachHang_FK] FOREIGN KEY ([maKhach]) REFERENCES [dbo].[khachHang] ([maKhach]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[hoaDonBan] ADD CONSTRAINT [hoaDonBan_nhanVien_FK] FOREIGN KEY ([maNV]) REFERENCES [dbo].[nhanVien] ([maNV]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table hoaDonNhap
-- ----------------------------
ALTER TABLE [dbo].[hoaDonNhap] ADD CONSTRAINT [hoaDonNhap_nhaCungCap_FK] FOREIGN KEY ([maNCC]) REFERENCES [dbo].[nhaCungCap] ([maNCC]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[hoaDonNhap] ADD CONSTRAINT [hoaDonNhap_nhanVien_FK] FOREIGN KEY ([maNV]) REFERENCES [dbo].[nhanVien] ([maNV]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table mainboard
-- ----------------------------
ALTER TABLE [dbo].[mainboard] ADD CONSTRAINT [mainboard_hangSanXuat_FK] FOREIGN KEY ([maHSX]) REFERENCES [dbo].[hangSanXuat] ([maHSX]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table mayTinh
-- ----------------------------
ALTER TABLE [dbo].[mayTinh] ADD CONSTRAINT [mayTinh_CPU_FK] FOREIGN KEY ([maCPU]) REFERENCES [dbo].[CPU] ([maCPU]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[mayTinh] ADD CONSTRAINT [mayTinh_GPU_FK] FOREIGN KEY ([maGPU]) REFERENCES [dbo].[GPU] ([maGPU]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[mayTinh] ADD CONSTRAINT [mayTinh_hangSanXuat_FK] FOREIGN KEY ([maHSX]) REFERENCES [dbo].[hangSanXuat] ([maHSX]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[mayTinh] ADD CONSTRAINT [mayTinh_loaiMay_FK] FOREIGN KEY ([maLoaiMay]) REFERENCES [dbo].[loaiMay] ([maLoaiMay]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[mayTinh] ADD CONSTRAINT [mayTinh_mainboard_FK] FOREIGN KEY ([maMainboard]) REFERENCES [dbo].[mainboard] ([maMainboard]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[mayTinh] ADD CONSTRAINT [mayTinh_manHinh_FK] FOREIGN KEY ([maMH]) REFERENCES [dbo].[manHinh] ([maMH]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[mayTinh] ADD CONSTRAINT [mayTinh_oCung_FK] FOREIGN KEY ([maOC]) REFERENCES [dbo].[oCung] ([maOC]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[mayTinh] ADD CONSTRAINT [mayTinh_ram_FK] FOREIGN KEY ([maRam]) REFERENCES [dbo].[ram] ([maRam]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table oCung
-- ----------------------------
ALTER TABLE [dbo].[oCung] ADD CONSTRAINT [oCung_hangSanXuat_FK] FOREIGN KEY ([maHSX]) REFERENCES [dbo].[hangSanXuat] ([maHSX]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ram
-- ----------------------------
ALTER TABLE [dbo].[ram] ADD CONSTRAINT [ram_hangSanXuat_FK] FOREIGN KEY ([maHSX]) REFERENCES [dbo].[hangSanXuat] ([maHSX]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

