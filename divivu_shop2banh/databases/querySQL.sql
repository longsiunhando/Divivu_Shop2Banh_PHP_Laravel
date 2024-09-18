use divivu;

-- Tạo bảng LoaiSanPham
CREATE TABLE LoaiSanPham (
    LoaiSanPhamID INT AUTO_INCREMENT PRIMARY KEY,
    TenLoaiSanPham VARCHAR(255) NOT NULL
);


-- Tạo bảng SanPham (XeMay)
CREATE TABLE SanPham (
    SanPhamID INT AUTO_INCREMENT PRIMARY KEY,
    TenSanPham VARCHAR(255) NOT NULL,
    HangSanXuat VARCHAR(255) NOT NULL,
    NamSanXuat INT,
    NgayNhap Date,
    GiaBan DECIMAL(18, 2),
    IMGPath VARCHAR(255),
    MoreIMG LONGTEXT,
    SoLuongTon INT,
    LoaiSanPhamID INT,
    FOREIGN KEY (LoaiSanPhamID) REFERENCES LoaiSanPham(LoaiSanPhamID) ON DELETE CASCADE
);



-- Tạo bảng NhanVien
CREATE TABLE NhanVien (
    NhanVienID INT AUTO_INCREMENT PRIMARY KEY,
    HoTen VARCHAR(255) NOT NULL,
    ChucVu VARCHAR(255),
    Luong DECIMAL(18, 2),
    NgayVaoLam DATE
);
-- Tạo bảng KhachHang
CREATE TABLE KhachHang (
    KhachHangID INT AUTO_INCREMENT PRIMARY KEY,
    HoTen VARCHAR(255) NOT NULL,
    DiaChi VARCHAR(255),
    SoDienThoai VARCHAR(15),
    Email VARCHAR(255)
);

-- Tạo bảng NhaCungCap
CREATE TABLE NhaCungCap (
    NhaCungCapID INT AUTO_INCREMENT PRIMARY KEY,
    TenNhaCungCap VARCHAR(255) NOT NULL,
    DiaChi VARCHAR(255),
    SoDienThoai VARCHAR(15),
    Email VARCHAR(255)
);




-- Tạo bảng TaiKhoan
CREATE TABLE TaiKhoan (
    TaiKhoanID INT AUTO_INCREMENT PRIMARY KEY,
    TenDangNhap VARCHAR(50) NOT NULL,
    MatKhau VARCHAR(255) NOT NULL,
    LoaiTaiKhoan VARCHAR(20) CHECK (LoaiTaiKhoan IN ('Admin', 'NhanVien', 'KhachHang')),
    MaNhanVienHoacKhachHang INT,
    FOREIGN KEY (MaNhanVienHoacKhachHang) REFERENCES NhanVien(NhanVienID) ON DELETE CASCADE,
    FOREIGN KEY (MaNhanVienHoacKhachHang) REFERENCES KhachHang(KhachHangID) ON DELETE CASCADE
);
-- Tạo bảng HoaDonNhap
CREATE TABLE HoaDonNhap (
    HoaDonNhapID INT AUTO_INCREMENT PRIMARY KEY,
    NgayNhap DATE,
    NhaCungCapID INT,
    NhanVienID INT,
    FOREIGN KEY (NhaCungCapID) REFERENCES NhaCungCap(NhaCungCapID) ON DELETE CASCADE,
    FOREIGN KEY (NhanVienID) REFERENCES NhanVien(NhanVienID) ON DELETE CASCADE
);

-- Tạo bảng HoaDonBan
CREATE TABLE HoaDonBan (
    HoaDonBanID INT AUTO_INCREMENT PRIMARY KEY,
    NgayBan DATE,
    KhachHangID INT,
    NhanVienID INT,
    FOREIGN KEY (KhachHangID) REFERENCES KhachHang(KhachHangID) ON DELETE CASCADE,
    FOREIGN KEY (NhanVienID) REFERENCES NhanVien(NhanVienID) ON DELETE CASCADE
);



-- Tạo bảng ChiTietHoaDonNhap
CREATE TABLE ChiTietHoaDonNhap (
    ChiTietHoaDonNhapID INT AUTO_INCREMENT PRIMARY KEY,
    HoaDonNhapID INT,
    SanPhamID INT,
    SoLuong INT,
    GiaNhap DECIMAL(18, 2),
    FOREIGN KEY (HoaDonNhapID) REFERENCES HoaDonNhap(HoaDonNhapID) ON DELETE CASCADE,
    FOREIGN KEY (SanPhamID) REFERENCES SanPham(SanPhamID) ON DELETE CASCADE
);

