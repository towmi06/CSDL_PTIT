CREATE TABLE PhongBan (
    MaPB CHAR(10) PRIMARY KEY NOT NULL,
    TenPB NVARCHAR(50) NOT NULL,
    Leader CHAR(5),
    SoLuong INT NOT NULL,
); 

INSERT INTO PhongBan (MaPB, TenPB, Leader, SoLuong)
VALUES
    ('HR', 'Human', N'NV001',3),
    ('TK', 'Design', N'NV002',1),
    ('TT', 'Media',N'NV003',2), 
    ('IT', 'IT', N'NV004',2), 
    ('AI', 'AI', N'NV005',1), 
    ('KD', 'Bussines', 'NV006',1), 
    ('KT', 'Acounting', 'NV007',1); 