-- 1.Tìm địa chỉ có chứa từ ‘San’ .
SELECT * FROM Person WHERE country LIKE '%San%';

-- 2. Tìm địa chỉ bắt đầu bằng ‘1’ và kết thúc bằng ‘y’
SELECT * FROM Person WHERE country LIKE '1%y';
 
-- 3. Tìm địa chỉ chứa chữ ‘a’ vị trí thứ 3
SELECT * FROM Person WHERE SUBSTRING(country, 3, 1) = 'a';

-- 4. Tìm tên khách hàng có địa chỉ bằng có kết thúc chữ ‘o’
SELECT fullname FROM Person WHERE country LIKE '%o';

-- 5. Tìm tên bộ phim có chứa category = ‘Games’;
SELECT film.title, category.name FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
WHERE category.name LIKE '%Games%';

-- 6. Từ bảng Person tìm nhân viên lương trong khoảng 2000 đến 300 (sử dụng between)
SELECT * FROM Person WHERE salary BETWEEN 2000 AND 300;

-- 7. Từ bảng Person tìm nhân viên sinh tháng 7 đến tháng 12. (sử dụng between)
SELECT * FROM Person 
WHERE MONTH(birthday) BETWEEN 7 AND 12;

-- 8. Lấy danh sách những người có sinh nhật trong tháng này và hiện thị thông tin “Happy birthday”!
SELECT fullname, birthday,
CASE
    WHEN MONTH(birthday) = MONTH(now()) THEN 'Happy birthday!'
    ELSE ''
END AS birthday_wish
FROM Person
WHERE MONTH(birthday) = MONTH(now());

-- 9. Tìm tất cả những có năm sinh 2000, 1990, 1991 bảng Person.
SELECT * FROM Person 
WHERE year(birthday) IN (2000, 1990, 1991);
