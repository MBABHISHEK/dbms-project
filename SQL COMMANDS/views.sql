CREATE view FINEPAIDMEMBERS AS
SELECT Members.first_name, Members.last_name, Fine.fine_amount, Fine.fine_description
FROM Fine
INNER JOIN Members ON Fine.Member_id = Members.Member_id
WHERE Fine.fine_paid = 0;

select * from FINEPAIDMEMBERS;
