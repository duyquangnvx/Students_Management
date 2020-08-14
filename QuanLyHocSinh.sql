USE [master]
GO
/****** Object:  Database [StudentManagement]    Script Date: 8/15/2020 1:56:32 AM ******/
CREATE DATABASE [StudentManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentManagement', FILENAME = N'C:\Users\Duy Quang\StudentManagement.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StudentManagement_log', FILENAME = N'C:\Users\Duy Quang\StudentManagement_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StudentManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StudentManagement] SET  MULTI_USER 
GO
ALTER DATABASE [StudentManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [StudentManagement] SET DELAYED_DURABILITY = DISABLED 
GO
USE [StudentManagement]
GO
/****** Object:  Table [dbo].[BangDiem]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDiem](
	[IdMonHoc] [int] NOT NULL,
	[IdHocSinh] [int] NOT NULL,
	[IdHocKy] [int] NOT NULL,
	[IdNamHoc] [int] NOT NULL,
	[IdHeSo] [int] NOT NULL,
	[Diem] [float] NULL,
 CONSTRAINT [PK_BangDiem_1] PRIMARY KEY CLUSTERED 
(
	[IdMonHoc] ASC,
	[IdHocSinh] ASC,
	[IdHocKy] ASC,
	[IdNamHoc] ASC,
	[IdHeSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](100) NOT NULL,
	[Mota] [nvarchar](200) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeSo]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeSo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenHeSo] [nvarchar](100) NULL,
	[HeSo] [float] NULL,
 CONSTRAINT [PK_HeSo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocKy]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocKy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenHocKy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh_LopHoc]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh_LopHoc](
	[IdHocSinh] [int] NOT NULL,
	[IdLopHoc] [int] NOT NULL,
 CONSTRAINT [PK_HocSinh_LopHoc] PRIMARY KEY CLUSTERED 
(
	[IdHocSinh] ASC,
	[IdLopHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoi]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[Id] [int] NOT NULL,
	[TenLop] [nvarchar](100) NOT NULL,
	[IdGiaoVien] [int] IDENTITY(1,1) NOT NULL,
	[IdKhoi] [int] NULL,
	[IdNamHoc] [int] NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenMonHoc] [nvarchar](100) NOT NULL,
	[DiemChuan] [float] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NamHoc]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NamHoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
 CONSTRAINT [PK_SchoolYear] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[IdGiaoVien] [int] NOT NULL,
	[IdLopHoc] [int] NOT NULL,
	[IdMonHoc] [int] NOT NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[IdGiaoVien] ASC,
	[IdLopHoc] ASC,
	[IdMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/15/2020 1:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[IdChucVu] [int] NOT NULL,
	[IsDelete] [bit] NULL,
	[CreateOn] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Mota]) VALUES (1, N'Ban Giám Hiệu', N'Quản trị viên (Hiệu trưởng, Ban Giám Hiệu)')
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Mota]) VALUES (2, N'Giáo Vụ', N'Giáo Vụ')
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Mota]) VALUES (3, N'Giáo Viên', N'Giáo Viên')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
SET IDENTITY_INSERT [dbo].[HeSo] ON 

INSERT [dbo].[HeSo] ([Id], [TenHeSo], [HeSo]) VALUES (1, N'Trả bài', 1)
INSERT [dbo].[HeSo] ([Id], [TenHeSo], [HeSo]) VALUES (2, N'15 phút', 1)
INSERT [dbo].[HeSo] ([Id], [TenHeSo], [HeSo]) VALUES (3, N'Giữa kỳ', 1)
INSERT [dbo].[HeSo] ([Id], [TenHeSo], [HeSo]) VALUES (4, N'Cuối kỳ', 1)
SET IDENTITY_INSERT [dbo].[HeSo] OFF
SET IDENTITY_INSERT [dbo].[HocKy] ON 

INSERT [dbo].[HocKy] ([Id], [TenHocKy]) VALUES (1, N'Học kỳ 1')
INSERT [dbo].[HocKy] ([Id], [TenHocKy]) VALUES (2, N'Học kỳ 2')
SET IDENTITY_INSERT [dbo].[HocKy] OFF
SET IDENTITY_INSERT [dbo].[Khoi] ON 

INSERT [dbo].[Khoi] ([Id], [TenKhoi]) VALUES (1, N'Khối 10')
INSERT [dbo].[Khoi] ([Id], [TenKhoi]) VALUES (2, N'Khối 11')
INSERT [dbo].[Khoi] ([Id], [TenKhoi]) VALUES (3, N'Khối 12')
SET IDENTITY_INSERT [dbo].[Khoi] OFF
SET IDENTITY_INSERT [dbo].[NamHoc] ON 

INSERT [dbo].[NamHoc] ([Id], [NgayBatDau], [NgayKetThuc]) VALUES (1, CAST(N'2019-01-09' AS Date), CAST(N'2020-01-05' AS Date))
INSERT [dbo].[NamHoc] ([Id], [NgayBatDau], [NgayKetThuc]) VALUES (2, CAST(N'2020-01-09' AS Date), CAST(N'2021-01-05' AS Date))
SET IDENTITY_INSERT [dbo].[NamHoc] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Username], [Password], [HoTen], [Email], [DiaChi], [GioiTinh], [IdChucVu], [IsDelete], [CreateOn]) VALUES (12, N'admin', N'admin', N'Admin', N'admin@gmail.com', N'Không rõ', 0, 1, 0, CAST(N'2020-08-15T01:53:32.260' AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[HocSinh] ADD  CONSTRAINT [DF_Student_Sex]  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF_Subject_BenchMark]  DEFAULT ((5.0)) FOR [DiemChuan]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Sex]  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_HeSo] FOREIGN KEY([IdHeSo])
REFERENCES [dbo].[HeSo] ([Id])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_HeSo]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_HocKy] FOREIGN KEY([IdHocKy])
REFERENCES [dbo].[HocKy] ([Id])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_HocKy]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_HocSinh] FOREIGN KEY([IdHocSinh])
REFERENCES [dbo].[HocSinh] ([Id])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_HocSinh]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_MonHoc] FOREIGN KEY([IdMonHoc])
REFERENCES [dbo].[MonHoc] ([Id])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_MonHoc]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_NamHoc] FOREIGN KEY([IdNamHoc])
REFERENCES [dbo].[NamHoc] ([Id])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_NamHoc]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_User] FOREIGN KEY([Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_User]
GO
ALTER TABLE [dbo].[HocSinh_LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_LopHoc_HocSinh] FOREIGN KEY([IdHocSinh])
REFERENCES [dbo].[HocSinh] ([Id])
GO
ALTER TABLE [dbo].[HocSinh_LopHoc] CHECK CONSTRAINT [FK_HocSinh_LopHoc_HocSinh]
GO
ALTER TABLE [dbo].[HocSinh_LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_LopHoc_LopHoc] FOREIGN KEY([IdLopHoc])
REFERENCES [dbo].[LopHoc] ([Id])
GO
ALTER TABLE [dbo].[HocSinh_LopHoc] CHECK CONSTRAINT [FK_HocSinh_LopHoc_LopHoc]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_GiaoVien] FOREIGN KEY([IdGiaoVien])
REFERENCES [dbo].[GiaoVien] ([Id])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_GiaoVien]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_Khoi] FOREIGN KEY([IdKhoi])
REFERENCES [dbo].[Khoi] ([Id])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_Khoi]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_NamHoc] FOREIGN KEY([IdNamHoc])
REFERENCES [dbo].[NamHoc] ([Id])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_NamHoc]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_GiaoVien] FOREIGN KEY([IdGiaoVien])
REFERENCES [dbo].[GiaoVien] ([Id])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_GiaoVien]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_LopHoc] FOREIGN KEY([IdLopHoc])
REFERENCES [dbo].[LopHoc] ([Id])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_LopHoc]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_MonHoc] FOREIGN KEY([IdMonHoc])
REFERENCES [dbo].[MonHoc] ([Id])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_MonHoc]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_ChucVu] FOREIGN KEY([IdChucVu])
REFERENCES [dbo].[ChucVu] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_ChucVu]
GO
USE [master]
GO
ALTER DATABASE [StudentManagement] SET  READ_WRITE 
GO
