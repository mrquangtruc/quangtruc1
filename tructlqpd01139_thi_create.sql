-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:50:11.96




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV varchar(8)  NOT NULL,
    TenNV nvarchar(50)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh nvarchar(10)  NOT NULL,
    Email varchar(50)  NOT NULL,
    Mucluong int  NOT NULL,
    MaPhong varchar(8)  NOT NULL,
    TPhongban_MaPhong varchar(8)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong varchar(8)  NOT NULL,
    Tenphong nvarchar(50)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (TPhongban_MaPhong)
    REFERENCES TPhongban (MaPhong)
;





-- End of file.

