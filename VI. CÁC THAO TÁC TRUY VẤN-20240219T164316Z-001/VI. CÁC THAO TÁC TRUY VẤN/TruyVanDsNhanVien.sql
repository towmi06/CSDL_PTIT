﻿USE QLNhanVien
SELECT * FROM NHANVIEN
INSERT INTO NHANVIEN(MANV, HO, TEN, GIOITINH, NGAYSINH, CHUCVU, NGAYTUYENDUNG, NOISINH, SODT, EMAIL, PHONGBAN)
VALUES ('NV012', N'Nguyễn Thị', N'Hằng', N'Nữ', '1999-05-15', N'Nhân viên', '2023-10-01', N'Hà Nội', '0398765432', 'hangnt@gmail.com', 'KT');
DELETE FROM NHANVIEN WHERE MANV = 'NV012';
UPDATE NHANVIEN SET CHUCVU = N'Trưởng phòng' WHERE MANV = 'NV011';