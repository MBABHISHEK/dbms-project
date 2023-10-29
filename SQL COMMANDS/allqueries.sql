use library_database;
SELECT Books.Book_title, Department.Dname
FROM Books
INNER JOIN Department ON Books.categorised = Department.subject_id;


SELECT Members.first_name, Members.last_name, Fine.fine_amount, Fine.fine_description
FROM Fine
INNER JOIN Members ON Fine.Member_id = Members.Member_id
WHERE Fine.fine_paid = 0;
    
    
insert into borrows values(1006,'STU001',15);
SELECT *
FROM Books
WHERE Book_id IN (SELECT Book_id FROM Borrows WHERE Member_id = 'STU001');
    
    
SELECT Members.first_name, Members.last_name, Books.Book_title
FROM Members
LEFT JOIN Borrows ON Members.Member_id = Borrows.Member_id
LEFT JOIN Books ON Borrows.Book_id = Books.Book_id;
    
SELECT Members.first_name, Members.last_name, Books.Book_title
FROM Members
RIGHT JOIN Borrows ON Members.Member_id = Borrows.Member_id
RIGHT JOIN Books ON Borrows.Book_id = Books.Book_id;


SELECT staff_id FROM staff WHERE designation ='Systems_Librarian';

insert into login values(9,'Aditya','verma','2023-10-28','reading','02:30:45','03:00:00','ISE');

SELECT COUNT(*) AS num_users
FROM Login
WHERE t_date = '2023-10-27';
    
SELECT COUNT(*) AS num_users
FROM Login
WHERE t_date = '2023-10-24';

UPDATE Fine
set fine_paid = 1
where Fine_id = 504;

SELECT *FROM  Department
WHERE subject_id IN (
SELECT DISTINCT categorised
FROM Books INNER JOIN Department
ON Books.categorised = Department.subject_id);

SELECT eBook_title FROM Ebooks WHERE ratings_value = (SELECT MAX(ratings_value) FROM Ebooks);

SELECT eBook_title AS MAX_rating
FROM Ebooks
WHERE ratings_value = (SELECT MAX(ratings_value) FROM Ebooks);

SELECT SUM(fine_amount) AS total_fine_amount
FROM Fine;

DELETE FROM MEMBERS WHERE first_name = "Vivek";

SELECT first_name,last_name,designation AS staff_who_joined_between_1990_and_2010
FROM staff
WHERE joining_year between 1990 and 2010;

SELECT * FROM Login 
WHERE DATE_FORMAT(t_date, '%Y-%m-%d') LIKE '2023-10%';
 
SELECT eBook_id, eBook_title
FROM EBooks
WHERE eBook_title LIKE '%Database%';

SELECT * FROM Login
WHERE DATE_FORMAT(t_date, '%Y-%m-%d') LIKE '2023-10-25';

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

SELECT fine_description,SUM(fine_amount) AS total_amount
FROM fine
WHERE fine_date!='2023-10-19'
GROUP BY fine_description
HAVING SUM(fine_amount)>50
ORDER BY total_amount DESC;

SELECT designation,COUNT(*) AS total_members
FROM staff
GROUP BY designation
HAVING COUNT(*)>1;

SELECT fine_description,SUM(fine_amount) AS total_amount
FROM fine
WHERE fine_date!='2023-10-17'
GROUP BY fine_description
HAVING SUM(fine_amount)>50
ORDER BY total_amount DESC;

SELECT visit,COUNT(*) AS number_of_visitors
FROM Login
GROUP BY visit;
    
SELECT visit,COUNT(*) AS number_of_visitors
FROM Login
GROUP BY visit
ORDER BY number_of_visitors;

SELECT member_id,COUNT(*) AS no_of_books_taken
FROM borrows
GROUP BY member_id
ORDER BY no_of_books_taken;

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