-- Tạo bảng ChiTietHoaDonBan
CREATE TABLE ChiTietHoaDonBan (
    ChiTietHoaDonBanID INT AUTO_INCREMENT PRIMARY KEY,
    HoaDonBanID INT,
    SanPhamID INT,
    SoLuong INT,
    GiaBan DECIMAL(18, 2),
    FOREIGN KEY (HoaDonBanID) REFERENCES HoaDonBan(HoaDonBanID) ON DELETE CASCADE,
    FOREIGN KEY (SanPhamID) REFERENCES SanPham(SanPhamID) ON DELETE CASCADE
);

-- Tạo bảng BangLuong
CREATE TABLE BangLuong (
    BangLuongID INT AUTO_INCREMENT PRIMARY KEY,
    LuongThang INT CHECK (LuongThang BETWEEN 1 AND 12),
    Nam INT,
    NhanVienID INT,
    FOREIGN KEY (NhanVienID) REFERENCES NhanVien(NhanVienID) ON DELETE CASCADE
);

-- Tạo bảng ChiTietBangLuong
CREATE TABLE ChiTietBangLuong (
    ChiTietBangLuongID INT AUTO_INCREMENT PRIMARY KEY,
    BangLuongID INT,
    NhanVienID INT,
    SoCongTangCa INT,
    ThuongCong INT,
    FOREIGN KEY (BangLuongID) REFERENCES BangLuong(BangLuongID) ON DELETE CASCADE,
    FOREIGN KEY (NhanVienID) REFERENCES NhanVien(NhanVienID) ON DELETE CASCADE
);

CREATE TABLE Carosel (
    CaroselID INT AUTO_INCREMENT PRIMARY KEY,
    Carosel VARCHAR(255)
);

INSERT INTO Carosel (Carosel) VALUES
('https://bizweb.dktcdn.net/100/362/216/themes/817330/assets/slider_1.jpg?1690171177828'),
('https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2021/01/2040x1148-circuit-run-trong-1024x576.jpg.webp'),
('https://hondakhanhan.com/wp-content/uploads/2020/07/K56R_KV_A4_FA_190710_OL-01-1024x725.jpg'),
('https://image.makewebcdn.com/makeweb/m_1920x0/GKsm2kwBS/HonRebel3007320/7320.jpg');





-- Bước 1: Sửa cấu trúc bảng
ALTER TABLE SanPham
ADD COLUMN GiaDeXuat DECIMAL(18, 2),
ADD COLUMN MoTa TEXT,
ADD ThongSoKyThuat TEXT;


-- Bước 2: Cập nhật dữ liệu cho cột GiaDeXuat
UPDATE SanPham
SET GiaDeXuat = GiaBan * 1.2
WHERE SanPhamID <= 93;
 -- Tính giá đề xuất cao hơn là Giaban + 20%

-- Bước 3: Cập nhật dữ liệu cho cột MoTa
-- Ví dụ, ta sẽ cập nhật mô tả là "Mô tả sản phẩm ABC" cho các sản phẩm có SanPhamID <= 10
UPDATE SanPham
SET MoTa = 'Mô tả sản phẩm ABC'
WHERE SanPhamID <= 10;




-- Thêm dữ liệu vào các bảng
INSERT INTO LoaiSanPham (TenLoaiSanPham) VALUES
('Xe máy'),
('Lốp'),
('Pô - Ống xả');

