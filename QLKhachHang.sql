CREATE DATABASE QLKhachHang;

use QLKhachHang;

CREATE TABLE thongtinKH (
	tenDN varchar(255),
    matkhau varchar(255),
    hoten varchar(255),
    ngaysinh date,
    gioitinh varchar(255),
	email varchar(255),
	thunhap float 
);
INSERT INTO thongtinKH VALUES ('admin', '123456', 'quan tri vien', '2000-01-01', 'nam', 'admin@gmail.com', 15000);

SELECT *FROM thongtinKH;

Delete from thongtinKH;