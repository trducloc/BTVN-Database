-- 1. Tạo các bảng tbl_sinhvien (id, ten, tuoi, gioiTinh, maLop)
CREATE TABLE tbl_sinhvien (
    id int,
    ten varchar(50),
   gioiTinh varchar(20),
      tuoi int,
   maLop int
)

SELECT * FROM tbl_sinhvien;


-- 2. Tạo các bảng tbl_giaovien (id, ten, tuoi, gioiTinh, soNamKN)
CREATE TABLE tbl_giaovien (
    id int,
    ten varchar(50),
    tuoi int,
    gioiTinh varchar(20),
    soNamKN int
)

SELECT * FROM tbl_giaovien;


-- 3. Tạo các bảng tbl_diem (id, maSV, diemToan, diemLy, diemHoa)
CREATE TABLE tbl_diem (
    id int,
    maSV int,
    diemToan int,
    diemLy int,
    diemHoa int
)

SELECT * FROM tbl_diem;


-- 4. Thêm data vào các bảng, mỗi bảng 10 records
INSERT INTO tbl_sinhvien (id, ten, tuoi, gioiTinh, maLop)
VALUES (1, 'Tran Duc Loc', 22, 'Male', 22),
	(2, 'Doan Son Tung', 27, 'Male', 21),
	(3, 'Pham The Hien', 22, 'Male', 24),
	(4, 'Truong Van Tuyen', 24, 'Male', 10),
	(5, 'Nguyen Tan Dung', 20, 'Male', 8),
	(6, 'Nguyen Duc Anh', 19, 'Male', 5),
	(7, 'Bien Ngoc Hoa', 29, 'Female', 13),
	(8, 'Dam Van Bao', 17, 'Male', 7),
	(9, 'Bui Ba Truong', 27, 'Male', 22),
	(10, 'Ngo Truong', 30, 'Male', 19);

INSERT INTO tbl_giaovien (id, ten, tuoi, gioiTinh, soNamKN)
VALUES (1, ' Ngo Truong', 30, 'Male', 8),
		(2, 'Bui Ba Truong', 27, 'Male', 5),
		(3, 'Nguyen Van Thuan', 25, 'Male', 3),
		(4, 'Nguyen Thi Linh', 40, 'Female', 15),
		(5, 'Tran Duc Loc', 25, 'Male', 2),
		(6, 'Cao Van Hao', 50, 'Male', 25),
		(7, 'Nguyen Thi Phuong', 32, 'Female', 11),
		(8, 'Tran Ngoc Han', 28, 'Female', 12),
		(9, 'Pham Sy Hung', 45, 'Male', 22),
		(10, 'Nguyen Duc Tung', 60, 'Male', 38);

INSERT INTO tbl_diem (id, maSV, diemToan, diemLy, diemHoa)
VALUES (1, 1, 8, 9, 3),
		(2, 2, 7, 6, 7),
		(3, 3, 6, 5, 6),
		(4, 4, 5, 9, 5),
		(5, 5, 9, 8, 10),
		(6, 6, 10, 6, 7),
		(7, 7, 9, 3, 7),
		(8, 8, 8, 8, 8),
		(9, 9, 6, 7, 10),
		(10, 10, 2, 5, 9);

-- 5. Tiến hành thực hành, thay đổi cấu trúc bảng bằng alter, update ,v…v… bằng các kiến thức đã học.

-- Thêm trường “chuyenMon” (varchar) vào bảng tbl_giaovien
ALTER TABLE tbl_giaovien
ADD chuyenMon VARCHAR(150);

-- Tăng điểm Toán của sinh viên có id là 4 lên 50% trong bảng tbl_diem
SET SQL_SAFE_UPDATES = 0;

UPDATE tbl_diem 
SET diemToan = diemToan + (diemToan * 0.5)
WHERE id = 4;


-- Thêm trường “diaChi” (varchar) vào bảng tbl_sinhvien
ALTER TABLE tbl_sinhvien
ADD diaChi VARCHAR(255);

-- Xóa trường “diaChi” đã thêm ở bảng tbl_sinhvien
ALTER TABLE tbl_sinhvien
DROP diaChi;

-- Cập nhật điểm Hóa của sinh viên có maSV = 9 thành 4 điểm trong bảng tbl_diem
UPDATE tbl_diem
SET diemHoa = 4
WHERE maSV = 9;

-- Xóa sinh viên có maSV = 1 trong bảng tbl_sinhvien
DELETE FROM tbl_sinhvien 
WHERE id = 6;

