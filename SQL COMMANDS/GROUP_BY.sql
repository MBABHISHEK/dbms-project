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