select * from issue where exists (
select 1 from Fine where issue.issue_id=fine.issue_id );

SELECT  member_id,first_name as name
FROM members
WHERE EXISTS (SELECT * FROM borrows where borrows.member_id= members.member_id)
AND 
EXISTS (SELECT * FROM fine where Fine.member_id= members.member_id);

