use library1;

INSERT INTO department(subject_id, Sname, Department_id, Dname, total_books, shelf_no)
VALUES
    ('CS001', 'DATABASE MANAGEMENT SYSTEMS', 1, 'CSE', 1, 1),
    ('ME005', 'BASIC MECHANICAL ENGINEERING', 2, 'ME', 1, 4),
    ('EE108', 'ELECTRICAL ENGINEERING FUNDAMENTALS', 3, 'EEE', 1, 6),
    ('CS112', 'THEORY OF COMPUTATION', 1, 'CSE', 1, 2),
    ('CS009', 'MACHINE LEARNING', 1, 'CSE', 1, 3),
    ('ME101', 'MECHATRONICS', 2, 'ME', 1, 5),
    ('EE112', 'SIGNAL AND SYSTEMS', 3, 'EEE', 1, 7),
    ('CV111', 'CIVIL ENGINEERING:CONVENTIONAL AND OBJECTIVE', 4, 'CIVIL', 1, 8),
    ('CV231', 'ESTIMATING AND COSTING IN CIVIL ENGINEERING', 4, 'CIVIL', 1, 9),
    ('IS109', 'INFORMATION TECHNOLOGY', 5, 'ISE', 1, 10),
    ('IS222', 'DESIGNING DATA-INTENSIVE APPLICATIONS', 5, 'ISE', 1, 11),
    ('PS004', 'POLYMER SCIENCE AND TECHNOLOGY', 6, 'PSE', 1, 12),
    ('PS013', 'POLYMERIZATION', 6, 'PSE', 1, 13),
    ('EC118', 'ELECTRONICS FUNDAMENTALS AND APPLICATIONS', 7, 'ECE', 1, 14),
    ('EC222', 'PRACTICAL ELECTRONICS FOR INVENTORS', 7, 'ECE', 1, 15);

describe department;

INSERT INTO books (Book_id,Book_title,Book_author,Book_edition,categorised)
VALUES
    (1, 'FUNDAMENTALS OF DATABASE SYSTEMS', 'Navathe', 7, 'CS001'),
    (2, 'BASIC MECHANICAL ENGINEERING', 'JK GUPTA', 6, 'ME005'),
    (3, 'ELECTRICAL ENGINEERING FUNDAMENTALS', 'Andrew S Tanenbaum', 2, 'EE108'),
    (4, 'THEORY OF COMPUTATION', 'Michael Sipser', 2, 'CS112'),
    (5, 'MACHINE LEARNING', 'Richard O Duda', 2, 'CS009'),
    (6, 'MECHATRONICS', 'W Bolton', 5, 'ME101'),
    (7, 'SIGNAL AND SYSTEMS', 'Alan V Oppnenheim', 4, 'EE112'),
    (8, 'CIVIL ENGINEERING:CONVENTIONAL AND OBJECTIVE', 'JK GUPTA', 6, 'CV111'),
    (9, 'ESTIMATING AND COSTING IN CIVIL ENGINEERING', 'B.N DUTTA', 4, 'CV231'),
    (10, 'INFORMATION TECHNOLOGY', 'SUMITA ARORA', 3, 'IS109'),
    (11, 'DESIGNING DATA-INTENSIVE APPLICATIONS', 'Martin Kleppmann', 6, 'IS222'),
    (12, 'POLYMER SCIENCE AND TECHNOLOGY', 'Anshu Srivastav', 5, 'PS004'),
    (13, 'POLYMERIZATION', 'Santosh K Gupta', 4, 'PS013'),
    (14, 'ELECTRONICS FUNDAMENTALS AND APPLICATIONS', 'D Chattopadhyay', 3, 'EC118'),
    (15, 'PRATICAL ELECTRONICS FOR INVENTORS', 'JB GUPTA', 6, 'EC222');

