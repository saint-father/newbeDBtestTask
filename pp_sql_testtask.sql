SELECT users.id AS id, concat(users.first_name,' ‘,users.last_name) AS name, books.author AS author, GROUP_CONCAT(books.name SEPARATOR ‘,’) AS books
FROM users
LEFT JOIN user_books ON users.id = user_books.user_id
LEFT JOIN books ON user_books.book_id = books.id
WHERE age BETWEEN 7 AND 17
GROUP BY users.id
HAVING COUNT(user_books.book_id) = 2 AND COUNT(DISTINCT(books.author)) = 1;