INSERT INTO SanPham (TenSanPham, HangSanXuat, NamSanXuat, NgayNhap, GiaBan, SoLuongTon, LoaiSanPhamID) VALUES
('Exciter 155 VVA', 'Yamaha', 2023, '2024-03-20', 50000000, 10, 1),
('Lốp xe Michelin', 'Michelin', 2024, '2024-03-21', 1000000, 50, 2),
('Ống xả Racing', 'Racing', 2023, '2024-03-21', 500000, 30, 3),
('Honda Winner X 2024', 'Honda', 2024, '2024-03-21', 45000000, 15, 1),
('Suzuki Raider R150', 'Suzuki', 2022, '2024-03-21', 48000000, 8, 1),
('Yamaha NVX 155', 'Yamaha', 2024, '2024-03-21', 55000000, 12, 1),
('Honda Wave Alpha', 'Honda', 2023, '2024-03-21', 35000000, 20, 1),
('Suzuki GSX-R150', 'Suzuki', 2021, '2024-03-21', 60000000, 5, 1),
('Yamaha Exciter 135LC', 'Yamaha', 2022, '2024-03-21', 47000000, 10, 1),
('Honda Winner X 150', 'Honda', 2023, '2024-03-21', 42000000, 18, 1),
('Suzuki Raider 150 Fi', 'Suzuki', 2023, '2024-03-21', 49000000, 7, 1),
('Yamaha NVX 155 Hybrid', 'Yamaha', 2024, '2024-03-21', 57000000, 9, 1),
('Lốp xe Bridgestone', 'Bridgestone', 2024, '2024-03-21', 950000, 40, 2),
('Lốp xe Dunlop', 'Dunlop', 2023, '2024-03-21', 900000, 45, 2),
('Lốp xe Pirelli', 'Pirelli', 2022, '2024-03-21', 1100000, 30, 2),
('Lốp xe Continental', 'Continental', 2023, '2024-03-21', 1050000, 35, 2),
('Lốp xe Metzeler', 'Metzeler', 2021, '2024-03-21', 1200000, 25, 2),
('Lốp xe IRC', 'IRC', 2022, '2024-03-21', 800000, 55, 2),
('Lốp xe Maxxis', 'Maxxis', 2023, '2024-03-21', 850000, 60, 2),
('Lốp xe Michelin Pilot Road 5', 'Michelin', 2024, '2024-03-21', 1250000, 20, 2),
('Lốp xe Pirelli Diablo Rosso Corsa', 'Pirelli', 2023, '2024-03-21', 1300000, 15, 2),
('Ống xả Racing Akrapovic', 'Akrapovic', 2024, '2024-03-21', 1500000, 20, 3),
('Ống xả SC Project', 'SC Project', 2024, '2024-03-21', 1400000, 18, 3),
('Ống xả Arrow', 'Arrow', 2023, '2024-03-21', 1350000, 25, 3),
('Ống xả Yoshimura', 'Yoshimura', 2022, '2024-03-21', 1600000, 15, 3),
('Ống xả Termignoni', 'Termignoni', 2023, '2024-03-21', 1550000, 22, 3),
('Ống xả Two Brothers Racing', 'Two Brothers Racing', 2021, '2024-03-21', 1450000, 30, 3),
('Ống xả LeoVince', 'LeoVince', 2022, '2024-03-21', 1300000, 28, 3),
('Ống xả M4 Performance Exhaust', 'M4 Performance Exhaust', 2023, '2024-03-21', 1650000, 12, 3),
('Ống xả FMF Racing', 'FMF Racing', 2023, '2024-03-21', 1250000, 35, 3),
('Ống xả Yoshimura RS-9T', 'Yoshimura', 2024, '2024-03-21', 1700000, 10, 3),
('Yamaha Exciter 155 GP 2024', 'Yamaha', 2024, '2024-03-22', 56000000,'https://motosaigon.vn/wp-content/uploads/2023/09/yamaha-exciter-155-vva-abs-2024-gia-xe-motosaigon-23.jpg','https://motosaigon.vn/wp-content/uploads/2023/09/yamaha-exciter-155-vva-abs-2024-gia-xe-motosaigon-24.jpg,https://cms-i.autodaily.vn/du-lieu/2023/09/15/yamaha-exciter-155-2024.jpg,https://yamahatownnamtien.com/uploads/source/san-pham/exciter-cao-cap-2024/exciter-155-vva-black-gold-abs4.png,https://media.techz.vn/resize_x355x/media2019/upload2019/2023/09/15/yamaha-exciter-155-vva-2024-trinh-lang-voi-nhieu-nang-cap-de-but-pha-truoc-honda-winner-x-anh-4-1694785322.jpg', 15, 1),
('Honda Air Blade 2024', 'Honda', 2024, '2024-03-22', 47000000,'https://blogcdn.muaban.net/wp-content/uploads/2023/05/05111857/khung-xe-airblade-2023.jpg','https://thanhnien.mediacdn.vn/Uploaded/hongky-qc/2022_05_24/honda-air-blade-2023-4-6721.jpg,https://giaxe.2banh.vn/dataupload/news/images/1681110951-121b89fa59a87421464c63e315abf554.jpg,https://i1-vnexpress.vnecdn.net/2023/04/03/Honda-Air-Blade-125-160-2023-3.jpg?w=750&h=0&q=100&dpr=1&fit=crop&s=cLlgSXgCCjnL6WhQrd_JyQ,https://giaxe.2banh.vn/dataupload/news/images/1681111079-5f3ba7a6b59c126e376710573b193ba3.jpg', 20, 1),
('Suzuki GSX-S150', 'Suzuki', 2023, '2024-03-22', 51000000, 'https://danviet.mediacdn.vn/upload/2-2019/images/2019-05-30/2019-Suzuki-GSX-R150-va-GSX-S150-ra-mat-voi-nhieu-diem-moi-su1-1559226261-width660height510.jpg','https://cms-i.autodaily.vn/du-lieu/2022/03/30/Suzuki%20GSX-S150%20(2).jpg,https://lh4.googleusercontent.com/proxy/N3R9TlaxUBDZfVOs1xM7Y0SZnxBrheAuqRjdqstxVSSO6jBgJWF7fy4sCiBHfYrFCymzFUIPx5n_LETfaroci9ycTOEtLLzpuh33gMHXUpPh3E4XxQ,https://www.motogiare.com/uploads/Suzuki/GSX-S150-2018/suzukigsxs1502018motogiare8.jpg,https://lh4.googleusercontent.com/proxy/mZXEKT377nom-0Nn3qtCCmq9hitrNZ0Bw37laGNebKcjXQ0tw2zpx5ttmrafN5MiInxUlTnO6hrBbuq7UKlQ1hL238BNsCnEeCaPOMlds0Omi2kc0g',12, 1),
('Yamaha Sirius 2024', 'Yamaha', 2024, '2024-03-22', 34000000,'https://blogcdn.muaban.net/wp-content/uploads/2023/02/19172045/gia-xe-sirius-2023-1.jpg','https://autobike.com.vn/wp-content/uploads/2023/11/yamaha-sirius-5-autobike.com_.vn-1.jpg,https://s1storage.2banh.vn/image/2023/11/chi-tiet-sirius-2024-so-huu-hai-qua-ngu-loi-gia-ban-len-toi-75-trieu-dong-9130-1701318431-65680f1f00ffd.jpg,https://dailymuabanxe.net/wp-content/uploads/2022/10/Yamaha-SIRIUS-Mau-Den-Cam.jpg', 18, 1),
('KTM RC 200', 'KTM', 2022, '2024-03-22', 65000000,'https://imgwebikevn-8743.kxcdn.com/WwTrXnckUX1GT_CpisGzt6hMEdU=/master/series/252_rc-200.jpg','https://motosaigon.vn/wp-content/uploads/2022/08/ktm-rc-200-2022-gia-xe-moi-nhat-motosaigon-15.jpg,https://imgd.aeplcdn.com/664x374/n/cw/ec/146607/rc-200-right-side-view-2.png?isig=0&q=80,https://www.popularktm.com/assets/models/rc200-Grey.png,https://imgd.aeplcdn.com/1056x594/n/bw/models/colors/ktm-select-model-gp-editiond-1670826275682.png?q=80', 8, 1),
('Bridgestone Battlax Hypersport S22', 'Bridgestone', 2024, '2024-03-22', 1200000,'https://detailingnation.vn/cdn/shop/files/L_pxeBattlaxHyperSportS22.png?v=1702285697','https://phutungchinhhieu.vn/wp-content/uploads/2021/10/Lop-xe-moto-Bridgestone-180-55ZR17MC-S22-73W-BATTLAX-HYPERSPORT-REAR.jpg,https://phutungchinhhieu.vn/wp-content/uploads/2021/10/Lop-xe-moto-Bridgestone-120-70ZR17MC-S22-58W-BATTLAX-HYPERSPORT-FRONT.jpg,https://www.vnride.com/wp-content/uploads/2023/08/Lop-Vo-Bridgestone-180.png', 25, 2),
('Dunlop Sportmax GPR-300', 'Dunlop', 2023, '2024-03-22', 950000,'https://phutunghoanggia.vn/wp-content/uploads/2023/09/Dunlop-GPR300-sportMax.webp','https://level10motorsports.com/cdn/shop/files/d7ed41dcb7e90acf4b85bcc0a75da7bc_fff5a232-6781-4ccf-a163-4d53ffc07dec_1200x1200.jpg?v=1693316349', 30, 2),
('Pirelli Diablo Rosso II', 'Pirelli', 2022, '2024-03-22', 1050000,'https://down-vn.img.susercontent.com/file/f58a9aca0580777a860d6373af8cd0d8','https://cdn-amz.woka.io/images/I/513DiAijsPL.SS400.jpg,https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpHa7yuErKYT9E6AWqQcihw2Gf2s4gJQYO0YQfp5hU-Q&s,', 20, 2);





