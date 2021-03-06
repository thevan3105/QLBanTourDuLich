USE [master]
GO
/****** Object:  Database [TourDL]    Script Date: 02/02/2021 11:35:02 CH ******/
CREATE DATABASE [TourDL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TourDL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TourDL.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TourDL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TourDL_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TourDL] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TourDL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TourDL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TourDL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TourDL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TourDL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TourDL] SET ARITHABORT OFF 
GO
ALTER DATABASE [TourDL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TourDL] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TourDL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TourDL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TourDL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TourDL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TourDL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TourDL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TourDL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TourDL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TourDL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TourDL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TourDL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TourDL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TourDL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TourDL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TourDL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TourDL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TourDL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TourDL] SET  MULTI_USER 
GO
ALTER DATABASE [TourDL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TourDL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TourDL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TourDL] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TourDL]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaTour] [nvarchar](50) NULL,
	[SLNguoiLon] [int] NULL,
	[SLTreEm] [int] NULL,
	[MaLT] [nvarchar](50) NULL,
	[MaKH] [nvarchar](50) NULL,
	[MaDDDL] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
	[GiaTien] [int] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID_Contact] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](50) NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID_Contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTTour]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTour](
	[MaCTTour] [nvarchar](50) NOT NULL,
	[MaTour] [nvarchar](50) NULL,
	[MaDDDL] [nvarchar](50) NULL,
	[MaKS] [nvarchar](50) NULL,
	[MoTaCT] [nvarchar](50) NULL,
	[GiaveNL] [int] NULL,
	[GiaVeTE] [int] NULL,
	[MaLPT] [nvarchar](50) NULL,
 CONSTRAINT [PK_CTTour] PRIMARY KEY CLUSTERED 
(
	[MaCTTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaDiemDL]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiemDL](
	[MaDDDL] [nvarchar](50) NOT NULL,
	[TenDDDL] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DiaDiemDL] PRIMARY KEY CLUSTERED 
(
	[MaDDDL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[QuocTich] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[Matkhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan](
	[MaKS] [nvarchar](50) NOT NULL,
	[TenKS] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[MaDDDL] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachSan] PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichTrinh]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichTrinh](
	[MaLT] [nvarchar](50) NOT NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[MaTour] [nvarchar](50) NULL,
	[MaPT] [nvarchar](50) NULL,
	[Slot] [int] NULL,
 CONSTRAINT [PK_LichTrinh] PRIMARY KEY CLUSTERED 
(
	[MaLT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiPhuongTien]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhuongTien](
	[MaLPT] [nvarchar](50) NOT NULL,
	[TenLPT] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiPhuongTien] PRIMARY KEY CLUSTERED 
(
	[MaLPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiTour]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTour](
	[MaLoaiTour] [nvarchar](50) NOT NULL,
	[TenLoaiTour] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiTour] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Media]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[ID_Media] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](50) NULL,
	[Main] [bit] NULL,
	[MaTour] [nvarchar](50) NULL,
 CONSTRAINT [PK_Media] PRIMARY KEY CLUSTERED 
