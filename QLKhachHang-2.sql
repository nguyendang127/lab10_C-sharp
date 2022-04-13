CREATE DATABASE QLKhachHang2;
CREATE TABLE thongtinKH2 (
	tenDN varchar(255) primary key ,
    matkhau varchar(255) not null,
    hoten varchar(255) not null,
    ngaysinh date not null,
    gioitinh varchar(3) CHECK (gioitinh='Nam' OR gioitinh='Nu') not null,
	email varchar(255) CHECK (email LIKE '%_@__%.__%') not null,
	thunhap float CHECK (thunhap >= 1000000 AND thunhap <= 50000000) not null
);
INSERT INTO thongtinKH2 VALUES ('admin', '123456', 'quan tri vien', '2000-01-01', 'nam', 'admin@gmail.com', 1500000);

SELECT *FROM thongtinKH2;
