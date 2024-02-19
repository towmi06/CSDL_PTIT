CREATE TABLE NHANVIEN
(
    MANV CHAR(10) PRIMARY KEY ,
    HO NVARCHAR(50) NOT NULL,
	TEN NVARCHAR(50) NOT NULL,
    GIOITINH NVARCHAR(50) NOT NULL,
    NGAYSINH DATE NOT NULL,
    CHUCVU NVARCHAR(50) NOT NULL,
    NGAYTUYENDUNG DATE NOT NULL,
    NOISINH NVARCHAR(50) NOT NULL,
    SODT NVARCHAR(10) NOT NULL,
	EMAIL NVARCHAR(50), 
	PHONGBAN char(10),
);
insert into NHANVIEN(MANV,HO,TEN, GIOITINH, NGAYSINH, CHUCVU, NGAYTUYENDUNG, NOISINH, SODT, EMAIL, PHONGBAN)
values
	('NV001',N'Lê Văn',N'Tú', N'Nam', '1995-01-12', N'Tổng giám đốc', '2019-06-19', N'Nghệ An','0398122740','tulv@gmail.com','HR'),
	('NV002',N'Hoàng Xuân',N'Đạt', N'Nam', '1996-07-12', N'Trưởng phòng', '2020-06-19', N'Nam Định', '0396553710','dathx@gmail.com','TK'),
	('NV003',N'Vũ Bích',N'Ngọc', N'Nữ', '1996-09-20', N'Trợ lý', '2019-06-20', N'Bắc Giang',  '0398122134','ngocvb@gmail.com','TT'),
	('NV004',N'Trần Ngọc',N'Chung', N'Nam', '1997-12-21', N'Nhân Viên', '2020-07-21', N'Hà Nội','0395422357','chungtn@gmail.com','IT'),
	('NV005',N'Cung Ngọc Huyền',N'Trang', N'Nữ', '2003-07-21', N'Nhân viên', '2021-09-19', N'Hà Nội','0338757821','trangcnh@gmail.com','AI'),
	('NV006',N'Trần Giang',N'Nam', N'Nam', '2003-12-29', N'Nhân viên', '2021-09-19', N'Hà Nội','0332134211','namtg@gmail.com','KD'),
	('NV007',N'Hoàng Việt',N'Anh', N'Nam', '2003-10-21', N'Nhân viên', '2022-01-21', N'Kiên Giang','0399122317','anhhv@gmail.com','KT'),
	('NV008',N'Đỗ Quang',N'Khải', N'Nam', '2003-10-20', N'Nhân viên', '2022-01-21', N'Hà Nội','0334123557','khaidq@gmail.com','HR'),
	('NV009',N'Lê Hải',N'Nam', N'Nam', '2003-08-21', N'Nhân viên', '2022-01-21', N'Bắc Giang','0399135762','namlh@gmail.com','HR'),
	('NV010',N'Trần Hải',N'Linh', N'Nữ', '2003-03-30', N'Nhân viên', '2022-02-21', N'Hà Nội','0399755134','linhth@gmail.com','TT'),
	('NV011',N'Tưởng Nam',N'Khanh', N'Nữ', '1998-12-22', N'Nhân viên', '2022-02-25', N'Hà Nội','0331929537','khanhtn@gmail.com','IT')