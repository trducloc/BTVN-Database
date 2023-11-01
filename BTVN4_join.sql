CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255),
    student_age INT
);

-- Thêm dữ liệu vào bảng "Students"
INSERT INTO Students (student_id, student_name, student_age)
VALUES
    (1, 'Nguyen Van A', 20),
    (2, 'Tran Thi B', 22),
    (3, 'Le Van C', 21),
    (4, 'Pham Anh D', 23),
    (5, 'Hoang Thi E', 19),
    (6, 'Do Van F', 20),
    (7, 'Nguyen Thi G', 22),
    (8, 'Tran Van H', 21),
    (9, 'Le Van I', 24),
    (10, 'Pham Van K', 20);
    
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    course_description TEXT
);

-- Thêm dữ liệu vào bảng "Courses" (15 bản ghi)
INSERT INTO Courses (course_id, course_name, course_description)
VALUES
    (1, 'Math 101', 'Introduction to Mathematics'),
    (2, 'History 101', 'Introduction to World History'),
    (3, 'English 101', 'Basic English Language Skills'),
    (4, 'Science 101', 'General Science Course'),
    (5, 'Programming 101', 'Introduction to Programming'),
    (6, 'Art 101', 'Introduction to Art History'),
    (7, 'Music 101', 'Introduction to Music Theory'),
    (8, 'Biology 101', 'Introduction to Biology'),
    (9, 'Chemistry 101', 'Introduction to Chemistry'),
    (10, 'Physics 101', 'Introduction to Physics'),
    (11, 'Economics 101', 'Principles of Economics'),
    (12, 'Psychology 101', 'Introduction to Psychology'),
    (13, 'Sociology 101', 'Introduction to Sociology'),
    (14, 'Geography 101', 'Introduction to Geography'),
    (15, 'Political Science 101', 'Introduction to Political Science');

    
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Thêm dữ liệu vào bảng "Enrollments" (10 bản ghi)
-- Chú ý: Dữ liệu sau đây chỉ là ví dụ và có thể thay đổi theo nhu cầu của bạn.
INSERT INTO Enrollments (enrollment_id, student_id, course_id)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5),
    (6, 6, 6),
    (7, 7, 7),
    (8, 8, 8),
    (9, 9, 9),
    (10, 10, 10);
    
-- 1: Lấy danh sách tất cả sinh viên và thông tin khóa học mà họ đã đăng ký.
    
SELECT Students.student_name, Courses.course_name
FROM Students
INNER JOIN Enrollments ON Students.student_id = Enrollments.student_id
INNER JOIN Courses ON Enrollments.course_id = Courses.course_id;

    
-- 2: Lấy tên của tất cả các khóa học mà một sinh viên cụ thể đã đăng ký (sử dụng tham số student_id).

SELECT Courses.course_name
FROM Courses
JOIN Enrollments ON Courses.course_id = Enrollments.course_id
WHERE Enrollments.student_id = 1;

-- 3: Lấy danh sách tất cả sinh viên và số lượng khóa học mà họ đã đăng ký.

SELECT Students.student_name, COUNT(Enrollments.course_id) AS course_count
FROM Students
LEFT JOIN Enrollments ON Students.student_id = Enrollments.student_id
GROUP BY Students.student_name;

-- 4: Lấy tất cả các khóa học mà chưa có sinh viên nào đăng ký.

SELECT Courses.course_name
FROM Courses
LEFT JOIN Enrollments ON Courses.course_id = Enrollments.course_id
WHERE Enrollments.course_id IS NULL;

-- 5: Lấy tất cả sinh viên và thông tin khóa học mà họ đã đăng ký, sắp xếp theo tên sinh viên và tên khóa học.

SELECT Students.student_name, Courses.course_name
FROM Students
INNER JOIN Enrollments ON Students.student_id = Enrollments.student_id
INNER JOIN Courses ON Enrollments.course_id = Courses.course_id
ORDER BY Students.student_name, Courses.course_name;

-- 6: Lấy tất cả các sinh viên và thông tin của họ, cùng với tên khóa học mà họ đăng ký (nếu có).

SELECT Students.student_name, Students.student_age, Courses.course_name
FROM Students
LEFT JOIN Enrollments ON Students.student_id = Enrollments.student_id
LEFT JOIN Courses ON Enrollments.course_id = Courses.course_id;

-- 7: Lấy danh sách tất cả sinh viên và thông tin của họ, cùng với tên khóa học mà họ đăng ký (nếu có). Sắp xếp theo tên sinh viên và tuổi từ cao xuống thấp.

SELECT Students.student_name, Students.student_age, Courses.course_name
FROM Students
LEFT JOIN Enrollments ON Students.student_id = Enrollments.student_id
LEFT JOIN Courses ON Enrollments.course_id = Courses.course_id
ORDER BY Students.student_name, Students.student_age DESC;

-- 8: Lấy tất cả các khóa học và số lượng sinh viên đã đăng ký vào mỗi khóa học.

SELECT Courses.course_name, COUNT(Enrollments.student_id) AS student_count
FROM Courses
LEFT JOIN Enrollments ON Courses.course_id = Enrollments.course_id
GROUP BY Courses.course_name;






