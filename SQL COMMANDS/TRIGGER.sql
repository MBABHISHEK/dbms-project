CREATE TRIGGER update_book_count
 AFTER INSERT ON books
 FOR EACH ROW
 UPDATE Department
 SET total_books=total_books-1
 where department.subject_id=(
 SELECT subject_id FROM books where book_id=NEW.book_id);
