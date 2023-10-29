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
    
SELECT Members.first_name, Members.last_name, Books.Book_title
FROM Members
RIGHT JOIN Borrows ON Members.Member_id = Borrows.Member_id
RIGHT JOIN Books ON Borrows.Book_id = Books.Book_id;



