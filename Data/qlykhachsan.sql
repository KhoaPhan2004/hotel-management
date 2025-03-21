create database qlykhachsan
go
USE [qlykhachsan]
GO
/****** Object:  Database [qlykhachsan]    Script Date: 5/13/2024 3:58:24 PM ******/
CREATE DATABASE [qlykhachsan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlykhachsan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\qlykhachsan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlykhachsan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\qlykhachsan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [qlykhachsan] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlykhachsan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlykhachsan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlykhachsan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlykhachsan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlykhachsan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlykhachsan] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlykhachsan] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [qlykhachsan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlykhachsan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlykhachsan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlykhachsan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlykhachsan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlykhachsan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlykhachsan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlykhachsan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlykhachsan] SET  ENABLE_BROKER 
GO
ALTER DATABASE [qlykhachsan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlykhachsan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlykhachsan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlykhachsan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlykhachsan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlykhachsan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlykhachsan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlykhachsan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlykhachsan] SET  MULTI_USER 
GO
ALTER DATABASE [qlykhachsan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlykhachsan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlykhachsan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlykhachsan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qlykhachsan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlykhachsan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [qlykhachsan] SET QUERY_STORE = ON
GO
ALTER DATABASE [qlykhachsan] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [qlykhachsan]
GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[SoGioLamViec] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[Thang] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [nvarchar](5) NOT NULL,
	[TenDV] [nvarchar](20) NULL,
	[DonGia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongCoBan]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongCoBan](
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[Luong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [varchar](255) NULL,
	[SoDienThoai] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaTK] [nvarchar](30) NOT NULL,
	[TenTK] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[QLKH] [bit] NULL,
	[QLPhong] [bit] NULL,
	[QLDV] [bit] NULL,
	[QLHD] [bit] NULL,
	[QLCC] [bit] NULL,
	[QLLCB] [bit] NULL,
	[QLNV] [bit] NULL,
	[DatPhong] [bit] NULL,
	[ThanhToan] [bit] NULL,
	[ThongKe] [bit] NULL,
	[InDS] [bit] NULL,
	[QLPQ] [bit] NULL,
	[MaNhanVien] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QlyDatPhong]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QlyDatPhong](
	[MaDatPhong] [nvarchar](5) NOT NULL,
	[MaPhong] [nvarchar](5) NOT NULL,
	[MaKH] [nvarchar](6) NOT NULL,
	[NgayDen] [date] NULL,
	[NgayDi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QlyHoaDon]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QlyHoaDon](
	[MaHoaDon] [nvarchar](5) NOT NULL,
	[MaDatPhong] [nvarchar](5) NOT NULL,
	[GiamGia] [int] NOT NULL,
	[LoaiThanhToan] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QlyKH]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QlyKH](
	[MaKH] [nvarchar](6) NOT NULL,
	[TenKH] [nvarchar](20) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[NgaySinh] [date] NULL,
	[CMND] [nvarchar](12) NOT NULL,
	[DiaChi] [nvarchar](20) NOT NULL,
	[SDT] [nvarchar](20) NOT NULL,
	[GhiChu] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QlyPhong]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QlyPhong](
	[MaPhong] [nvarchar](5) NOT NULL,
	[TenPhong] [nvarchar](3) NOT NULL,
	[LoaiPhong] [nvarchar](20) NOT NULL,
	[KieuPhong] [nvarchar](20) NOT NULL,
	[TinhTrang] [nvarchar](20) NOT NULL,
	[GiaPhong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuDungDichVu]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuDungDichVu](
	[MaDV] [nvarchar](5) NOT NULL,
	[MaDatPhong] [nvarchar](5) NOT NULL,
	[MaKH] [nvarchar](6) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC,
	[MaDatPhong] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongKe]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongKe](
	[MaHoaDon] [nvarchar](5) NOT NULL,
	[NgayDen] [date] NULL,
	[NgayDi] [date] NULL,
	[TongThanhToan] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChamCong] ([MaNhanVien], [Thang], [Nam], [SoGioLamViec]) VALUES (N'NV001', 5, 2024, 200)
