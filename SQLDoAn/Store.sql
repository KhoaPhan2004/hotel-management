
--store in hoa đơn
	CREATE PROCEDURE inhoadon
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
	go

	
	---tạo store in thanh toán cho thống kê
CREATE proc ThongKeThanhToan
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
go
	---store kiem tra những hóa đơn đã thanh toán
create proc KiemTraHDThanhToan
as
select MaHoaDon
from ThongKe
go
CREATE PROC ThongKeDoanhThu
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

go
create proc baocao_MaDichVu1
@MaDV nvarchar(5)
as
if(@MaDV='')
select * from dbo.DichVu
else
select * from dbo.DichVu where MaDV = @MaDV
go

create proc baocao_MaKhachHang
@MaKH nvarchar(5)
as
if(@MaKH='')
select * from dbo.QlyKH
else
select * from dbo.QlyKH where MaKH = @MaKH
go

create proc baocao_MaPhong
@MaPhong nvarchar(5)
as
if(@MaPhong='')
select * from dbo.QlyPhong
else
select * from dbo.QlyPhong where MaPhong = @MaPhong
go

create proc baocao_MaDatPhong
@MaDatPhong nvarchar(5)
as
if(@MaDatPhong='')
select dp.MaDatPhong,dp.MaPhong,kh.TenKH,dp.NgayDen,dp.NgayDi from dbo.QlyDatPhong dp, dbo.QlyKH kh where dp.MaKH = kh.MaKH
else
select dp.MaDatPhong,dp.MaPhong,kh.TenKH,dp.NgayDen,dp.NgayDi from dbo.QlyDatPhong dp, dbo.QlyKH kh where dp.MaDatPhong = @MaDatPhong and dp.MaKH = kh.MaKH
go

CREATE PROCEDURE baocao_MaHoaDon
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


create proc baocao_TinhLuong
@Thang int,@Nam int
as
select NhanVien.MaNhanVien,NhanVien.TenNhanVien,ChamCong.Thang,ChamCong.Nam,LuongCoBan.Luong*ChamCong.SoGioLamViec AS 'Luong' from NhanVien Join LuongCoBan on NhanVien.MaNhanVien = LuongCoBan.MaNhanVien
join ChamCong on NhanVien.MaNhanVien = ChamCong.MaNhanVien
where ChamCong.Thang = @Thang and ChamCong.Nam = @Nam
go