INSERT INTO NhanVien (HoTen, ChucVu, Luong, NgayVaoLam) VALUES
('Nguyễn Văn A', 'Nhân viên bán hàng', 10000000, '2020-01-01'),
('Trần Thị B', 'Kế toán', 12000000, '2021-03-15'),
('Lê Văn C', 'Quản lý', 15000000, '2019-07-10');

INSERT INTO KhachHang (HoTen, DiaChi, SoDienThoai, Email) VALUES
('Nguyễn Thị D', '123 Đường ABC, Quận XYZ, TP. HCM', '0123456789', 'nguyenthid@example.com'),
('Phạm Văn E', '456 Đường DEF, Quận UVW, TP. Hà Nội', '0987654321', 'phamvane@example.com'),
('Trần Thị F', '789 Đường GHI, Quận MNO, TP. Đà Nẵng', '0369852147', 'tranthif@example.com');

INSERT INTO NhaCungCap (TenNhaCungCap, DiaChi, SoDienThoai, Email) VALUES
('Công ty A', '456 Đường KLM, Quận PQR, TP. HCM', '0123456789', 'congtya@example.com'),
('Công ty B', '789 Đường STU, Quận VWX, TP. Hà Nội', '0987654321', 'congtyb@example.com'),
('Công ty C', '123 Đường YZ, Quận DEF, TP. Đà Nẵng', '0369852147', 'congtyc@example.com');

