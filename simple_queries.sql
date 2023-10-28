SELECT staff_id FROM staff WHERE designation ='Systems_Librarian';

insert into login values(9,'Aditya','verma','2023-10-28','reading','02:30:45','03:00:00','ISE');

insert into borrows values(1006,'STU001',15);

SELECT COUNT(*) AS num_users
FROM Login
WHERE t_date = '2023-10-24';

SELECT COUNT(*) AS num_users
FROM Login
WHERE t_date = '2023-10-27';
 
UPDATE Fine
set fine_paid = 1
where Fine_id = 504;

SELECT SUM(fine_amount) AS total_fine_amount
FROM Fine;

DELETE FROM MEMBERS WHERE first_name = "Vivek";
