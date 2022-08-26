SET @min_age = 7, @max_age = 17, @books_count = 2;
select u.id, concat(u.first_name, ' ', u.last_name), ubc.author, ubc.book_names
from (
	select count(cub.book_id) count_books, cub.user_id, cb.author, GROUP_CONCAT(distinct cb.name SEPARATOR ', ') book_names
    from (
		select ub.user_id, ub.book_id
		from user_books ub 
		join users cu on cu.id = ub.user_id
		where cu.age between @min_age and @max_age
    ) cub
    join books cb on cb.id = cub.book_id 
    group by cub.user_id, cb.author
    having count_books = @books_count
) ubc
join users u on u.id = ubc.user_id;