INSERT INTO TaiKhoan (TenDangNhap, MatKhau, LoaiTaiKhoan, MaNhanVienHoacKhachHang) VALUES
('admin', 'admin_password', 'Admin', NULL),
('nv1', 'nv1_password', 'NhanVien', 1),
('kh1', 'kh1_password', 'KhachHang', 1);

INSERT INTO HoaDonNhap (NgayNhap, NhaCungCapID, NhanVienID) VALUES
('2024-03-20', 1, 1),
('2024-03-20', 2, 2),
('2024-03-20', 3, 3);

INSERT INTO HoaDonBan (NgayBan, KhachHangID, NhanVienID) VALUES
('2024-03-20', 1, 1),
('2024-03-20', 2, 2),
('2024-03-20', 3, 3);


INSERT INTO HoaDonBan (NgayBan, KhachHangID, NhanVienID) VALUES
('2024-03-20', 1, 1),
('2024-03-22', 2, 2),
('2024-03-21', 3, 3),
('2024-03-22', 1, 1),
('2024-03-20', 2, 2),
('2024-03-22', 3, 3),
('2024-03-12', 1, 1),
('2024-03-13', 2, 2),
('2024-03-16', 3, 3);

INSERT INTO ChiTietHoaDonNhap (HoaDonNhapID, SanPhamID, SoLuong, GiaNhap) VALUES
(1, 1, 5, 45000000),
(2, 2, 10, 23000000),
(3, 3, 15, 33000000);

INSERT INTO ChiTietHoaDonBan (HoaDonBanID, SanPhamID, SoLuong, GiaBan) VALUES
(1, 1, 3, 55000000),
(2, 2, 6, 27000000),
(3, 3, 9, 37000000);

INSERT INTO ChiTietHoaDonBan (HoaDonBanID, SanPhamID, SoLuong, GiaBan) VALUES
(4, 1, 9, 55000000),
(5, 4, 10, 45000000),
(6, 6, 9, 55000000),
(7, 7, 19, 35000000),
(8, 8, 8, 60000000),
(9, 9, 7, 47000000),
(10, 10, 8, 42000000),
(11, 11, 5, 49000000),
(12, 12, 6, 57000000);


INSERT INTO BangLuong (LuongThang, Nam, NhanVienID) VALUES
(3, 2024, 1),
(3, 2024, 2),
(3, 2024, 3);

INSERT INTO ChiTietBangLuong (BangLuongID, NhanVienID, SoCongTangCa, ThuongCong) VALUES
(1, 1, 2, 1000000),
(2, 2, 3, 1500000),
(3, 3, 4, 2000000);

-- Tạo PROC 
DELIMITER //
CREATE PROCEDURE SP_GetBySTR(IN str VARCHAR(255))
BEGIN
    SELECT *
    FROM SanPham
    WHERE 
        TenSanPham LIKE CONCAT('%', str, '%') OR
        HangSanXuat LIKE CONCAT('%', str, '%') OR
        NamSanXuat LIKE CONCAT('%', str, '%') OR
        NgayNhap LIKE CONCAT('%', str, '%') OR
        GiaBan LIKE CONCAT('%', str, '%') OR
        SoLuongTon LIKE CONCAT('%', str, '%') OR
        LoaiSanPhamID LIKE CONCAT('%', str, '%');
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE Cat_GetBySTR(IN str VARCHAR(255))
BEGIN
    SELECT *
    FROM loaisanpham
    WHERE 
        LoaiSanPhamID LIKE CONCAT('%', str, '%') OR
        TenLoaiSanPham LIKE CONCAT('%', str, '%');
END //
DELIMITER ;

CALL Cat_GetBySTR('Lop')