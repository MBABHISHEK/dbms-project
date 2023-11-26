CREATE TRIGGER update_book_count
 AFTER INSERT ON books
 FOR EACH ROW
 UPDATE Department
 SET total_books=total_books-1
 where department.subject_id=(
 SELECT subject_id FROM books where book_id=NEW.book_id);

DELIMITER //
CREATE TRIGGER UpdateFineAmountOnLateReturn
AFTER UPDATE ON Issue
FOR EACH ROW
BEGIN
    DECLARE fine_amount INT;
    SET fine_amount = DATEDIFF(NEW.return_date, NEW.due_date) * 10;
	UPDATE Fine
    SET fine_amount = fine_amount
    WHERE issue_id = NEW.issue_id;
END;
//
DELIMITER ;
