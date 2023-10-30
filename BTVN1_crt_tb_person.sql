/* Tạo 1 bảng Person với các thông tin sau:
	id: kiểu số nguyên,
	fullname: chữ,
	job: chữ,
	birthday: ngày/tháng/năm,
	salary: kiểu số,
	address: chữ. */

CREATE TABLE Person (
    id int,
    fullname text,
    job text,
    birthday date,
    salary double,
    addresss text
);

SELECT * FROM Person;        

-- Thêm 10 bản ghi vào bảng trên.        
INSERT INTO Person (fullname, job, birthday, salary, address)
VALUES
    (1,'John Doe', 'Engineer', '1990-03-15', 75000, '123 Main St'),
    (2,'Jane Smith', 'Manager', '1985-06-20', 85000, '456 Elm St'),
    (3,'Alice Johnson', 'Designer', '1995-01-10', 65000, '789 Oak St'),
    (4,'Bob Williams', 'Developer', '1988-11-05', 70000, '101 Pine St'),
    (5,'Mary Brown', 'Accountant', '1992-09-25', 78000, '202 Cedar St'),
    (6,'Michael Lee', 'Doctor', '1980-04-30', 95000, '303 Birch St'),
    (7,'Sarah Davis', 'Teacher', '1993-07-12', 60000, '404 Spruce St'),
    (8,'David Wilson', 'Lawyer', '1986-02-28', 90000, '505 Redwood St'),
    (9,'Laura Clark', 'Nurse', '1991-08-15', 72000, '606 Maple St'),
    (10,'Kevin Turner', 'Chef', '1987-12-10', 68000, '707 Walnut St');


