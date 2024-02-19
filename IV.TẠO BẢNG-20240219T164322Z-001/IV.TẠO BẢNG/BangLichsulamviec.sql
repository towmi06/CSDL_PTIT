﻿-- Tạo bảng LichSuLamViec
CREATE TABLE LichSuLamViec
(
    MALS CHAR(36) PRIMARY KEY,
	MANV CHAR(10) REFERENCES NHANVIEN(MANV), 
	HO NVARCHAR(50) NOT NULL,
    TEN NVARCHAR(50) NOT NULL,
    NGAYTUYENDUNG DATE NOT NULL,
	NGAYNGHIVIEC DATE  NULL,
    CHUCVU NVARCHAR(50) NOT NULL,
	MAPB CHAR(10) REFERENCES PhongBan(MaPB), 
	TENPB NVARCHAR(50) NOT NULL
);

-- Thêm dữ liệu vào bảng LichSuLamViec
INSERT INTO LichSuLamViec (MALS, MANV, HO, TEN, NGAYTUYENDUNG, NGAYNGHIVIEC, CHUCVU, MAPB, TENPB)
SELECT
    NEWID(), 
    NV.MANV,
    NV.HO,
    NV.TEN,
    NV.NGAYTUYENDUNG,
    GETDATE(),  -- Lấy ngày hiện tại làm ngày nghỉ việc
    NV.CHUCVU,
    PB.MAPB,
    PB.TENPB
FROM
    NHANVIEN NV
INNER JOIN
    PhongBan PB ON NV.MAPB = PB.MaPB;

-- Hiển thị dữ liệu trong bảng LichSuLamViec
SELECT * FROM LichSuLamViec;

-- Cập nhật khóa chính 
UPDATE LichSuLamViec
SET MALS = CASE 
    WHEN MALS = '161D0B17-A9A3-4AA7-9A47-F09B8DF27C78' THEN 'LS2000'
    WHEN MALS = '166810F3-6D39-4166-8C4E-2231F538A5CF' THEN 'LS2001'
    WHEN MALS = '24CB7312-D128-4149-A006-B68FE1609916' THEN 'LS2002'
    WHEN MALS = '62EB0C3B-65C7-4929-9244-CBBC61DD41A2' THEN 'LS2003'
    WHEN MALS = '6B7B6443-2318-49B5-B0C5-8EA86F24DE7D' THEN 'LS2004'
    WHEN MALS = '71712B8F-384F-42B8-8826-ACA834302E45' THEN 'LS2005'
    WHEN MALS = '72B6C120-7492-4AF3-ABC4-2433C4F7021B' THEN 'LS2006'
    WHEN MALS = '8678E085-5090-4627-9028-0D5235B6937D' THEN 'LS2007'
    WHEN MALS = 'AA8A7EA9-0C67-4EDE-AB85-8775E8074BBE' THEN 'LS2008'
    WHEN MALS = 'AB0FAFDF-BD8F-42C8-8D89-057440C74E1E' THEN 'LS2009'
    WHEN MALS = '1B69555A-84D5-411B-BB1D-9C51AA0446AB' THEN 'LS2010'
    ELSE MALS 
END;

UPDATE LichSuLamViec
SET NGAYNGHIVIEC = CASE 
    WHEN TEN = 'Nam' THEN '2022-10-10'
    WHEN TEN = 'Chung' THEN '2022-07-13'
    WHEN TEN = 'Linh' THEN '2022-06-04'
    WHEN TEN = 'Khanh' THEN '2022-12-14'
    WHEN TEN = 'Anh' THEN '2023-01-15'
    WHEN TEN = 'Ngọc' THEN '2023-03-08'
    WHEN TEN = 'Đạt' THEN '2021-12-30'
    WHEN TEN = 'Hai' THEN '2022-11-11'
    WHEN TEN = 'Tú' THEN '2023-09-04'
    WHEN TEN = 'Khải' THEN '2022-08-18'
    WHEN TEN = 'Trang' THEN '2023-11-20'
    ELSE NGAYNGHIVIEC
END;