CREATE VIEW Luong_NV_KD_KT_TK_TT
AS
SELECT a.MANV AS "Mã nhân viên", a.HO AS "Họ", a.TEN AS "Tên", 
a.PHONGBAN AS "Phòng ban",b.TongLuongNhan AS "Lương"
FROM NHANVIEN a
INNER JOIN BANGLUONG b
ON a.MANV=b.MANV
WHERE a.PHONGBAN='KD' OR a.PHONGBAN='KT'
OR a.PHONGBAN='TK' OR a.PHONGBAN='TT'
GROUP BY
    a.MANV, a.HO, a.TEN, a.PHONGBAN, b.TongLuongNhan

CREATE VIEW Luon_AI_IT_HR AS
SELECT
    a.MANV AS "Mã nhân viên",
    a.HO AS "Họ",
    a.TEN AS "Tên",
    a.PHONGBAN AS "Phòng ban",
    b.TongLuongNhan AS "Lương"
FROM
    NHANVIEN a
    INNER JOIN BANGLUONG b ON a.MANV = b.MANV
WHERE
    a.PHONGBAN IN ('AI', 'IT', 'HR')
GROUP BY
    a.MANV, a.HO, a.TEN, a.PHONGBAN, b.TongLuongNhan