INSERT INTO EBooks (ebook_id, eBook_title, author,category,url, ratings_value,format)
VALUES
    (1, 'FUNDAMENTALS OF DATABASE SYSTEMS', 'Navathe', 'CS001', 'http://127.0.1:db.html', 5, 'PDF'),
    (2, 'BASIC MECHANICAL ENGINEERING', 'Abraham Silbershatz', 'ME005', 'https://www.academia.edu', 4, 'PDF'),
    (3, 'ELECTRICAL ENGINEERING FUNDAMENTALS', 'Andrew S Tanenbaum', 'EE108', 'https://csc-knu.github.io', 3, 'PDF'),
    (4, 'THEORY OF COMPUTATION', 'Michael Spiser', 'CS112', 'https://www.cin.ufpe.br', 2, 'PDF'),
    (5, 'MACHINE LEARNING', 'Richard O Duda', 'CS009', 'https://dl.acm.org', 5, 'PDF'),
    (6, 'SIGNAL AND SYSTEMS', 'Alan V Oppnenheim', 'EE112', 'https://mrcet.com', 4, 'PDF'),
    (7, 'CIVIL ENGINEERING:CONVENTIONAL AND OBJECTIVE', 'JK GUPTA', 'CV111', 'https://easyengineering.net', 3, 'PDF'),
    (8, 'MECHATRONICS', 'W Bolton', 'ME101', 'https://www.sze.hu', 5, 'PDF'),
    (9, 'ESTIMATING AND COSTING IN CIVIL ENGINEERING', 'B.N DUTTA', 'CV231', 'https://siiet.ac.in', 4, 'PDF'),
    (10, 'INFORMATION TECHNOLOGY', 'SUMITA ARORA', 'IS109', 'https://www.researchgate.net', 2, 'PDF'),
    (11, 'DESIGNING DATA-INTENSIVE APPLICATIONS', 'Martin Kleppmann', 'IS222', 'https://www.academia.edu', 5, 'PDF'),
    (12, 'POLYMER SCIENCE AND TECHNOLOGY', 'Anshu Srivastav', 'PS004', 'https://www.wng.edu', 3, 'PDF'),
    (13, 'POLYMERIZATION', 'Santosh K Gupta', 'PS013', 'https://www.sathyabhama.in', 4, 'PDF'),
    (14, 'ELECTRONICS FUNDAMENTALS AND APPLICATIONS', 'D Chattopadhyay', 'EC118', 'https://www.ncert.in', 5, 'PDF'),
    (15, 'PRACTICAL ELECTRONICS FOR INVENTORS', 'JB GUPTA', 'EC222', 'https://archive.org', 5, 'PDF');


INSERT INTO Staff (staff_id,first_name,last_name,gender, designation,  phone_no, address, joining_year)
VALUES
    ('LIDLI002', 'Kempanna','Gowda','Male', 'Librarian', '4637284747', '#25 Gangothri layout Mysore 570009', 1995),
    ('LIDTE003', 'Susheela','S', 'Female', 'Library_Technician','9838261907', '#12 Kuvempunagar Mysore', 1996),
    ('LIDLI004', 'Kumuda', 'R','Female', 'Librarian', '8362829662', '#13 Shaktinagar Mysore', 1999),
    ('LIDSS005', 'Devika', 'L','Female', 'Support_Staff','9835174628', '#14 Vijayanagar Mysore', 2002),
    ('LIDSS006', 'Mahadevi','M','Female', 'Support_Staff','9845273636', '#34 Hebbal Mysuru', 2006),
    ('LIDLA007', 'Jeevith', 'Patel','Male', 'Library_Assistant','8242437485', '#6 Siddhartha Nagar Mysore', 2006),
    ('LIDCC008', 'Kumara', 'S','Male', 'Circulation_Clerk','9116482847', '#30 T K layout Mysore', 2010),
    ('LIDCC009', 'Tarini','kumari','Female', 'Circulation_Clerk','9372626868', '#56 Kuvempunagar Mysore', 2011),
    ('LIDRL010', 'Vachana','BV','Female', 'Reference_Librarian','9784643581', '#34 Saraswathipuram Mysore', 2015),
    ('LIDCA011', 'Karthik','suresh','Male', 'Cataloger','8453127648', '#23 Hebbal Mysore', 2015),
    ('LIDCA012', 'Ravi','Kumar','Male', 'Cataloger','5481943784', '#23 Vijayanagar Mysore', 2020),
    ('LIBSL013', 'Nandini','S','Female', 'Systems_Librarian','9784316859','#24 kuvempunagar Mysore', 2020);

INSERT INTO mail_ids(email_id,staff_id)
VALUES
   ("sanjay@gmail.com","LIDTE001"),
   ("sanjaykumar21@gmail.com","LIDTE001"),
   ('kempanna@gmail.com','LIDLI002'),
   ('kempannat561@gmail.com','LIDLI002'),
   ('susheela@gmail.com','LIDTE003'),
   ('kumuda@gmail.com','LIDLI004'),
   ('kumudaR51@gmail.com','LIDLI004'),
   ('devika@gmail.com','LIDSS005'),
   ('mahadevi@gmail.com','LIDSS006'),
   ('jeevith@gmail.com','LIDLA007'),
   ('jeevithpatel372@gmail.com','LIDLA007'),
   ('kumara@gmail.com','LIDCC008'),
   ('tarini@gmail.com','LIDCC009'),
   ('tarinikumari@gmail.com','LIDCC009'),
   ('vachana@gmail.com','LIDRL010'),
   ('karthik@gmail.com','LIDCA011'),
   ('ravi@gmail.com','LIDCA012'),
   ('ravikumar461@gmail.com','LIDCA012'),
   ('nandini@gmail.com','LIBSL013');


