SELECT author,eBook_title
FROM ebooks
WHERE ratings_value > 3
UNION
SELECT Book_author, Book_title
FROM books;

SELECT Book_title,Book_edition
FROM books
WHERE categorised = 'CS001'
UNION
SELECT Sname , Dname
FROM department
WHERE total_books ='10';

SELECT first_name, last_name
FROM Staff
WHERE staff_id NOT IN (
SELECT registeredby
FROM Members
);

SELECT Book_title,Book_author
FROM books
WHERE Book_id NOT IN(
SELECT Book_id FROM borrows);