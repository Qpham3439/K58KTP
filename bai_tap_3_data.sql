USE [QLSV]
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [ngaysinh]) VALUES (N'K225480106001', N'Lê Tuấn Anh', NULL)
INSERT [dbo].[SinhVien] ([masv], [hoten], [ngaysinh]) VALUES (N'K225480106019', N'Nguyễn Trung Hiếu', NULL)
INSERT [dbo].[SinhVien] ([masv], [hoten], [ngaysinh]) VALUES (N'K225480106057', N'Phạm Mạnh Quỳnh', NULL)
GO
INSERT [dbo].[Khoa] ([makhoa], [tenkhoa]) VALUES (N'123', N'Điện Tử')
INSERT [dbo].[Khoa] ([makhoa], [tenkhoa]) VALUES (N'124', N'Cơ Khí')
GO
INSERT [dbo].[BoMon] ([mabm], [tenbm], [makhoa]) VALUES (N'bm1', N'công nghệ phần mềm', N'123')
INSERT [dbo].[BoMon] ([mabm], [tenbm], [makhoa]) VALUES (N'bm2', N'chế tạo máy', N'124')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [ngaysinh], [mabm]) VALUES (N'mgv01', N'Nguyễn Văn A', NULL, N'bm1')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [ngaysinh], [mabm]) VALUES (N'mgv02', N'Trần Thị B', NULL, N'bm1')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [ngaysinh], [mabm]) VALUES (N'mgv03', N'Phạm Văn C', NULL, N'bm2')
GO
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [stc]) VALUES (N'M01', N'CSDL', 3)
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [stc]) VALUES (N'M02', N'MMT', 3)
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [stc]) VALUES (N'M03', N'GT1', 3)
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [stc]) VALUES (N'M04', N'PTTKHT', 3)
GO
INSERT [dbo].[LopHP] ([malophp], [tenlophp], [HK], [mamon], [magv]) VALUES (N'lhp01', N'Cơ Sở Dữ Liệu', 1, N'M01', N'mgv01')
INSERT [dbo].[LopHP] ([malophp], [tenlophp], [HK], [mamon], [magv]) VALUES (N'lhp02', N'Mạng Máy Tính', 1, N'M02', N'mgv02')
INSERT [dbo].[LopHP] ([malophp], [tenlophp], [HK], [mamon], [magv]) VALUES (N'lhp03', N'Giải Tích 1', 2, N'M03', N'mgv01')
INSERT [dbo].[LopHP] ([malophp], [tenlophp], [HK], [mamon], [magv]) VALUES (N'lhp04', N'Phân Tích Thiết Kế Hệ Thống', 3, N'M04', N'mgv03')
GO
INSERT [dbo].[DKMH] ([id_dk], [masv], [malophp], [diemthi], [phantramthi]) VALUES (N'1', N'k225480106057', N'lhp01', 8, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [masv], [malophp], [diemthi], [phantramthi]) VALUES (N'2', N'k225480106057', N'lhp04', 9, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [masv], [malophp], [diemthi], [phantramthi]) VALUES (N'3', N'K225480106001', N'lhp01', 7, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [masv], [malophp], [diemthi], [phantramthi]) VALUES (N'4', N'K225480106001', N'lhp02', 6, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [masv], [malophp], [diemthi], [phantramthi]) VALUES (N'5', N'K225480106019', N'lhp04', 9, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [masv], [malophp], [diemthi], [phantramthi]) VALUES (N'6', N'K225480106019', N'lhp01', 10, 0.6)
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'1', N'1', 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'2', N'1', 6)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'3', N'2', 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'4', N'3', 10)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'5', N'2', 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'6', N'4', 6)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'7', N'2', 7)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'8', N'6', 5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'9', N'5', 4)
GO
