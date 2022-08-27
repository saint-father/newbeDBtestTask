# newbeDBtestTask



Имеется три таблицы:

users
|id|first_name|last_name|age|
| --- | --- | --- | --- |
|1|Ivan|Ivanov|18|
|2|Marina|Ivanova|14|


books
|id|name|author|
| --- | --- | --- |
|1|Romeo and Juliet|William Shakespeare|
|2|War and Peace|Leo Tolstoy|


user_books
|id|user_id|book_id|
| --- | --- | --- |
|1|1|2|
|2|2|1|


Необходимо написать запрос выборки данных из представленных таблиц, который найдет и выведет всех посетителей библиотеки, возраст которых попадает в диапазон от 7 и до 17 лет, а также которые  взяли только две книги и все книги, которые у них на руках, одного и того же автора.
Формат вывода:
ID, Name (first_name  last_name), Author, Books (Book 1, Book 2, ...) 
1; Ivan Ivanov; Leo Tolstoy; Book 1, Book 2

