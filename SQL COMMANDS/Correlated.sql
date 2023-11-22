SELECT Fine_id,issue_id,Member_id FROM fine 
where fine_amount<(
select avg(fine_amount) from fine);
