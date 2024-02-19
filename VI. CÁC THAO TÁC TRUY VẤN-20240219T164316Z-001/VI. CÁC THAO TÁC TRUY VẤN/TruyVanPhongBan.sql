-- Thêm số lượng phòng ban
UPDATE PhongBan
SET SoLuong = SoLuong + 1
WHERE MaPB = 'AI';
-- Thay đổi leader của phòng ban
UPDATE PhongBan
SET Leader = 'NV008' -- Thay đổi thành mã nhân viên mới
WHERE MaPB = 'TK';

-- Xóa nhân viên khỏi phòng ban
DELETE FROM PhongBan
WHERE MaPB = 'HR' 
