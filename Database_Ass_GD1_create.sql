-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-01-22 14:19:14.055




-- tables
-- Table: HoaDon
CREATE TABLE HoaDon (
    Ma_HD varchar(10)  NOT NULL,
    Ma_KH varchar(10)  NOT NULL,
    NgayMua date  NOT NULL,
    Ten_KH varchar(30)  NOT NULL,
    DiaChi varchar(50)  NOT NULL,
    KhachHang_Ma_KH varchar(10)  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY  (Ma_HD)
)
;





-- Table: HoaDonChiTiet
CREATE TABLE HoaDonChiTiet (
    Ma_HD varchar(10)  NOT NULL,
    Ma_SP varchar(10)  NOT NULL,
    DonGia money  NOT NULL,
    SoLuong int  NOT NULL,
    ThanhTien money  NOT NULL,
    HoaDon_Ma_HD varchar(10)  NOT NULL,
    SanPham_Ma_SP varchar(10)  NOT NULL,
    CONSTRAINT HoaDonChiTiet_pk PRIMARY KEY  (Ma_HD)
)
;





-- Table: KhachHang
CREATE TABLE KhachHang (
    Ma_KH varchar(10)  NOT NULL,
    Ten_KH varchar(30)  NOT NULL,
    GioiTinh varchar(10)  NOT NULL,
    DiaChi varchar(50)  NOT NULL,
    SDT int  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY  (Ma_KH)
)
;





-- Table: LoaiSanPham
CREATE TABLE LoaiSanPham (
    Ma_Loai varchar(10)  NOT NULL,
    TenLoai_SP varchar(20)  NOT NULL,
    CONSTRAINT LoaiSanPham_pk PRIMARY KEY  (Ma_Loai)
)
;





-- Table: SanPham
CREATE TABLE SanPham (
    Ma_SP varchar(10)  NOT NULL,
    Ten_SP varchar(20)  NOT NULL,
    Ma_Loai varchar(10)  NOT NULL,
    SoLuong int  NOT NULL,
    LoaiSanPham_Ma_Loai varchar(10)  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY  (Ma_SP)
)
;









-- foreign keys
-- Reference:  HoaDonChiTiet_HoaDon (table: HoaDonChiTiet)

ALTER TABLE HoaDonChiTiet ADD CONSTRAINT HoaDonChiTiet_HoaDon 
    FOREIGN KEY (HoaDon_Ma_HD)
    REFERENCES HoaDon (Ma_HD)
;

-- Reference:  HoaDonChiTiet_SanPham (table: HoaDonChiTiet)

ALTER TABLE HoaDonChiTiet ADD CONSTRAINT HoaDonChiTiet_SanPham 
    FOREIGN KEY (SanPham_Ma_SP)
    REFERENCES SanPham (Ma_SP)
;

-- Reference:  HoaDon_KhachHang (table: HoaDon)

ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_KhachHang 
    FOREIGN KEY (KhachHang_Ma_KH)
    REFERENCES KhachHang (Ma_KH)
;

-- Reference:  SanPham_LoaiSanPham (table: SanPham)

ALTER TABLE SanPham ADD CONSTRAINT SanPham_LoaiSanPham 
    FOREIGN KEY (LoaiSanPham_Ma_Loai)
    REFERENCES LoaiSanPham (Ma_Loai)
;

--insert KhachHang
Insert into KhachHang values ('KH001','Ngo Truong An','Nam','Da Nang','01642153245')
Insert into KhachHang values ('KH002','Vo Hung','Nam','Quang Tri','01642153455')
Insert into KhachHang values ('KH003','Tran Le Hai Quan','Nam','Quang Nam','01642148245')
Insert into KhachHang values ('KH004','Nguyen Duc Hau','Nam','Quang Ngai','01644512445')
Insert into KhachHang values ('KH005','Nguyen Thi Hong Tham','Nu','Quang Binh','01642543245')

--insert HoaDon
Insert into HoaDon values ('HD001','KH001','12/2/2016','Ngo Truong An','Da Nang')
Insert into HoaDon values ('HD002','KH002','12/3/2016','Vo Hung','Quang Tri')
Insert into HoaDon values ('HD003','KH003','12/4/2016','Tran Le Hai Quan','Quang Nam')
Insert into HoaDon values ('HD004','KH004','12/5/2016','Nguyen Duc Hau','Quang Ngai')
Insert into HoaDon values ('HD005','KH005','12/6/2016','Nguyen Thi Hong Tham','Quang Binh')

--insert HoaDonChiTiet
Insert into HoaDonChiTiet values ('HD001','SP001','30000','3','90000')
Insert into HoaDonChiTiet values ('HD002','SP002','15000','2','30000')
Insert into HoaDonChiTiet values ('HD003','SP003','50000','2','100000')
Insert into HoaDonChiTiet values ('HD004','SP004','25000','4','100000')
Insert into HoaDonChiTiet values ('HD005','SP005','40000','3','120000')

--insert SanPham
Insert into SanPham values ('SP001','Tai Nghe','ML001','15')
Insert into SanPham values ('SP002','USB','ML002','50')
Insert into SanPham values ('SP003','LCD','ML003','15')
Insert into SanPham values ('SP004','Ban Phim','ML004','10')
Insert into SanPham values ('SP005','Tan Nhiet','ML005','20')

--insert LoaiSanPham
Insert into LoaiSanPham values ('ML001','Tai Nghe')
Insert into LoaiSanPham values ('ML002','Luu Tru')
Insert into LoaiSanPham values ('ML003','Man Hinh')
Insert into LoaiSanPham values ('ML004','Keyboard')
Insert into LoaiSanPham values ('ML005','Tan Nhiet')

-- End of file.

