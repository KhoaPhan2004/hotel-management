set dateformat dmy
go
insert into NhanVien(MaNhanVien,TenNhanVien,NgaySinh,DiaChi,SoDienThoai)
values ('NV001',N'Phan Đăng Khoa','07/21/2004','Phú Yên','0123456789')
go
insert into NhanVien(MaNhanVien,TenNhanVien,NgaySinh,DiaChi,SoDienThoai)
values ('NV002',N'Đinh Hồng Thái','07/21/2004','Sài Gòn','0123456789')
go
insert into NhanVien(MaNhanVien,TenNhanVien,NgaySinh,DiaChi,SoDienThoai)
values ('NV003',N'Nguyễn Văn A','07/21/2004','Hà Nội','0123456789')
go
---them du lieu cho bảng khách hàng
insert into QlyKH(MaKH,TenKH,CMND,SDT,NgaySinh,DiaChi,GioiTinh,GhiChu)
values ('KH001',N'Đinh Hòng Thái','077720412344','0123456789','14/05/2004',N'Bà Rịa Vũng Tàu',N'Nam',N'Không')
go
insert into QlyKH(MaKH,TenKH,CMND,SDT,NgaySinh,DiaChi,GioiTinh,GhiChu)
values ('KH002',N'Eitaaaaa','0937656128','0123456789','30/03/2004',N'Bến Tre',N'Nam',N'Không')
go
insert into QlyKH(MaKH,TenKH,CMND,SDT,NgaySinh,DiaChi,GioiTinh,GhiChu)
values ('KH003',N'Lê Thanh Nhi','077720415978','0907030367','20/02/2005',N'Bà Rịa Vũng Tàu',N'Nữ',N'Không')
go
insert into QlyKH(MaKH,TenKH,CMND,SDT,NgaySinh,DiaChi,GioiTinh,GhiChu)
values ('KH004',N'Nguyễn Thị Thảo','077720416791','0789257994','01/07/2004',N'Bà Rịa Vũng Tàu',N'Nữ',N'Không')
go
insert into QlyKH(MaKH,TenKH,CMND,SDT,NgaySinh,DiaChi,GioiTinh,GhiChu)
values ('KH005',N'Lê Thành Nam','077720214568','0791236977','06/06/2004',N'TP HCM',N'Nam',N'Không')
go
insert into QlyKH(MaKH,TenKH,CMND,SDT,NgaySinh,DiaChi,GioiTinh,GhiChu)
values ('KH006',N'Nguyễn Minh Hiệp','077720312312','0903152124','10/07/2004',N'Long An',N'Nam',N'Không')
go
insert into QlyKH(MaKH,TenKH,CMND,SDT,NgaySinh,DiaChi,GioiTinh,GhiChu)
values ('KH007',N'Lê Thị Bé Ba','077720412889','0999456211','03/07/2003',N'Cà Mau',N'Nữ',N'Không')
go
insert into QlyKH(MaKH,TenKH,CMND,SDT,NgaySinh,DiaChi,GioiTinh,GhiChu)
values ('KH008',N'Phan Đăng Khoa','077720412888','0914567867','27/07/2004',N'Bình Định',N'Nam',N'Không')
go
insert into QlyKH(MaKH,TenKH,CMND,SDT,NgaySinh,DiaChi,GioiTinh,GhiChu)
values ('KH009',N'Lương Quốc Hùng','077720412811','0914567412','29/01/2002',N'Cần Thơ',N'Nam',N'Không')
go
insert into QlyKH(MaKH,TenKH,CMND,SDT,NgaySinh,DiaChi,GioiTinh,GhiChu)
values ('KH010',N'Nguyễn Mai Phương','077720412812','0123466689','01/03/2004',N'Bà Rịa Vũng Tàu',N'Nữ',N'Không')
go
--- thêm dữ liệu cho bảng phòng
insert into QlyPhong(MaPhong,TenPhong,LoaiPhong,KieuPhong,TinhTrang,GiaPhong)
values ('P0001','101',N'Trung bình',N'Giường đôi',N'Trống',10000)
go
insert into QlyPhong(MaPhong,TenPhong,LoaiPhong,KieuPhong,TinhTrang,GiaPhong)
values ('P0002','102',N'Tiêu chuẩn',N'Giường đơn',N'Trống',123456)
go
insert into QlyPhong(MaPhong,TenPhong,LoaiPhong,KieuPhong,TinhTrang,GiaPhong)
values ('P0003','103',N'Thương gia',N'Giường đơn',N'Trống',111111)
go
insert into QlyPhong(MaPhong,TenPhong,LoaiPhong,KieuPhong,TinhTrang,GiaPhong)
values ('P0004','104',N'Trung bình',N'Giường đôi',N'Trống',20000000)
go
insert into QlyPhong(MaPhong,TenPhong,LoaiPhong,KieuPhong,TinhTrang,GiaPhong)
values ('P0005','105',N'Tiêu chuẩn',N'Giường đôi',N'Trống',1500000)
go
insert into QlyPhong(MaPhong,TenPhong,LoaiPhong,KieuPhong,TinhTrang,GiaPhong)
values ('P0006','106',N'Thương gia',N'Giường đôi',N'Trống',10000000)
go
insert into QlyPhong(MaPhong,TenPhong,LoaiPhong,KieuPhong,TinhTrang,GiaPhong)
values ('P0007','107',N'Trung bình',N'Giường đơn',N'Trống',20000000)
go
insert into QlyPhong(MaPhong,TenPhong,LoaiPhong,KieuPhong,TinhTrang,GiaPhong)
values ('P0008','108',N'Trung bình',N'Giường đôi',N'Trống',550000)
go
insert into QlyPhong(MaPhong,TenPhong,LoaiPhong,KieuPhong,TinhTrang,GiaPhong)
values ('P0009','109',N'Trung bình',N'Giường đơn',N'Trống',1200000)
go
insert into QlyPhong(MaPhong,TenPhong,LoaiPhong,KieuPhong,TinhTrang,GiaPhong)
values ('P0010','110',N'Thương gia',N'Giường đôi',N'Trống',4000000)
go
--- thêm dữ liệu cho Dịch vụ
insert into DichVu(MaDV,TenDV,DonGia)
values ('DV001',N'Spa',200000)
go
insert into DichVu(MaDV,TenDV,DonGia)
values ('DV002',N'Ăn khuya',80000)
go
insert into DichVu(MaDV,TenDV,DonGia)
values ('DV003',N'Bia',20000)
go
insert into DichVu(MaDV,TenDV,DonGia)
values ('DV004',N'Nước uống',15000)
go
insert into DichVu(MaDV,TenDV,DonGia)
values ('DV005',N'Bánh hộp',40000)
go
insert into DichVu(MaDV,TenDV,DonGia)
values ('DV006',N'Cafe',20000)
go
INSERT INTO DichVu(MaDV, TenDV, DonGia)
VALUES 
('DV007', N'đưa đón sân bay', 300000),
('DV008', N'tham quan du lịch', 600000),
('DV009', N'hồ bơi', 150000),
('DV010', N'phòng gym', 200000);
go
--- thêm dữ liệu cho Đặt phòng
insert into QlyDatPhong(MaDatPhong,MaPhong,MaKH,NgayDen,NgayDi)
values ('DP001','P0001','KH001','02/11/2023','07/11/2023')
go
insert into QlyDatPhong(MaDatPhong,MaPhong,MaKH,NgayDen,NgayDi)
values ('DP002','P0002','KH002','02/11/2023','07/11/2023')
go
insert into QlyDatPhong(MaDatPhong,MaPhong,MaKH,NgayDen,NgayDi)
values ('DP003','P0003','KH003','04/10/2023','07/10/2023')
go
insert into QlyDatPhong(MaDatPhong,MaPhong,MaKH,NgayDen,NgayDi)
values ('DP004','P0003','KH004','08/11/2023','09/11/2023')
go
insert into QlyDatPhong(MaDatPhong,MaPhong,MaKH,NgayDen,NgayDi)
values ('DP005','P0001','KH005','11/05/2024','13/05/2024')
go
insert into QlyDatPhong(MaDatPhong,MaPhong,MaKH,NgayDen,NgayDi)
values ('DP006','P0001','KH006','07/05/2024','09/05/2024')
go
insert into QlyDatPhong(MaDatPhong,MaPhong,MaKH,NgayDen,NgayDi)
values ('DP007','P0002','KH007','05/05/2024','05/05/2024')
go
insert into QlyDatPhong(MaDatPhong,MaPhong,MaKH,NgayDen,NgayDi)
values ('DP008','P0004','KH008','02/11/2024','07/11/2024')
go
insert into QlyDatPhong(MaDatPhong,MaPhong,MaKH,NgayDen,NgayDi)
values ('DP009','P0004','KH009','11/11/2024','13/11/2024')
go
insert into QlyDatPhong(MaDatPhong,MaPhong,MaKH,NgayDen,NgayDi)
values ('DP010','P0002','KH010','02/11/2024','07/11/2024')
go
--- thêm dữ liệu cho Hóa đơn
insert into QlyHoaDon(MaHoaDon,MaDatPhong,GiamGia,LoaiThanhToan)
values ('HD001','DP001',50000,N'Tiền Mặt')
go
insert into QlyHoaDon(MaHoaDon,MaDatPhong,GiamGia,LoaiThanhToan)
values ('HD002','DP002',110000,N'Chuyển Khoản')
go
insert into QlyHoaDon(MaHoaDon,MaDatPhong,GiamGia,LoaiThanhToan)
values ('HD003','DP003',50000,N'Chuyển Khoản')
go
select * from SuDungDichVu
--- thêm dữ liệu cho Sử dụng dịch vụ
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV001','DP001','KH001',3)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV002','DP001','KH001',4)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV007','DP002','KH002',5)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV006','DP002','KH002',6)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV002','DP003','KH003',3)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV001','DP003','KH003',2)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV004','DP004','KH004',3)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV006','DP004','KH004',1)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV001','DP005','KH005',1)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV002','DP005','KH005',3)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV004','DP006','KH006',5)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV004','DP006','KH006',6)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV001','DP007','KH007',3)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV005','DP007','KH007',4)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV004','DP008','KH008',5)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV002','DP008','KH008',3)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV003','DP009','KH009',1)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV006','DP009','KH009',2)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV003','DP010','KH010',3)
go
insert into SuDungDichVu(MaDV,MaDatPhong,MaKH,SoLuong)
values ('DV001','DP010','KH010',5)
go
--- thêm dữ liệu vào bảng phân quyền
insert into PhanQuyen
values ('admin','Thai','admin',1,1,1,1,1,1,1,1,1)