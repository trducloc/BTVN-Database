-- 1. Tính số lượng bản ghi ở bảng actor
SELECT COUNT(*) AS total_actors
FROM actor;

-- 2. Xác định thời lượng dài nhất và ngắn nhất của các bộ phim trong bảng film
SELECT 
  MAX(length) AS max_duration,
  MIN(length) AS min_duration
FROM film;

-- 3. Có bao nhiêu bộ phim có rating = R ?
SELECT COUNT(*) AS total_rated_R_movies
FROM film
WHERE rating = 'R';

-- 4. Trung bình rental_rate của các bộ phim dài hơn 60 phút ?
SELECT AVG(rental_rate) AS avg_rental_rate
FROM film
WHERE length > 60;

