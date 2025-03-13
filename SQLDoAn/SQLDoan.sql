	--create database qlykhachsan
	--go
	create table QlyKH
	(
	MaKH nvarchar(6) not null,
	TenKH nvarchar(20) not null,
	GioiTinh nvarchar(3) not null,
	NgaySinh date,
	CMND nvarchar(12) not null,
	DiaChi nvarchar(20) not null,
	SDT nvarchar(20) not null,
	GhiChu nvarchar(20) not null,
	primary key(MaKH)
)
go
create table QlyPhong
(
MaPhong nvarchar(5) not null,
TenPhong nvarchar(3) not null,
LoaiPhong nvarchar(20) not null,
KieuPhong nvarchar(20) not null,
TinhTrang nvarchar(20) not null,
GiaPhong int not null,
primary key(MaPhong)
)
go
create table QlyDatPhong
(
MaDatPhong nvarchar(5) not null,
MaPhong nvarchar(5) not null,
MaKH nvarchar(6) not null,
NgayDen date,
NgayDi date,
primary key(MaDatPhong),
FOREIGN KEY (MaPhong) REFERENCES QlyPhong(MaPhong),
FOREIGN KEY (MaKH) REFERENCES QlyKH(MaKH)
)


--- tạo bảng Hoadon
create table QlyHoaDon
(
MaHoaDon nvarchar(5) not null,
MaDatPhong nvarchar(5) not null,
GiamGia int not null,
LoaiThanhToan nvarchar(20) not null,
primary key(MaHoaDon),
FOREIGN KEY (MaDatPhong) REFERENCES QlyDatPhong(MaDatPhong)
)
go
--tao bang dich vu
create table DichVu(
MaDV nvarchar(5) not null primary key,
TenDV nvarchar(20),
DonGia int)
---tạo bảng sử dụng dịch vụ
create table SuDungDichVu(
MaDV nvarchar(5) not null,
MaDatPhong nvarchar(5) not null,
MaKH nvarchar(6) not null,
SoLuong int,
primary key (MaDV,MaDatPhong,MaKH),
FOREIGN KEY (MaDV) REFERENCES DichVu(MaDV),
FOREIGN KEY (MaDatPhong) REFERENCES QlyDatPhong(MaDatPhong),
FOREIGN KEY (MaKH) REFERENCES QlyKH(MaKH)
)
go
---tạo bảng thongke
create table ThongKe(
MaHoaDon nvarchar(5) not null primary key,
NgayDen date,
NgayDi date,
TongThanhToan float,
FOREIGN KEY (MaHoaDon) REFERENCES QlyHoaDon(MaHoaDon)
)
go


CREATE TABLE NhanVien (
    MaNhanVien nvarchar(10) not null PRIMARY KEY,
    TenNhanVien VARCHAR(100),
    NgaySinh DATE,
    DiaChi VARCHAR(255),
    SoDienThoai VARCHAR(15),
)
go

CREATE TABLE LuongCoBan (
    MaNhanVien nvarchar(10) PRIMARY KEY,
    Luong FLOAT,
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
)
go

CREATE TABLE ChamCong (
    MaNhanVien nvarchar(10),
    Thang INT,
    Nam INT,
    SoGioLamViec INT,
    PRIMARY KEY (MaNhanVien, Thang, Nam),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
)
go


create table PhanQuyen
(
	MaTK nvarchar(30) not null primary key,
	TenTK nvarchar(50) not null,
	Password nvarchar(30) not null,
	QLKH bit,
	QLPhong bit,
	QLDV bit,
	QLHD bit,
	QLCC bit,
	QLLCB bit,
	QLNV bit,
	DatPhong bit,
	ThanhToan bit,
	ThongKe bit,
	InDS bit,
	QLPQ bit,
	MaNhanVien nvarchar(10)
	FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
)
go
