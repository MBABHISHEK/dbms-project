DELIMITER //
CREATE PROCEDURE CalculateTotalFineForAllMembers(OUT total_fine DECIMAL(10,2))
BEGIN
    SELECT SUM(fine_amount) INTO total_fine
    FROM Fine
    WHERE fine_paid = 0;
END //
DELIMITER ;

CALL CalculateTotalFineForAllMembers(@total_fine);
SELECT @total_fine AS TotalFineForAllMembers;


DELIMITER //
CREATE PROCEDURE AddMember(
    IN p_Member_id VARCHAR(10),
    IN p_first_name VARCHAR(20),
    IN p_last_name VARCHAR(20),
    IN p_email VARCHAR(20),
    IN p_phone_no BIGINT,
    IN p_address TEXT,
    IN p_next_renewal DATE,
    IN p_login_id INT,
    IN p_registeredby VARCHAR(10)
)
BEGIN
    INSERT INTO Members (Member_id, first_name, last_name, email, phone_no, address, next_renewal, login_id, registeredby)
    VALUES (p_Member_id, p_first_name, p_last_name, p_email, p_phone_no, p_address, p_next_renewal, p_login_id, p_registeredby);
END //
DELIMITER ;

CALL AddMember ('STU006','john','samuel','john@gmail.com',6478576879,'vijayanagar','2025-10-23',6,'LIDLI004');
