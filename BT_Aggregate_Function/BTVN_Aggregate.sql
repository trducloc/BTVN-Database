-- 1.Lấy danh sách tên các diễn viên (actors) có họ bắt đầu bằng chữ “S”.
select actor.first_name from actor
where first_name like 'S%';

-- 2.Lấy danh sách các bộ phim (films) được phát hành trong khoảng từ năm 2000 đến năm 2010.
select film.* from film
where release_year between 2000 and 2010;

-- 3.Lấy danh sách các bộ phim (films) có rating là “PG” hoặc “PG-13”.
select * from film
where rating = 'PG' or rating = 'PG-13';

-- 4.Lấy danh sách diễn viên (actors) và số lượng bộ phim (films) mà họ tham gia, sắp xếp theo số lượng bộ phim giảm dần.
select actor.*, count(*)
 from film_actor
inner join actor on actor.actor_id = film_actor.actor_id
group by actor_id;

-- 5.Lấy danh sách các bộ phim (films) và thể loại (categories) của chúng.
select film.*, category.name as category_name
from film
inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id;

-- 6.Lấy danh sách các bộ phim (films) và tổng số diễn viên (actors) tham gia trong mỗi bộ phim, sắp xếp theo tổng số diễn viên giảm dần.
select film.*, (
    select COUNT(*)
    from film_actor
    where film_actor.film_id = film.film_id
) as total_actors
from film
order by total_actors desc;

-- 7.Lấy danh sách các diễn viên (actors) có số lượng bộ phim (films) tham gia lớn hơn 30.
select actor.* , count(*)
 as num_of_movies from actor
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film on film_actor.film_id = film.film_id
group by actor_id
having num_of_movies > 30;

-- 8.Lấy danh sách các diễn viên (actors) không tham gia trong bất kỳ bộ phim nào.
select actor.* , count(*)
 as num_of_movies from actor
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film on film_actor.film_id = film.film_id
group by actor_id
having num_of_movies = 0;

-- 9.Lấy danh sách bộ phim (films) và tổng doanh thu (revenue) của từng bộ phim, sắp xếp theo tổng doanh thu giảm dần.
select film_id, title, SUM(rental_duration * rental_rate) as revenue 
from film
group by film_id, title
order by revenue desc;

-- 10.Lấy danh sách các bộ phim (films) và thể loại (categories) của chúng, với điều kiện mỗi bộ phim thuộc thể loại “Horror”.
select f.film_id, f.title, f.description, c.name
from film f
inner join film_category fc
on f.film_id = fc.film_id
inner join category c
on c.category_id = fc.category_id
where c.name = 'Horror';