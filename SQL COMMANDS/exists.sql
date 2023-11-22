select * from issue where exists (
select 1 from Fine where issue.issue_id=fine.issue_id );