INSERT INTO Login (login_id, first_name,last_name,t_date,visit,entry_time, exit_time, Department_name) 
VALUES 
(1, 'Aniket','Shetty','2023-10-23','reading', '02:30:25', '03:30:25', 'CSE'),
(2, 'Abhishek','MB','2023-10-24','borrow','04:30:00', '05:30:45', 'ISE'),
(3, 'Sinchana','S','2023-10-24','return','04:30:01', '05:15:46', 'MECH'),
(4, 'Anagha','KP','2023-10-24','reading','04:30:30', '05:22:12', 'EEE'),
(5, 'Kirtana','Kiran','2023-10-24','reading','04:30:56', '05:05:33', 'CSE'),
(6, 'John','Samuel','2023-10-25','borrow','01:35:24', '02:20:30', 'IP'),
(7, 'Jagruth','Kumar','2023-10-25','return','03:38:48', '04:20:55', 'ENVI'),
(8, 'Vivek', 'Patel','2023-10-26','borrow','09:55:45', '10:45:22', 'CSE');

INSERT INTO Issue (issue_id,issue_date, due_date, return_date)
VALUES
    (1000,'2023-10-01', '2023-10-16', '2023-10-20'),
    (1001,'2023-10-02', '2023-10-17', '2023-10-21'),
    (1002,'2023-10-02', '2023-10-17', '2023-10-22'),
    (1003,'2023-10-03', '2023-10-18', '2023-10-22'),
    (1004,'2023-10-03', '2023-10-18', '2023-10-21'),
    (1005,'2023-10-04', '2023-10-19', '2023-10-17'),
    (1006,'2023-10-04', '2023-10-19', '2023-10-19');

INSERT INTO Members (Member_id, first_name, last_name, email, phone_no, address, next_renewal, login_id, registeredby)
VALUES
    ('STU001', 'Abhishek', 'MB', 'mba@gmail.com', 8088868794, '#11 Nandini layout allnahalli Mysore 570002', '2025-01-21', 2, 'LIDLI002'),
    ('STU002', 'Anagha', 'KP', 'anagha@gmail.com', 1234567890, '#16,4th cross,Siddhartha layout,Mysuru', '2025-01-21', 4, 'LIDTE003'),
    ('STU003', 'Sinchana', 'S', 'sinchana@gmail.com', 2345678127, '#20,3rd cross,gangotri layout', '2025-01-22', 3, 'LIDTE003'),
    ('STU004', 'Kirtana', 'KIRAN', 'kirtana@gmail.com', 8893452134, '#21,4th cross,rajkamal apartment,Rajajinagar,Bangalore', '2025-01-22', 5, 'LIDLI002'),
    ('STU005', 'Aniket', 'Shetty', 'aniket@gmail.com', 3412908765, '#20,5th cross,tk layout,rajajinagar,Mysuru', '2025-01-23', 1, 'LIDTE003'),
    ('STU006', 'John', 'Samuel', 'akash@gmail.com', 1245716543, '#15,4th cross,Jayanagar,Bangalore', '2025-01-23', 6, 'LIDTE003'),
    ('STU009', 'Jagruth', 'Kumar', 'jagruth@gmail.com', 2234567172, '#21,2nd cross,sidharthanagar mysuru', '2025-02-13', 7, 'LIDTE003'),
    ('STU010', 'Vivek', 'Patel', 'vivek@gmail.com', 7865439087, '#56,7th cross,Hebbal,Mysuru', '2024-02-13',8 , 'LIDLI002');

INSERT INTO Fine (Fine_id, Member_id, issue_id, fine_date, fine_amount, fine_description, fine_paid)
VALUES
    (500, 'STU001', 1000, '2023-10-17', 40.00, 'Return delay', 1),
    (501, 'STU002', 1001, '2023-10-18', 40.00, 'Book damage', 0),
    (502, 'STU003', 1002, '2023-10-18', 50.00, 'Book damage', 1),
    (503, 'STU004', 1003, '2023-10-19', 40.00, 'Return delay', 0),
    (504, 'STU005', 1004, '2023-10-19', 800.00, 'Book lost', 0);   
    
INSERT INTO access values(
 1,'STU001'),
  (5,'STU002'),
  (7,'STU003'),
  (3,'STU004'),
   (11,'STU005'
 );
 
 insert into borrows values
 (1000,'STU002',5),
 (1005,'STU003',7),
 (1002,'STU004',3),
 (1004,'STU005',11
 );
