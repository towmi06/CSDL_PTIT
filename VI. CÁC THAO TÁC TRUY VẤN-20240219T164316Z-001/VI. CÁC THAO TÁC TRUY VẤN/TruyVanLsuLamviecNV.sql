-- Thêm lịch sử làm việc cho nhân viên mới
INSERT INTO LichSuLamViec (MALS, MANV, HO, TEN, NGAYTUYENDUNG, NGAYNGHIVIEC, CHUCVU, MAPB, TENPB)
VALUES
    ('LS2012', NULL, 'Pham Van', 'Manh', '2023-12-25', NULL, 'Thưc tâp', 'HR', 'Human');

--Sửa ngày tuyển dụng
UPDATE LichSuLamViec
SET NGAYTUYENDUNG = CASE 
    WHEN HO = N'Pham Van' AND TEN = N'Manh' THEN '2021-10-15'
    ELSE NGAYTUYENDUNG
END;

--Sửa ngày nghỉ việc
UPDATE LichSuLamViec
SET NGAYNGHIVIEC = CASE 
    WHEN HO = N'Pham Van' AND TEN = N'Manh' THEN '2023-12-25'
    ELSE NGAYNGHIVIEC
END;
