-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-22 00:53:32.962




-- tables
-- Table TNhanvien
CREATE TABLE TNhanvien (
    MaNV int    NOT NULL ,
    TenNV varchar(50)    NOT NULL ,
    NgaySinh date    NOT NULL ,
    Gioitinh varchar(10)    NOT NULL ,
    Email varchar(50)    NOT NULL ,
    Mucluong int    NOT NULL ,
    MaPhong int    NOT NULL ,
    TPhongban_MaPhong int    NOT NULL ,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);

-- Table TPhongban
CREATE TABLE TPhongban (
    MaPhong int    NOT NULL ,
    Tenphong varchar(50)    NOT NULL ,
    CONSTRAINT TPhongban_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)


ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban FOREIGN KEY TNhanvien_TPhongban (TPhongban_MaPhong)
    REFERENCES TPhongban (MaPhong);



-- End of file.

