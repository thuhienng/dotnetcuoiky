USE [webKS]
GO
/****** Object:  Table [dbo].[datphong]    Script Date: 12/27/2019 10:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datphong](
	[MaDatPhong] [int] IDENTITY(1,1) NOT NULL,
	[NgayDen] [nvarchar](50) NULL,
	[NgayDi] [nvarchar](50) NULL,
	[SoDem] [nvarchar](50) NULL,
	[LoaiPhong] [nvarchar](50) NULL,
	[SoNguoiLon] [nvarchar](50) NULL,
	[SoTreEm] [nvarchar](50) NULL,
	[GiuongPhu] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
 CONSTRAINT [PK_datphong] PRIMARY KEY CLUSTERED 
(
	[MaDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 12/27/2019 10:54:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_khachhang_1] PRIMARY KEY CLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaiphong]    Script Date: 12/27/2019 10:54:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiphong](
	[MaLoaiPhong] [nvarchar](50) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NULL,
	[DonGia] [nvarchar](50) NULL,
	[SoLuongGiuong] [nvarchar](50) NULL,
 CONSTRAINT [PK_loaiphong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/27/2019 10:54:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[idnv] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](100) NULL,
	[NamSinh] [nchar](10) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [nchar](10) NULL,
	[CMND] [nchar](10) NOT NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[idnv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/27/2019 10:54:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [nvarchar](10) NOT NULL,
	[MaLoaiPhong] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](100) NULL,
	[CMND] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[loaiphong] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoLuongGiuong]) VALUES (N'CR', N'Connecting Room', N'3.200.000', N'4')
INSERT [dbo].[loaiphong] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoLuongGiuong]) VALUES (N'SUT', N'Suite', N'2.400.000', N'2')
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([idnv], [TenNV], [NamSinh], [DiaChi], [SDT], [CMND], [ChucVu]) VALUES (1, N'Trần Nguyễn Thiên An', N'14/12/1996', N'Quy Nhơn, Nguyen Nhac', N'0358424864', N'215478963 ', N'Nhân viên lễ tân')
INSERT [dbo].[NhanVien] ([idnv], [TenNV], [NamSinh], [DiaChi], [SDT], [CMND], [ChucVu]) VALUES (2, N'Hà Võ Quỳnh Trâm', N'21/06/1999', N'58/7 Nguyễn Lữ, Quy Nhơn, Bình Định', N'0385264789', N'264478963 ', N'Tạp vụ')
INSERT [dbo].[NhanVien] ([idnv], [TenNV], [NamSinh], [DiaChi], [SDT], [CMND], [ChucVu]) VALUES (3, N'Sở Văn A', N'23/5/1994 ', N'Quy Nhơn', N'035963254 ', N'215478963 ', N'Bảo vệ')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [TinhTrang], [CMND]) VALUES (N'CR1', N'CR', N'Trống', N'')
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [TinhTrang], [CMND]) VALUES (N'CR2', N'CR', N'Trống', N'')
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [TinhTrang], [CMND]) VALUES (N'CR3', N'CR', N'Trống', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [TinhTrang], [CMND]) VALUES (N'CR4', N'CR', N'Trống', N' ')
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [TinhTrang], [CMND]) VALUES (N'CR5', N'CR', N'Trống', N' ')
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [TinhTrang], [CMND]) VALUES (N'SUT1', N'SUT', N'Trống', NULL)
