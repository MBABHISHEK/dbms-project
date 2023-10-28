SELECT *FROM Books
WHERE Book_id IN (SELECT Book_id FROM Borrows WHERE Member_id = 'STU001');
    
SELECT eBook_title FROM Ebooks WHERE ratings_value = (SELECT MAX(ratings_value) FROM Ebooks);

SELECT eBook_title AS MAX_rating
FROM Ebooks
WHERE ratings_value = (SELECT MAX(ratings_value) FROM Ebooks);

SELECT *FROM  Department
WHERE subject_id IN (
SELECT DISTINCT categorised
FROM Books INNER JOIN Department
ON Books.categorised = Department.subject_id);
 
