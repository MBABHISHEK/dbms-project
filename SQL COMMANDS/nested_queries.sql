SELECT *FROM Books
WHERE Book_id IN (SELECT Book_id FROM Borrows WHERE Member_id = 'STU001');

SELECT eBook_title AS MAX_rating
FROM Ebooks
WHERE ratings_value = (SELECT MAX(ratings_value) FROM Ebooks);

SELECT *FROM  Department
WHERE subject_id IN (
SELECT DISTINCT categorised
FROM Books INNER JOIN Department
ON Books.categorised = Department.subject_id);

SELECT first_name,last_name
FROM Members
WHERE member_id IN(SELECT member_id FROM Fine WHERE fine_paid = True);

INSERT INTO borrows VALUES(1000,'STU006',5);
SELECT first_name,last_name
FROM Members
WHERE member_id IN(SELECT Member_id FROM borrows WHERE book_id = 5);

SELECT Books.Book_title, Department.Dname
FROM Books
INNER JOIN Department ON Books.categorised = Department.subject_id;


SELECT Members.first_name, Members.last_name, Fine.fine_amount, Fine.fine_description
FROM Fine
INNER JOIN Members ON Fine.Member_id = Members.Member_id
WHERE Fine.fine_paid = 0;
    
SELECT Members.first_name, Members.last_name, Books.Book_title
FROM Members
LEFT JOIN Borrows ON Members.Member_id = Borrows.Member_id
LEFT JOIN Books ON Borrows.Book_id = Books.Book_id;
    





 
