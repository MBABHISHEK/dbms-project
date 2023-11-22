SELECT Member_id,first_name as name
FROM Members 
WHERE NOT EXISTS(SELECT *FROM Borrows WHERE Members.Member_id = Borrows.Member_id);


SELECT Member_id,first_name,last_name
FROM Members
WHERE NOT EXISTS ((SELECT member_id FROM Access WHERE Members.member_id = Access.Member_id) 
EXCEPT (SELECT Member_id FROM Members WHERE first_name = "john"));
