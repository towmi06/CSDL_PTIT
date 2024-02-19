﻿CREATE VIEW DSNHANVIEN_KD_KT_TK_TT
AS
SELECT a.MANV AS "Mã Nhân Viên", a.HO AS "Họ", a.TEN AS "Tên",
a.CHUCVU AS "Chức vụ", a.PHONGBAN AS "Phòng Ban", b.TenPB AS "Tên phòng ban", b.Leader AS "Leader"
FROM NHANVIEN a
INNER JOIN PhongBan b
ON a.PHONGBAN = b.MaPB
WHERE a.PHONGBAN='KD' OR a.PHONGBAN='KT' OR a.PHONGBAN='TK' OR a.PHONGBAN = 'TT'


CREATE VIEW DSNHANVIEN_AI_HR_IT
AS
SELECT a.MANV AS "Mã Nhân Viên", a.HO AS "Họ", a.TEN AS "Tên",
a.CHUCVU AS "Chức vụ", a.PHONGBAN AS "Phòng Ban", b.TenPB AS "Tên phòng ban", b.Leader AS "Leader"
FROM NHANVIEN a
INNER JOIN PhongBan b
ON a.PHONGBAN = b.MaPB
WHERE a.PHONGBAN='AI' OR a.PHONGBAN='HR' OR a.PHONGBAN='IT' 