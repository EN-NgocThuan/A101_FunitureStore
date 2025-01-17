USE [QL_SieuThiNoiThat]
GO
/****** Object:  Table [dbo].[CTPhieuNhap]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuNhap](
	[MaCT] [varchar](10) NOT NULL,
	[MaPN] [varchar](10) NULL,
	[MaSP] [varchar](10) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_CTPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[MaCT] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [varchar](10) NULL,
	[MaSP] [varchar](10) NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[MaKH] [varchar](10) NULL,
	[MaNV] [varchar](10) NULL,
	[TinhTrang] [bit] NULL,
	[TongTien] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[Email] [varchar](max) NULL,
	[NgaySinh] [date] NULL,
	[DienThoai] [varchar](11) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MatKhau] [varchar](max) NULL,
	[MaNhom] [varchar](6) NULL,
	[TinhTrang] [varchar](10) NULL,
	[HinhAnh] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManHinh]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManHinh](
	[MaMH] [int] IDENTITY(1,1) NOT NULL,
	[TenMH] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [nvarchar](255) NULL,
	[CCCD] [varchar](13) NULL,
	[Email] [varchar](max) NULL,
	[NgaySinh] [date] NULL,
	[DienThoai] [varchar](11) NULL,
	[MatKhau] [varchar](max) NULL,
	[MaNhom] [varchar](6) NULL,
	[TinhTrang] [varchar](10) NULL,
	[HinhAnh] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomNguoiDung]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomNguoiDung](
	[MaNhom] [varchar](6) NOT NULL,
	[TenNhom] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [varchar](10) NULL,
	[TongTien] [decimal](18, 2) NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[MaMH] [int] NULL,
	[MaNhom] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 28/11/2023 11:32:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](10) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[TinhTrang] [bit] NULL,
	[MaNCC] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaLoai] [int] NULL,
	[KichThuoc] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[ChatLieu] [nvarchar](50) NULL,
	[XuatXu] [nvarchar](50) NULL,
	[DonVi] [nvarchar](20) NULL,
	[ChuongTrinhApDung] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[HinhAnh] [varchar](max) NULL,
 CONSTRAINT [PK__SanPham__2725081CC047299C] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Email], [NgaySinh], [DienThoai], [DiaChi], [MatKhau], [MaNhom], [TinhTrang], [HinhAnh]) VALUES (N'2311230001', N'Nguyễn Thành Đô', N'abc@gmail.com', CAST(N'2001-12-11' AS Date), N'0123654789', N'78 Lê Trọng Tấn, phường Tây Thạnh, quận Tân Phú, thành phố Hồ Chí Minh', N'123456', N'Gue', N'Active', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Email], [NgaySinh], [DienThoai], [DiaChi], [MatKhau], [MaNhom], [TinhTrang], [HinhAnh]) VALUES (N'2311230002', N'Trần Văn Sĩ', N'xyz@gmail.com', CAST(N'2001-05-25' AS Date), N'0245613987', NULL, N'123456', N'Gue', N'Blocked', NULL)
GO
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (1, N'Sofa')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (2, N'Ghế Thư Giãn')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (3, N'Bàn')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (4, N'Ghế')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (5, N'Giường Nệm')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (6, N'Chăn Ga Gối')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (7, N'Tủ Kệ')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (8, N'Nội Thất Văn Phòng')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (9, N'Trang Trí Nhà Cửa')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (10, N'Nhà Bếp')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (11, N'Phòng Tắm')
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (1, N'JOY')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (2, N'STUDENT')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (3, N'DOMINIK')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (4, N'BARCELONA')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (5, N'VIKING')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (6, N'CARINE')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (7, N'ALISON')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (8, N'JULIANNE')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (9, N'MARGARET')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (10, N'VENICE')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (11, N'TINTIN')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (12, N'VERONA')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (13, N'PRINCETON')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (14, N'KENNY')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (15, N'HARRIS')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (16, N'PALL-MALL')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (17, N'HOUSTON')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (18, N'CONNEMARA')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom]) VALUES (N'Adm', N'Admin')
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom]) VALUES (N'Gue', N'Guest')
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom]) VALUES (N'User', N'User')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TinhTrang], [MaNCC], [MoTa], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [XuatXu], [DonVi], [ChuongTrinhApDung], [GhiChu], [SoLuongTon], [HinhAnh]) VALUES (N'1089271', N'Ghế Đơn / Ghế Bành Thư Giãn Connemara', 1, 18, N'Là một thiết kế đặc biệt của BAYA, ghế bành CONNEMARA có thể kết hợp hài hòa với bất kỳ phong cách nội thất nào. Khung và chân ghế làm từ gỗ đem lại sự vững chắc và độ bền cao. Đệm ngồi và tựa lưng êm ái với chất liệu mút bọc vải nhung thành phần 100% polyester giữ phom dáng ghế và đưa vẻ đẹp sang trọng vào tổ ấm.', 1, N'D80xW75xH60/77', N'Màu xanh dương', N'Vải tổng hợp', N'Việt Nam', N'PCS', N'1 Năm Bảo Hành;Đổi trả trong 3 ngày(Không áp dụng chính sách đổi trả và bảo hành với những sản phẩm CLEARANCE)', N'Sử dụng máy hút bụi hoặc dịch vụ vệ sinh sofa để làm sạch sản phẩm;Đặt sản phẩm tại nơi khô thoáng;Tránh độ ẩm và nhiệt độ cao, nguồn sáng mạnh và các vật dễ cháy;Không dùng vật sắc nhọn chà xát sản phẩm.', 20, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TinhTrang], [MaNCC], [MoTa], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [XuatXu], [DonVi], [ChuongTrinhApDung], [GhiChu], [SoLuongTon], [HinhAnh]) VALUES (N'1096293', N'Ghế Dài Thư Giãn Màu Hồng Connemara', 1, 18, N'Ghế nằm CONNEMARA là một thiết kế đặc biệt của BAYA, lấy cảm hứng từ phong cách Art Deco hiện đại và ấn tượng. Sản phẩm được bọc vải nhung mềm mịn; với màu sắc và kiểu dáng cá tính, quyến rũ cho bạn thoải mái thư giãn, nghỉ ngơi. Kết hợp với các món nội thất khác trong cùng bộ sưu tập CONNEMARA để hoàn thiện việc bày trí không gian phòng khách sang trọng và ấm cúng.', 1, N'D85xW168xH80/42', N'Hồng', N'Vải tổng hợp', N'Việt Nam', N'PCS', N'1 Năm Bảo Hành;Đổi trả trong 3 ngày(Không áp dụng chính sách đổi trả và bảo hành với những sản phẩm CLEARANCE)', N'Sử dụng dịch vụ vệ sinh sofa định kỳ để bảo quản sản phẩm tốt nhất;Không tẩy trắng;Không sấy nóng;Không ủi sản phẩm;Lau sạch vết bẩn nhỏ bằng miếng bọt biển và nước hoặc dung dịch giặt rửa nhẹ;Lau ngay vết chất lỏng bị đổ để tránh thấm vào sản phẩm', 30, NULL)
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__CTHoaDon__MaSP__4BAC3F29] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK__CTHoaDon__MaSP__4BAC3F29]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomNguoiDung] ([MaNhom])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomNguoiDung] ([MaNhom])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[Quyen]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[ManHinh] ([MaMH])
GO
ALTER TABLE [dbo].[Quyen]  WITH CHECK ADD FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomNguoiDung] ([MaNhom])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__MaLoai__3C69FB99] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__MaLoai__3C69FB99]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
