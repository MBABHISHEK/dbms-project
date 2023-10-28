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