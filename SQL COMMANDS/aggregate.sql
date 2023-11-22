SELECT fine_description,SUM(fine_amount) AS total_amount
FROM fine
WHERE fine_date!='2023-10-17'
GROUP BY fine_description
HAVING SUM(fine_amount)>50
ORDER BY total_amount DESC;


SELECT eBook_title AS MAX_rating
FROM Ebooks
WHERE ratings_value = (SELECT MAX(ratings_value) FROM Ebooks);



SELECT Fine_id,issue_id,Member_id FROM fine 
where fine_amount<(
select avg(fine_amount) from fine);



SELECT member_id,COUNT(*) AS no_of_books_taken
FROM borrows
GROUP BY member_id
ORDER BY no_of_books_taken;
