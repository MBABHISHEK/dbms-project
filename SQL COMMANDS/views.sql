CREATE view FINEPAIDMEMBERS AS
SELECT Members.first_name, Members.last_name, Fine.fine_amount, Fine.fine_description
FROM Fine
INNER JOIN Members ON Fine.Member_id = Members.Member_id
WHERE Fine.fine_paid = 0;

select * from FINEPAIDMEMBERS;


CREATE view LoginMembersOnAday AS
SELECT COUNT(*) AS num_users
FROM Login
WHERE t_date = '2023-10-24';

select * from LoginMembersOnAday;