(
	[ID_Media] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NghiepVu] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[PassWord] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhuongTien]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongTien](
	[MaPT] [nvarchar](50) NOT NULL,
	[TenPT] [nvarchar](50) NULL,
	[SoCho] [int] NULL,
	[MaLPT] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhuongTien] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slide]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID_Slide] [nvarchar](50) NOT NULL,
	[TenSlide] [nvarchar](50) NULL,
	[Img] [nvarchar](50) NULL,
	[Link] [nvarchar](500) NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID_Slide] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tour]    Script Date: 02/02/2021 11:35:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [nvarchar](50) NOT NULL,
	[TenTour] [nvarchar](50) NULL,
	[MaLoaiTour] [nvarchar](50) NULL,
	[GiaTien] [int] NULL,
	[Minuser] [int] NULL,
	[Maxuser] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (4, N't001', 1, 1, N'l001', N'kh003', N'dl002', N'nv003', 1, 1000000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (5, N't002', 2, 1, N'l002', N'kh003', N'dl002', NULL, 2, 5000000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (6, N't002', 2, 1, N'l003', N'kh003', N'dl002', NULL, 1, 5000000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (10, N't001', 2, 2, N'l001', N'kh003', N'dl001', NULL, 1, 1000000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (11, N't002', 2, 1, N'l003', N'kh003', N'dl002', NULL, 1, 5000000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (12, N't002', 3, 1, N'l003', N'kh003', N'dl002', NULL, 1, 1100000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (13, N't002', 3, 1, N'l002', N'kh003', N'dl002', NULL, 2, 1100000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (14, N't002', 3, 1, N'l002', N'kh003', N'dl002', NULL, 2, 6100000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (15, N't002', 2, 2, N'l002', N'kh003', N'dl002', NULL, 1, 6000000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (16, N't001', 0, 0, N'l001', N'kh003', N'dl001', NULL, 1, 1000000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (17, N't001', 9, 0, N'l001', N'kh006', N'dl001', NULL, 1, 3700000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (18, N't002', 10, 0, N'l002', N'kh006', N'dl002', NULL, 1, 8000000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (19, N't002', 10, 0, N'l003', N'kh006', N'dl002', NULL, 1, 8000000)
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien]) VALUES (21, N't001', 2, 2, N'l001', N'kh003', N'dl001', NULL, 0, 1800000)
SET IDENTITY_INSERT [dbo].[Booking] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID_Contact], [Name], [Email], [Subject], [Message]) VALUES (1, N'van', N'van', N'can', N'can')
INSERT [dbo].[Contact] ([ID_Contact], [Name], [Email], [Subject], [Message]) VALUES (2, N'van', N'vna', N'van', N'van')
SET IDENTITY_INSERT [dbo].[Contact] OFF
INSERT [dbo].[CTTour] ([MaCTTour], [MaTour], [MaDDDL], [MaKS], [MoTaCT], [GiaveNL], [GiaVeTE], [MaLPT]) VALUES (N'ctt001', N't001', N'dl001', N'ks001', N'Đi từ Hà Nội đến Thanh Hóa', 300000, 100000, N'o16')
INSERT [dbo].[CTTour] ([MaCTTour], [MaTour], [MaDDDL], [MaKS], [MoTaCT], [GiaveNL], [GiaVeTE], [MaLPT]) VALUES (N'ctt002', N't002', N'dl002', N'ks002', N'Đi từ Thanh Hóa Đến Nha Trang', 300000, 200000, N'o4')
INSERT [dbo].[CTTour] ([MaCTTour], [MaTour], [MaDDDL], [MaKS], [MoTaCT], [GiaveNL], [GiaVeTE], [MaLPT]) VALUES (N'CTT004', N'T006', N'DDDL005', N'KS005', N'Tour Đi từ Thanh Hóa vào Thành Phố Hồ Chí Minh', 300000, 200000, N'mb')
INSERT [dbo].[DiaDiemDL] ([MaDDDL], [TenDDDL], [DiaChi]) VALUES (N'DDDL005', N'Thành Phố HCM', N'Hồ Chí Minh')
INSERT [dbo].[DiaDiemDL] ([MaDDDL], [TenDDDL], [DiaChi]) VALUES (N'dl001', N'Biển Hải Tiến', N'Thanh Hóa')
INSERT [dbo].[DiaDiemDL] ([MaDDDL], [TenDDDL], [DiaChi]) VALUES (N'dl002', N'Biển Nha Trang', N'Nha Trang')
INSERT [dbo].[DiaDiemDL] ([MaDDDL], [TenDDDL], [DiaChi]) VALUES (N'dl003', N'Biển Phú Quốc', N'Phú Quốc')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [QuocTich], [CMND], [DiaChi], [SDT], [TaiKhoan], [Matkhau]) VALUES (N'kh001', N'Nguyễn Văn Mạnh', N'Nam', N'Việt Nam', N'03892323800', N'Bắc Giang', N'1234567', N'khmanh', N'0ee4c76f897ecaea3946d1b103fc7baf')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [QuocTich], [CMND], [DiaChi], [SDT], [TaiKhoan], [Matkhau]) VALUES (N'kh002', N'Lê Thị Thủy', N'Nữ', N'Việt Nam', N'03424924394', N'Thanh Hóa', N'34234323', N'khthuy', N'0c5551c1f0080de1579bc00d898db0cd')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [QuocTich], [CMND], [DiaChi], [SDT], [TaiKhoan], [Matkhau]) VALUES (N'kh003', N'Nguyễn Thế Vân', N'Ko', N'Việt Nam', N'0394166076', N'Bắc Ninh', N'96834432', N'vansiunhan', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [QuocTich], [CMND], [DiaChi], [SDT], [TaiKhoan], [Matkhau]) VALUES (N'kh006', N'Lê thị thủy', N'Ko', N'Việt nam', N'123456789', N'thanh hóa', N'01234567899', N'thuyvani', N'202CB962AC59075B964B07152D234B70')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [SDT], [Email], [MaDDDL]) VALUES (N'ks001', N'Hương Lan', 954839543, N'anhphuong@gmail.com', N'dl001')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [SDT], [Email], [MaDDDL]) VALUES (N'ks002', N'Khách Sạn Hải Tiến', 543234353, N'haitien@gmail.com', N'dl002')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [SDT], [Email], [MaDDDL]) VALUES (N'ks003', N'Khách Sạn Sao Biển', 378923432, N'saobien@gmail.com', N'dl003')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [SDT], [Email], [MaDDDL]) VALUES (N'KS005', N'Thủy Vani', 1321234234, N'thuy21@gmail.com', N'DDDL005')
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'l001', CAST(0x8D410B00 AS Date), CAST(0x90410B00 AS Date), N't001', N'pt001', 20)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'l002', CAST(0x4B410B00 AS Date), CAST(0x89410B00 AS Date), N't002', N'pt002', 25)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'l003', CAST(0xAB410B00 AS Date), CAST(0xE8410B00 AS Date), N't002', N'pt003', 10)
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'mb', N'Máy bay')
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'o16', N'Xe ô tô 16')
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'o4', N'Xe ô tô 4')
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'o40', N'Xe ô tô 40')
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'o60', N'Xe ô tô 60')
INSERT [dbo].[LoaiTour] ([MaLoaiTour], [TenLoaiTour]) VALUES (N'lt001', N'Miền Bắc')
INSERT [dbo].[LoaiTour] ([MaLoaiTour], [TenLoaiTour]) VALUES (N'lt002', N'Miền Trung')
INSERT [dbo].[LoaiTour] ([MaLoaiTour], [TenLoaiTour]) VALUES (N'lt003', N'Miền Bắc')
SET IDENTITY_INSERT [dbo].[Media] ON 

INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (3, N'listing5.jpg', 1, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (9, N'listing6.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (10, N'listing7.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (11, N'listing8.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (12, N'listing9.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (13, N'listing10.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (14, N'listing11.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (15, N'listing12.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (16, N'listing13.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (17, N'listing14.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (18, N'listing15.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (19, N'listing16.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (20, N'listing17.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (21, N'listing18.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (22, N'listing19.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (25, N'listing22.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (26, N'listing23.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (27, N'listing24.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (28, N'listing25.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (29, N'listing26.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (30, N'listing27.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (31, N'nhatrang3.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (32, N'nhatrang1.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (33, N'phuquoc3.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (34, N'phuquoc2.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (35, N'phuquoc1.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (36, N'listing_2.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (37, N'listing_3.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (38, N'listing_4.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (39, N'listing_5.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (40, N'listing_6.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (41, N'listing_7.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (42, N'listing_8.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (43, N'listing_9.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (44, N'listing19.jpg', 1, N't004')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (47, N't001_202101161348132580.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (48, N't002_202101161501064617.jpg', 1, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (49, N't001_202101171837510057.jpg', 1, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (58, N'T006_202101201538504643.jpg', 1, N'T006')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (59, N'T006_202101201539434084.jpg', 0, N'T006')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (60, N'T006_202101201539489696.jpg', 0, N'T006')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (61, N'T006_202101201539544898.jpg', 0, N'T006')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (62, N'T006_202101201540111096.jpg', 0, N'T006')
SET IDENTITY_INSERT [dbo].[Media] OFF
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'nv003', N'Lê Quỳnh Trang', N'SELL', CAST(0x5A1E0B00 AS Date), N'Nữ', N'Thanh Hóa', N'quynhtrang789@gmail.com', 23422232, N'e358efa489f58062f10dd7316b65649e')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'NV005', N'Nguyễn Văn Mạnh', N'Admin', CAST(0x3C840A00 AS Date), N'Nam', N'BG', N'admin', 123456789, N'21232f297a57a5a743894a0e4a801fc3')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'NV007', N'Lê Thủy', N'CSKH', CAST(0x3AF90A00 AS Date), N'Nữ', N'TH', N'thuy', 45678912, N'3cf2b6b121d1726bc2cdc88c39e0b119')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'NV009', N'Nguyễn Văn Huy', N'Manager', CAST(0x3AF90A00 AS Date), N'Nam', N'Bắc Giang', N'huy', 1321234234, N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'NV011', N't', N'SELL', CAST(0x3C840A00 AS Date), N'Nam', N'BG', N't', 123456789, N'e358efa489f58062f10dd7316b65649e')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'pt001', N'Xe Khách', 24, N'o16')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'pt002', N'Xe hơi', 7, N'o4')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'pt003', N'Xe Khách', 40, N'o40')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'pt004', N'Xe Khánh An', 60, N'o60')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'pt005', N'Linh tinh', 200, N'mb')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'pt006', N'Linh tinh tinh', 200, N'mb')
INSERT [dbo].[Slide] ([ID_Slide], [TenSlide], [Img], [Link]) VALUES (N's01', N'Hello world', N'home_slider.jpg', N'linh tinh')
INSERT [dbo].[Slide] ([ID_Slide], [TenSlide], [Img], [Link]) VALUES (N's02', N'The world', N'wallpapers.jpg', NULL)
INSERT [dbo].[Slide] ([ID_Slide], [TenSlide], [Img], [Link]) VALUES (N's03', N'Dream flying', N'wallpapers1.jpg', NULL)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [MaLoaiTour], [GiaTien], [Minuser], [Maxuser], [MoTa]) VALUES (N't001', N'Thanh Hóa', N'lt002', 1000000, 1, 20, N'Thanh Hoá được mệnh danh là vùng đất “địa linh nhân kiệt” nổi bật với lịch sử lâu đời. Thế nhưng có thể với nhiều bạn, nhắc đến các địa điểm du lịch Thanh Hoá thì chỉ có vài cái tên giới hạn được nhớ đến như Pù Luông hay biển Hải Tiến. Vậy nên, mùa hè này chúng mình cùng nhau du lịch phượt Thanh Hoá nhé? Vùng đất tuyệt vời này đang chờ đón bạn khám phá đấy! Vốn trước nay Thanh Hoá vẫn được xem là mảnh đất huyền thoại. Thế nhưng, bạn có thể “biến hoá” nơi đây trở thành một trang lưu giữ tuổi thanh xuân của mình, với một chuyến đi tuổi trẻ đầy thú vị vào hè này. Và đừng quên chia sẻ trang nhật trình vi vu xứ Thanh của bạn cùng E-Tour nhé!')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [MaLoaiTour], [GiaTien], [Minuser], [Maxuser], [MoTa]) VALUES (N't002', N'Nha Trang', N'lt002', 5000000, 1, 30, N'Đây là tour lý tưởng cho mùa hè Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [MaLoaiTour], [GiaTien], [Minuser], [Maxuser], [MoTa]) VALUES (N't003', N'Phú Quốc', N'lt003', 2000000, 1, 35, N'Tour rất phù hợp cho kỳ giáng sinh')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [MaLoaiTour], [GiaTien], [Minuser], [Maxuser], [MoTa]) VALUES (N't004', N'Côn Đảo', N'lt003', 1000000, 1, 20, N'chỗ này để ghi mô tả')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [MaLoaiTour], [GiaTien], [Minuser], [Maxuser], [MoTa]) VALUES (N'T006', N'TP Hồ Chí Minh', N'lt001', 500000, 20, 1, N'Là một thành phố không ngừng phát triển và nổi bật với nhịp sống sôi động, thành phố Hồ Chí Minh luôn có một sức hút đặc biệt của riêng mình. Nếu ai đó hỏi điều gì tạo nên nét đặc biệt khi du lịch thành phố Hồ Chí Minh thì chắc có lẽ là sự thú vị khi vi vu khắp mọi nẻo đường tấp nập tại Sài thành bằng xe máy. Ngoài ra du lịch thành phố Hồ Chí Minh tự túc còn hấp dẫn du khách với các món đặc sản như bánh mì, phở, hay những địa điểm du lịch nổi tiếng như Nhà thờ Đức Bà và Nhà hát lớn. Vô vàn bất ngờ đang chờ bạn đến du lịch thành phố Hồ Chí Minh để trải nghiệm đấy!')
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_KhachHang]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_LichTrinh] FOREIGN KEY([MaLT])
REFERENCES [dbo].[LichTrinh] ([MaLT])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_LichTrinh]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_NhanVien]
GO
ALTER TABLE [dbo].[CTTour]  WITH CHECK ADD  CONSTRAINT [FK_CTTour_DiaDiemDL] FOREIGN KEY([MaDDDL])
REFERENCES [dbo].[DiaDiemDL] ([MaDDDL])
GO
ALTER TABLE [dbo].[CTTour] CHECK CONSTRAINT [FK_CTTour_DiaDiemDL]
GO
ALTER TABLE [dbo].[CTTour]  WITH CHECK ADD  CONSTRAINT [FK_CTTour_LoaiPhuongTien] FOREIGN KEY([MaLPT])
REFERENCES [dbo].[LoaiPhuongTien] ([MaLPT])
GO
ALTER TABLE [dbo].[CTTour] CHECK CONSTRAINT [FK_CTTour_LoaiPhuongTien]
GO
ALTER TABLE [dbo].[CTTour]  WITH CHECK ADD  CONSTRAINT [FK_CTTour_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[CTTour] CHECK CONSTRAINT [FK_CTTour_Tour]
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_DiaDiemDL] FOREIGN KEY([MaDDDL])
REFERENCES [dbo].[DiaDiemDL] ([MaDDDL])
GO
ALTER TABLE [dbo].[KhachSan] CHECK CONSTRAINT [FK_KhachSan_DiaDiemDL]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_PhuongTien] FOREIGN KEY([MaPT])
REFERENCES [dbo].[PhuongTien] ([MaPT])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_PhuongTien]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_Tour]
GO
ALTER TABLE [dbo].[Media]  WITH CHECK ADD  CONSTRAINT [FK_Media_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FK_Media_Tour]
GO
ALTER TABLE [dbo].[PhuongTien]  WITH CHECK ADD  CONSTRAINT [FK_PhuongTien_LoaiPhuongTien] FOREIGN KEY([MaLPT])
REFERENCES [dbo].[LoaiPhuongTien] ([MaLPT])
GO
ALTER TABLE [dbo].[PhuongTien] CHECK CONSTRAINT [FK_PhuongTien_LoaiPhuongTien]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_LoaiTour] FOREIGN KEY([MaLoaiTour])
REFERENCES [dbo].[LoaiTour] ([MaLoaiTour])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_LoaiTour]
GO
USE [master]
GO
ALTER DATABASE [TourDL] SET  READ_WRITE 
GO
