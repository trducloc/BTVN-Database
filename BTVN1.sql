/* 1. Tạo một bảng mới có tên “Product” với các trường: “product_id” , “product_name” (varchar), “price” (double) và “quantity” (int).*/

CREATE TABLE Product (
    product_id int,
    product_name varchar(50),
    price double,
    quantity int
);

/*2. Thêm 10 sản phẩm vào bảng “Product” với thông tin sản phẩm bất kỳ.*/

SELECT * FROM sakila.Product;
INSERT INTO Product(product_id, product_name, price, quantity)
VALUES (1, 'Sach Giai Tich', 5000, 4),
	   (2, 'Sach Lich Su', 3000, 2),
	   (3, 'Sach Toan', 7000, 7),
	   (4, 'Sach Van Hoc', 8000, 12),
	   (5, 'Sach Hoa Hoc', 9000, 6),
	   (6, 'Sach Dia Ly', 1000, 1),
	   (7, 'Sach Giai', 2000, 20),
	   (8, 'Sach GDCD', 3000, 6),
	   (9, 'Sach Tham Khao', 5000, 4),
	   (10, 'Truyen Conan', 16000, 15);
    
/*3. Thêm một trường “description” (varchar) vào bảng “Product” sau khi đã tạo bảng.*/

ALTER TABLE Product
ADD description VARCHAR(100);

/*4. Cập nhật giá (price) của sản phẩm có “product_id” là 1 thành 99.*/

SET SQL_SAFE_UPDATES = 0;

UPDATE Product 
SET price = 99
WHERE product_id = 1;

/*5. Tăng giá của sản phẩm có “product_id” là 2 lên 10%.*/

UPDATE Product 
SET price = price + (price * 0.1)
WHERE product_id = 2;

/*--------------------------------------*/
SELECT * FROM sakila.Person;

/*6. Cập nhật tên của người có id là 10 thành “John Doe”.*/

UPDATE Person
SET fullname = 'John Doe'
WHERE id = 10;

/*7. Đổi quốc gia của người có id là 3 thành “Canada”.*/

UPDATE Person 
SET country = 'Canada'
WHERE id = 3;

/*8. Sửa ngày sinh của người có id là 7 thành “1990-05-15” và quốc gia thành Việt Nam.*/

UPDATE Person 
SET birthday = '1990-05-15', country = "Việt Nam"
WHERE id = 7;

/*9. Tăng mức lương của người có id là 40 lên 10%. */

UPDATE Person 
SET salary = salary + (salary * 0.1)
WHERE id = 40;

/*10. Giảm lương của những người nào có mức lương trên 6000 xuống 15%*/

UPDATE Person 
SET salary = salary - (salary * 0.15)
WHERE salary > 6000;
