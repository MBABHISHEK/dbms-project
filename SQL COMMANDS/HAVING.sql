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