INSERT [dbo].[ChamCong] ([MaNhanVien], [Thang], [Nam], [SoGioLamViec]) VALUES (N'NV002', 5, 2024, 160)
INSERT [dbo].[ChamCong] ([MaNhanVien], [Thang], [Nam], [SoGioLamViec]) VALUES (N'NV003', 5, 2024, 100)
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia]) VALUES (N'DV001', N'Spa', 200000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia]) VALUES (N'DV002', N'Ăn khuya', 80000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia]) VALUES (N'DV003', N'Bia', 20000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia]) VALUES (N'DV004', N'Nước uống', 15000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia]) VALUES (N'DV005', N'Bánh hộp', 40000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia]) VALUES (N'DV006', N'Cafe', 20000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia]) VALUES (N'DV007', N'đưa đón sân bay', 300000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia]) VALUES (N'DV008', N'tham quan du lịch', 600000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia]) VALUES (N'DV009', N'hồ bơi', 150000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia]) VALUES (N'DV010', N'phòng gym', 200000)
GO
INSERT [dbo].[LuongCoBan] ([MaNhanVien], [Luong]) VALUES (N'NV001', 200)
INSERT [dbo].[LuongCoBan] ([MaNhanVien], [Luong]) VALUES (N'NV002', 200)
INSERT [dbo].[LuongCoBan] ([MaNhanVien], [Luong]) VALUES (N'NV003', 111)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [DiaChi], [SoDienThoai]) VALUES (N'NV001', N'Phan Đăng Khoa', CAST(N'2004-07-21' AS Date), N'Phú Yên', N'0123456789')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [DiaChi], [SoDienThoai]) VALUES (N'NV002', N'Ðinh Hồng Thái', CAST(N'2004-07-21' AS Date), N'Sài Gòn', N'0123456789')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [DiaChi], [SoDienThoai]) VALUES (N'NV003', N'Nguyễn Văn A', CAST(N'2004-07-21' AS Date), N'Hà N?i', N'0123456789')
GO
INSERT [dbo].[PhanQuyen] ([MaTK], [TenTK], [Password], [QLKH], [QLPhong], [QLDV], [QLHD], [QLCC], [QLLCB], [QLNV], [DatPhong], [ThanhToan], [ThongKe], [InDS], [QLPQ], [MaNhanVien]) VALUES (N'TK01', N'admin', N'123456', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, N'NV001')
INSERT [dbo].[PhanQuyen] ([MaTK], [TenTK], [Password], [QLKH], [QLPhong], [QLDV], [QLHD], [QLCC], [QLLCB], [QLNV], [DatPhong], [ThanhToan], [ThongKe], [InDS], [QLPQ], [MaNhanVien]) VALUES (N'TK02', N'quản lý', N'123456', 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, N'NV002')
GO
INSERT [dbo].[QlyDatPhong] ([MaDatPhong], [MaPhong], [MaKH], [NgayDen], [NgayDi]) VALUES (N'DP001', N'P0001', N'KH003', CAST(N'2023-02-11' AS Date), CAST(N'2023-07-11' AS Date))
INSERT [dbo].[QlyDatPhong] ([MaDatPhong], [MaPhong], [MaKH], [NgayDen], [NgayDi]) VALUES (N'DP002', N'P0002', N'KH002', CAST(N'2023-02-11' AS Date), CAST(N'2023-07-11' AS Date))
INSERT [dbo].[QlyDatPhong] ([MaDatPhong], [MaPhong], [MaKH], [NgayDen], [NgayDi]) VALUES (N'DP003', N'P0003', N'KH001', CAST(N'2023-04-10' AS Date), CAST(N'2023-07-10' AS Date))
INSERT [dbo].[QlyDatPhong] ([MaDatPhong], [MaPhong], [MaKH], [NgayDen], [NgayDi]) VALUES (N'DP004', N'P0001', N'KH007', CAST(N'2024-05-10' AS Date), CAST(N'2024-05-10' AS Date))
GO
INSERT [dbo].[QlyHoaDon] ([MaHoaDon], [MaDatPhong], [GiamGia], [LoaiThanhToan]) VALUES (N'HD001', N'DP001', 0, N'Chuyển Khoản')
INSERT [dbo].[QlyHoaDon] ([MaHoaDon], [MaDatPhong], [GiamGia], [LoaiThanhToan]) VALUES (N'HD002', N'DP002', 0, N'Tiền Mặt')
GO
INSERT [dbo].[QlyKH] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [CMND], [DiaChi], [SDT], [GhiChu]) VALUES (N'KH001', N'Đinh Hòng Thái', N'Nam', CAST(N'2004-01-05' AS Date), N'077720412344', N'Bà Rịa Vũng Tàu', N'0123456789', N'Không')
INSERT [dbo].[QlyKH] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [CMND], [DiaChi], [SDT], [GhiChu]) VALUES (N'KH002', N'Eitaaaaa', N'Nam', CAST(N'2004-10-03' AS Date), N'0937656128', N'Bến Tre', N'0123456789', N'Không')
INSERT [dbo].[QlyKH] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [CMND], [DiaChi], [SDT], [GhiChu]) VALUES (N'KH003', N'Lê Thanh Nhi', N'Nữ', CAST(N'2005-10-02' AS Date), N'077720415978', N'Bà Rịa Vũng Tàu', N'0907030367', N'Không')
INSERT [dbo].[QlyKH] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [CMND], [DiaChi], [SDT], [GhiChu]) VALUES (N'KH004', N'Nguyễn Thị Thảo', N'Nữ', CAST(N'2004-01-07' AS Date), N'077720416791', N'Bà Rịa Vũng Tàu', N'0789257994', N'Không')
INSERT [dbo].[QlyKH] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [CMND], [DiaChi], [SDT], [GhiChu]) VALUES (N'KH005', N'Lê Thành Nam', N'Nam', CAST(N'2004-06-06' AS Date), N'077720214568', N'TP HCM', N'0791236977', N'Không')
INSERT [dbo].[QlyKH] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [CMND], [DiaChi], [SDT], [GhiChu]) VALUES (N'KH006', N'Nguyễn Minh Hiệp', N'Nam', CAST(N'2004-10-07' AS Date), N'077720312312', N'Long An', N'0903152124', N'Không')
INSERT [dbo].[QlyKH] ([MaKH], [TenKH], [GioiTinh], [NgaySinh], [CMND], [DiaChi], [SDT], [GhiChu]) VALUES (N'KH007', N'Lê Thị Bé Ba', N'Nữ', CAST(N'2003-03-07' AS Date), N'077720412889', N'Cà Mau', N'0999456211', N'Không')
GO
INSERT [dbo].[QlyPhong] ([MaPhong], [TenPhong], [LoaiPhong], [KieuPhong], [TinhTrang], [GiaPhong]) VALUES (N'P0001', N'101', N'Trung bình', N'Giường đôi', N'Trống', 10000)
INSERT [dbo].[QlyPhong] ([MaPhong], [TenPhong], [LoaiPhong], [KieuPhong], [TinhTrang], [GiaPhong]) VALUES (N'P0002', N'102', N'Tiêu chuẩn', N'Giường đơn', N'Trống', 123456)
INSERT [dbo].[QlyPhong] ([MaPhong], [TenPhong], [LoaiPhong], [KieuPhong], [TinhTrang], [GiaPhong]) VALUES (N'P0003', N'103', N'Thương gia', N'Giường đơn', N'Trống', 111111)
INSERT [dbo].[QlyPhong] ([MaPhong], [TenPhong], [LoaiPhong], [KieuPhong], [TinhTrang], [GiaPhong]) VALUES (N'P0004', N'104', N'Trung bình', N'Giường đôi', N'Trống', 20000000)
INSERT [dbo].[QlyPhong] ([MaPhong], [TenPhong], [LoaiPhong], [KieuPhong], [TinhTrang], [GiaPhong]) VALUES (N'P0005', N'105', N'Tiêu chuẩn', N'Giường đôi', N'Trống', 1500000)
INSERT [dbo].[QlyPhong] ([MaPhong], [TenPhong], [LoaiPhong], [KieuPhong], [TinhTrang], [GiaPhong]) VALUES (N'P0006', N'106', N'Thương gia', N'Giường đôi', N'Trống', 10000000)
INSERT [dbo].[QlyPhong] ([MaPhong], [TenPhong], [LoaiPhong], [KieuPhong], [TinhTrang], [GiaPhong]) VALUES (N'P0007', N'107', N'Trung bình', N'Giường đơn', N'Trống', 20000000)
INSERT [dbo].[QlyPhong] ([MaPhong], [TenPhong], [LoaiPhong], [KieuPhong], [TinhTrang], [GiaPhong]) VALUES (N'P0008', N'108', N'Trung bình', N'Giường đôi', N'Trống', 550000)
GO
INSERT [dbo].[SuDungDichVu] ([MaDV], [MaDatPhong], [MaKH], [SoLuong]) VALUES (N'DV001', N'DP001', N'KH003', 1)
INSERT [dbo].[SuDungDichVu] ([MaDV], [MaDatPhong], [MaKH], [SoLuong]) VALUES (N'DV007', N'DP002', N'KH002', 3)
INSERT [dbo].[SuDungDichVu] ([MaDV], [MaDatPhong], [MaKH], [SoLuong]) VALUES (N'DV008', N'DP002', N'KH002', 1)
GO
INSERT [dbo].[ThongKe] ([MaHoaDon], [NgayDen], [NgayDi], [TongThanhToan]) VALUES (N'HD001', CAST(N'2023-02-11' AS Date), CAST(N'2023-07-11' AS Date), 210000)
INSERT [dbo].[ThongKe] ([MaHoaDon], [NgayDen], [NgayDi], [TongThanhToan]) VALUES (N'HD002', CAST(N'2023-02-11' AS Date), CAST(N'2023-07-11' AS Date), 1623456)
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[LuongCoBan]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[QlyDatPhong]  WITH CHECK ADD FOREIGN KEY([MaPhong])
REFERENCES [dbo].[QlyPhong] ([MaPhong])
GO
ALTER TABLE [dbo].[QlyDatPhong]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[QlyKH] ([MaKH])
GO
ALTER TABLE [dbo].[QlyHoaDon]  WITH CHECK ADD FOREIGN KEY([MaDatPhong])
REFERENCES [dbo].[QlyDatPhong] ([MaDatPhong])
GO
ALTER TABLE [dbo].[SuDungDichVu]  WITH CHECK ADD FOREIGN KEY([MaDatPhong])
REFERENCES [dbo].[QlyDatPhong] ([MaDatPhong])
GO
ALTER TABLE [dbo].[SuDungDichVu]  WITH CHECK ADD FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[SuDungDichVu]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[QlyKH] ([MaKH])
GO
ALTER TABLE [dbo].[ThongKe]  WITH CHECK ADD FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[QlyHoaDon] ([MaHoaDon])
GO
/****** Object:  StoredProcedure [dbo].[baocao_MaDatPhong]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[baocao_MaDatPhong]
@MaDatPhong nvarchar(5)
as
if(@MaDatPhong='')
select dp.MaDatPhong,dp.MaPhong,kh.TenKH,dp.NgayDen,dp.NgayDi from dbo.QlyDatPhong dp, dbo.QlyKH kh where dp.MaKH = kh.MaKH
else
select dp.MaDatPhong,dp.MaPhong,kh.TenKH,dp.NgayDen,dp.NgayDi from dbo.QlyDatPhong dp, dbo.QlyKH kh where dp.MaDatPhong = @MaDatPhong and dp.MaKH = kh.MaKH
GO
/****** Object:  StoredProcedure [dbo].[baocao_MaDichVu]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[baocao_MaDichVu]
@MaDV nvarchar(5)
as
if(@MaDV='')
select * from dbo.DichVu
else
select * from dbo.DichVu where MaDV = @MaDV
GO
/****** Object:  StoredProcedure [dbo].[baocao_MaHoaDon]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[baocao_MaHoaDon]
@MaHoaDon nvarchar(5)
AS
IF (@MaHoaDon = '')
    SELECT dh.MaHoaDon, dh.MaDatPhong, kh.TenKH, dh.GiamGia, dh.LoaiThanhToan,
	       CASE WHEN dh.MaHoaDon = tk.MaHoaDon THEN tk.TongThanhToan ELSE 0 END AS TongThanhToan,
           CASE WHEN dh.MaHoaDon = tk.MaHoaDon THEN 'Đã thanh toán' ELSE 'Chưa thanh toán' END AS TinhTrangThanhToan
    FROM dbo.QlyHoaDon dh
    INNER JOIN dbo.QlyDatPhong dp ON dh.MaDatPhong = dp.MaDatPhong
    INNER JOIN dbo.QlyKH kh ON dp.MaKH = kh.MaKH
    LEFT JOIN dbo.ThongKe tk ON dh.MaHoaDon = tk.MaHoaDon
ELSE
    SELECT dh.MaHoaDon, dh.MaDatPhong, kh.TenKH, dh.GiamGia, dh.LoaiThanhToan,
	       CASE WHEN dh.MaHoaDon = tk.MaHoaDon THEN tk.TongThanhToan ELSE 0 END AS TongThanhToan,
           CASE WHEN dh.MaHoaDon = tk.MaHoaDon THEN 'Đã thanh toán' ELSE 'Chưa thanh toán' END AS TinhTrangThanhToan
    FROM dbo.QlyHoaDon dh
    INNER JOIN dbo.QlyDatPhong dp ON dh.MaDatPhong = dp.MaDatPhong
    INNER JOIN dbo.QlyKH kh ON dp.MaKH = kh.MaKH
    LEFT JOIN dbo.ThongKe tk ON dh.MaHoaDon = tk.MaHoaDon
    WHERE dh.MaHoaDon = @MaHoaDon
GO
/****** Object:  StoredProcedure [dbo].[baocao_MaKhachHang]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[baocao_MaKhachHang]
@MaKH nvarchar(5)
as
if(@MaKH='')
select * from dbo.QlyKH
else
select * from dbo.QlyKH where MaKH = @MaKH
GO
/****** Object:  StoredProcedure [dbo].[baocao_MaPhong]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[baocao_MaPhong]
@MaPhong nvarchar(5)
as
if(@MaPhong='')
select * from dbo.QlyPhong
else
select * from dbo.QlyPhong where MaPhong = @MaPhong
GO
/****** Object:  StoredProcedure [dbo].[baocao_TinhLuong]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[baocao_TinhLuong]
@Thang int,@Nam int
as
select NhanVien.MaNhanVien,NhanVien.TenNhanVien,ChamCong.Thang,ChamCong.Nam,LuongCoBan.Luong*ChamCong.SoGioLamViec AS 'Luong' from NhanVien Join LuongCoBan on NhanVien.MaNhanVien = LuongCoBan.MaNhanVien
join ChamCong on NhanVien.MaNhanVien = ChamCong.MaNhanVien
where ChamCong.Thang = @Thang and ChamCong.Nam = @Nam
GO
/****** Object:  StoredProcedure [dbo].[inhoadon]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inhoadon]
		@MaHoaDon NVARCHAR(5)
	AS
	BEGIN
	WITH TongThanhTien AS (
		SELECT
			DV.TenDV AS N'Tên dịch vụ',
			SDDV.SoLuong AS N'Số lượng',
			DV.DonGia AS N'Đơn giá',
			KH.TenKH AS N'Tên khách hàng',
			ISNull((DV.DonGia * SDDV.SoLuong),0) AS N'Thành tiền',
			DP.NgayDen AS N'Ngày đến',
			DP.NgayDi AS N'Ngày đi',
			P.TenPhong AS N'Tên phòng',
			P.GiaPhong,
			HD.GiamGia,
			(P.GiaPhong - HD.GiamGia) AS N'Tổng',
			HD.LoaiThanhToan AS N'Loại thanh toán'
		FROM
			QlyHoaDon HD
			JOIN QlyDatPhong DP ON HD.MaDatPhong = DP.MaDatPhong
			JOIN QlyPhong P ON DP.MaPhong = P.MaPhong
			jOIN QlyKH KH on KH.MaKH = DP.MaKH
			LEFT JOIN SuDungDichVu SDDV ON DP.MaDatPhong = SDDV.MaDatPhong
			LEFT JOIN DichVu DV ON SDDV.MaDV = DV.MaDV
		WHERE
			HD.MaHoaDon = @MaHoaDon
	)
   -- Thêm dữ liệu vào bảng ThongKe
	---them du lieu vao bang tam
	SELECT
		*,
		(SELECT SUM([Thành tiền]) FROM TongThanhTien) AS N'Tổng thành tiền',
		(SELECT SUM([Thành tiền]) + MAX([Tổng]) FROM TongThanhTien) AS N'Tổng thanh toán'
	FROM
		TongThanhTien;
	END;
GO
/****** Object:  StoredProcedure [dbo].[KiemTraHDThanhToan]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	---store kiem tra những hóa đơn đã thanh toán
create proc [dbo].[KiemTraHDThanhToan]
as
select MaHoaDon
from ThongKe
GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThu]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKeDoanhThu]
    @TuNgay date,
    @DenNgay date
AS
BEGIN
    WITH Temp AS (
        SELECT
            HD.MaHoaDon,
            KH.TenKH AS [Tên khách hàng],
            DP.NgayDen AS [Ngày đến],
            DP.NgayDi AS [Ngày đi],
            P.TenPhong AS [Tên phòng],
            P.GiaPhong,
            HD.GiamGia,
            (P.GiaPhong - HD.GiamGia) AS [Tổng],
            HD.LoaiThanhToan AS [Loại thanh toán],
            SUM(ISNULL((DV.DonGia * SDDV.SoLuong), 0)) AS [Tổng tiền dịch vụ],
            TT.TongThanhToan AS [Tiền phòng]
        FROM
            QlyHoaDon HD
            JOIN QlyDatPhong DP ON HD.MaDatPhong = DP.MaDatPhong
            JOIN QlyPhong P ON DP.MaPhong = P.MaPhong
            JOIN QlyKH KH ON KH.MaKH = DP.MaKH
            JOIN ThongKe TT ON HD.MaHoaDon = TT.MaHoaDon
            LEFT JOIN SuDungDichVu SDDV ON DP.MaDatPhong = SDDV.MaDatPhong
            LEFT JOIN DichVu DV ON SDDV.MaDV = DV.MaDV
        WHERE
              (DP.NgayDen >= @TuNgay AND DP.NgayDen <= @DenNgay)
            AND (DP.NgayDi >= @TuNgay AND DP.NgayDi <= @DenNgay)
        GROUP BY
            HD.MaHoaDon,
            KH.TenKH,
            DP.NgayDen,
            DP.NgayDi,
            P.TenPhong,
            P.GiaPhong,
            HD.GiamGia,
            HD.LoaiThanhToan,
            TT.TongThanhToan
    )
    SELECT *,
        (SELECT SUM([Tiền phòng]) FROM Temp) AS [Tổng doanh thu]
    FROM Temp;
END;

GO
/****** Object:  StoredProcedure [dbo].[ThongKeThanhToan]    Script Date: 5/13/2024 3:58:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	
	---tạo store in thanh toán cho thống kê
CREATE proc [dbo].[ThongKeThanhToan]
    @MaHoaDon NVARCHAR(5)
AS
BEGIN
    WITH TongThanhTien AS (
        SELECT
            DV.TenDV AS [Tên dịch vụ],
            SDDV.SoLuong AS [Số lượng],
            DV.DonGia AS [Đơn giá],
            ISNULL((DV.DonGia * SDDV.SoLuong), 0) AS [Thành tiền],
            DP.NgayDen AS [Ngày đến],
            DP.NgayDi AS [Ngày đi],
            P.TenPhong AS [Tên phòng],
            P.GiaPhong,
            HD.GiamGia,
            (P.GiaPhong - HD.GiamGia) AS [Tổng],
            HD.LoaiThanhToan AS [Loại thanh toán]
        FROM
            QlyHoaDon HD
            JOIN QlyDatPhong DP ON HD.MaDatPhong = DP.MaDatPhong
            JOIN QlyPhong P ON DP.MaPhong = P.MaPhong
            LEFT JOIN SuDungDichVu SDDV ON DP.MaDatPhong = SDDV.MaDatPhong
            LEFT JOIN DichVu DV ON SDDV.MaDV = DV.MaDV
        WHERE
            HD.MaHoaDon = @MaHoaDon
    )
    -- Thêm dữ liệu vào bảng ThongKe
    INSERT INTO ThongKe (MaHoaDon, NgayDen, NgayDi, TongThanhToan)
    SELECT
        @MaHoaDon,
        [Ngày đến],
        [Ngày đi],
        SUM([Thành tiền]) + MAX([Tổng])
    FROM
        TongThanhTien
    GROUP BY
        [Ngày đến], [Ngày đi];
END;
GO
USE [master]
GO
ALTER DATABASE [qlykhachsan] SET  READ_WRITE 
GO
