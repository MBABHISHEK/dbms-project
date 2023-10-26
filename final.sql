CREATE DATABASE IF NOT EXISTS LIBRARY_DATABASE;
USE LIBRARY_DATABASE;

ALTER TABLE Department MODIFY Sname text;
drop table fine;
drop table issue;
CREATE TABLE Department (
    subject_id VARCHAR(5) PRIMARY KEY,
    Sname text,
    Department_id INT,
    Dname VARCHAR(30),
    total_books INT,
    shelf_no INT
);
DESCRIBE Department;
insert into Department (subject_id,
    Sname ,
    Department_id,
    Dname )values("DB001","DATABASE MANGEMENT SYSTEMS",01,"CSE");
  
 DESCRIBE Vendors; 
CREATE TABLE Vendors (
    vendor_id CHAR(5) primary key,
    vendor_name VARCHAR(20),
    email VARCHAR(20),
    phone_no BIGINT,
    no_of_books INT,
    address TEXT,
    type ENUM('Books', 'Journals'),
    amount FLOAT
);

insert into Vendors(vendor_id,
    vendor_name,
    email,
    phone_no,
    address,
    type,
    amount
    )
    values("SA001","SAPNA_BOOK_HOUSE","sapnabook@gmail.com",9035000430,
    "1433, NS Road, Devaraja Mohalla, Shivarampet, Mysuru, Karnataka 570001","Books",15000.0);
    
CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(20),
    course VARCHAR(20),
);
DESCRIBE Category;
ALTER TABLE Category DROP COLUMN branch;

insert into Category values (
 1,"STUDENTS","BE"
);

DESCRIBE Staff;
CREATE TABLE Staff (
    staff_id VARCHAR(10) PRIMARY KEY,
    staff_name VARCHAR(20),
    gender ENUM('Male', 'Female', 'Others'),
    designation VARCHAR(20),
    email VARCHAR(20),
    phone_no BIGINT,
    address TEXT,
    joining_year INT
);
insert into Staff values ("LIDTE001","Sanjay","Male","Technician","sanjay@gmail.com",
7975893915,"#10 Nandini layout allnahalli Mysore 570002",1995);


CREATE TABLE Login (
   sl_no INT PRIMARY KEY,
   name VARCHAR(20),
   t_date DATE,
   entry_time TIME,
   exit_time TIME,
   Department_name VARCHAR(30)
);
drop table login;
describe login;
insert into Login values(
1,"Aniket",'2023-10-23','03:30:25','03:45:23',"CSE"
);
INSERT INTO Login (sl_no,t_date, entry_time, exit_time, Department_name) 
VALUES (1, "2023-10-23", '02:30:25', '03:30:25', 'CSE');

INSERT INTO Login (sl_no, t_date, entry_time, exit_time, Department_name) 
VALUES (1, '2023-10-23', '02:30:25', '03:30:25', 'CSE');


INSERT INTO Login (sl_no, name, t_date, entry_time, exit_time, Department_name) 
VALUES (1, 'Aniket', '2023-10-23', '02:30:25', '03:30:25', 'CSE');
INSERT INTO Login (sl_no, name, t_date, entry_time, exit_time, Department_name) 
VALUES (1, 'Aniket', '2023-10-23', '02:30:25', '03:30:25', 'CSE');
INSERT INTO Login(sl_no,entry_time) VALUES (1,'12:30:00');

describe Books;
CREATE TABLE Books (
    Book_id INT PRIMARY KEY,
    Book_title text,
    Book_author VARCHAR(20),
    Book_edition INT,
    subject_id VARCHAR(5),
    FOREIGN KEY (subject_id) REFERENCES Department(subject_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO BOOKS VALUES(001,"FUNDAMENTALS OF DATABASE SYSTEMS","Navathe",7,"DB001"
);
ALTER TABLE Books MODIFY Book_title text;
describe Members;
CREATE TABLE Members (
    Member_id VARCHAR(10) PRIMARY KEY,
    Member_name VARCHAR(20),
    category_id INT,
    email VARCHAR(20),
    phone_no BIGINT,
    address TEXT,
    expiry_date DATE,
    FOREIGN KEY (category_id) REFERENCES Category(category_id) ON DELETE CASCADE ON UPDATE CASCADE
);
insert into Members values("STU001","ABHISHEK",1,"mba@gmail.com",8088868794,
"#11 Nandini layout allnahalli Mysore 570002","2025-01-21");
ALTER TABLE Journals MODIFY  frequency varchar(15);
CREATE TABLE Journals (
    journal_id INT PRIMARY KEY,
    journal_title VARCHAR(20),
    Language_name VARCHAR(10),
    frequency varchar(15),
    vendor_id CHAR(5),
    FOREIGN KEY (vendor_id) REFERENCES Vendors(vendor_id) ON DELETE CASCADE ON UPDATE CASCADE
);
insert into Journals values(100,"THE HINDU","ENGLISH","DAILY","SA001");
ALTER TABLE EBooks MODIFY url text;
CREATE TABLE EBooks (
    ebook_id INT PRIMARY KEY,
    eBook_title VARCHAR(20),
    author VARCHAR(20),
    subject_id VARCHAR(5),
    url text,
    ratings_value INT,
    format TEXT,
    FOREIGN KEY (subject_id) REFERENCES Department(subject_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO EBooks VALUES(01,"FUNDAMENTALS OF DATABASE SYSTEMS","Navathe","DB001",
"http://127.0.1:db.html",4.5,"PDF"
);
CREATE TABLE Issue (
    issue_id INT PRIMARY KEY,
    Member_id VARCHAR(10),
    Book_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (Member_id) REFERENCES Members(Member_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id) ON DELETE CASCADE ON UPDATE CASCADE
);
insert into Issue values(1000,"STU001",001,"2023-10-01","2023-10-16","2023-10-20");
CREATE TABLE Fine (
    Fine_id INT PRIMARY KEY,
    Member_id VARCHAR(10),
    issue_id INT,
    fine_date DATE,
    fine_amount INT,
    fine_description TEXT,
    fine_paid BOOLEAN,
    FOREIGN KEY (issue_id) REFERENCES Issue(issue_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Member_id) REFERENCES Members(Member_id) ON DELETE CASCADE ON UPDATE CASCADE
);
insert into Fine values(500,"STU001",1000,"2023-10-17",40,"return delay",TRUE);


/*department*/
describe department;
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

describe staff;
INSERT INTO Staff (staff_id, staff_name, gender, designation, email, phone_no, address, joining_year)
VALUES
    ('LIDLI002', 'Kempanna', 'Male', 'Librarian', 'kempanna@gmail.com', '4637284747', '#25 Gangothri layout Mysore 570009', 1995),
    ('LIDTE003', 'Susheela', 'Female', 'Library_Technician', 'susheela@gmail.com', '9838261907', '#12 Kuvempunagar Mysore', 1996),
    ('LIDLI004', 'Kumuda', 'Female', 'Librarian', 'kumuda@gmail.com', '8362829662', '#13 Shaktinagar Mysore', 1999),
    ('LIDSS005', 'Devika', 'Female', 'Support_Staff', 'devika@gmail.com', '9835174628', '#14 Vijayanagar Mysore', 2002),
    ('LIDSS006', 'Mahadevi', 'Female', 'Support_Staff', 'mahadevi@gmail.com', '9845273636', '#34 Hebbal Mysuru', 2006),
    ('LIDLA007', 'Jeevith', 'Male', 'Library_Assistant', 'jeevith@gmail.com', '8242437485', '#6 Siddhartha Nagar Mysore', 2006),
    ('LIDCC008', 'Kumara', 'Male', 'Circulation_Clerk', 'kumara@gmail.com', '9116482847', '#30 T K layout Mysore', 2010),
    ('LIDCC009', 'Tarini', 'Female', 'Circulation_Clerk', 'tarini@gmail.com', '9372626868', '#56 Kuvempunagar Mysore', 2011),
    ('LIDRL010', 'Vachana', 'Female', 'Reference_Librarian', 'vachana@gmail.com', '9784643581', '#34 Saraswathipuram Mysore', 2015),
    ('LIDCA011', 'Karthik', 'Male', 'Cataloger', 'karthik@gmail.com', '8453127648', '#23 Hebbal Mysore', 2015),
    ('LIDCA012', 'Ravi', 'Male', 'Cataloger', 'ravi@gmail.com', '5481943784', '#23 Vijayanagar Mysore', 2020),
    ('LIBSL013', 'Nandini', 'Female', 'Systems_Librarian', 'nandini@gmail.com', '9784316859','#24 kuvempunagar Mysore', 2020);
    
INSERT INTO Category (category_id, category_name, course)
VALUES
    (1, 'STUDENTS', 'B.Tech'),
    (2, 'STUDENTS', 'PhD'),
    (3, 'STUDENTS', 'M.Tech'),
    (4, 'Professors', 'B.Tech'),
    (5, 'Professors', 'M.Tech'),
    (6, 'Professors', 'PhD');
 
INSERT INTO Vendors (vendor_id, vendor_name, email, phone_no, no_of_books, address, type, amount)
VALUES
    ('BH002', 'Bharath Book House', 'bharatbook@gmail.com', '9764815282', 2, '#262, Shaktinagar, Raichur', 'Books', 20000),
    ('SU003', 'Sudha Book House', 'sudhabook@gmail.com', '8465972513', 2, '3737, Kuvempunagar, Mysuru', 'Books', 30000),
    ('KU004', 'Kumar Book House', 'kumarbh@gmail.com', '9111345784', 2, '47, Rajajinagar, Bangalore', 'Books', 14500),
    ('SH005', 'Shekhar Book Stores', 'shekharbs@gmail.com', '8446135948', 2, '373, Nandini Layout, Mysuru', 'Books', 12000),
    ('MJ006', 'Mysore Journals', 'mysorej@gmail.com', '9764352896', 5, '877, Siddhartha Nagar, Mysore', 'Journals', 20000),
    ('ME007', 'Maruti Enterprises', 'enterprise@gmail.com', '8451584545', 3, '4774, Jayanagar, Bangalore', 'Journals', 12500),
    ('TE008', 'Tejas Book House', 'tejasbh@gmail.com', '9764518754', 3, '26, Gangothri layout, Mysore', 'Books', 8000);    
    
describe books;
alter table books add vendor_id varchar(5) FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE books 
ADD vendor_id VARCHAR(5), 
ADD CONSTRAINT fk_books_vendors 
FOREIGN KEY (vendor_id) 
REFERENCES vendors(vendor_id) 
ON DELETE CASCADE 
ON UPDATE CASCADE;


INSERT INTO books (Book_id,Book_title,Book_author,Book_edition,subject_id,vendor_id)
VALUES
    (1, 'FUNDAMENTALS OF DATABASE SYSTEMS', 'Navathe', 7, 'CS001', 'SA001'),
    (2, 'BASIC MECHANICAL ENGINEERING', 'JK GUPTA', 6, 'ME005', 'KU004'),
    (3, 'ELECTRICAL ENGINEERING FUNDAMENTALS', 'Andrew S Tanenbaum', 2, 'EE108', 'BH002'),
    (4, 'THEORY OF COMPUTATION', 'Michael Sipser', 2, 'CS112', 'SA001'),
    (5, 'MACHINE LEARNING', 'Richard O Duda', 2, 'CS009', 'KU004'),
    (6, 'MECHATRONICS', 'W Bolton', 5, 'ME101', 'SH005'),
    (7, 'SIGNAL AND SYSTEMS', 'Alan V Oppnenheim', 4, 'EE112', 'TE008'),
    (8, 'CIVIL ENGINEERING:CONVENTIONAL AND OBJECTIVE', 'JK GUPTA', 6, 'CV111', 'SU003'),
    (9, 'ESTIMATING AND COSTING IN CIVIL ENGINEERING', 'B.N DUTTA', 4, 'CV231', 'BH002'),
    (10, 'INFORMATION TECHNOLOGY', 'SUMITA ARORA', 3, 'IS109', 'TE008'),
    (11, 'DESIGNING DATA-INTENSIVE APPLICATIONS', 'Martin Kleppmann', 6, 'IS222', 'TE008'),
    (12, 'POLYMER SCIENCE AND TECHNOLOGY', 'Anshu Srivastav', 5, 'PS004', 'SA001'),
    (13, 'POLYMERIZATION', 'Santosh K Gupta', 4, 'PS013', 'SH005'),
    (14, 'ELECTRONICS FUNDAMENTALS AND APPLICATIONS', 'D Chattopadhyay', 3, 'EC118', 'SA001'),
    (15, 'PRATICAL ELECTRONICS FOR INVENTORS', 'JB GUPTA', 6, 'EC222', 'SU003');
 
 
describe journals;   

INSERT INTO journals (journal_id, journal_title, Language_name, frequency, vendor_id)
VALUES
    (101, 'THE WEEK', 'ENGLISH', 'WEEKLY', 'MJ006'),
    (102, 'DECCAN HERALD', 'ENGLISH', 'DAILY', 'MJ006'),
    (103, 'PEOPLE', 'ENGLISH', 'WEEKLY', 'MJ006'),
    (104, 'VIJAYA KARNATAKA', 'KANNADA', 'DAILY', 'ME007'),
    (105, 'MYSURU MITRA', 'KANNADA', 'DAILY', 'MJ006'),
    (106, 'COMPETITION SUCCESS', 'ENGLISH', 'MONTHLY', 'ME007'),
    (107, 'INDIA QUARTERLY', 'ENGLISH', 'QUARTERLY', 'ME007');   


describe eBooks;    
INSERT INTO eBooks (ebook_id, eBook_title, author, subject_id, url, ratings_value, format)
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
    

describe Members;     
INSERT INTO Members (Member_id, Member_name, category_id, email, phone_no, address, expiry_date)
VALUES
    ('STU001', 'ABHISHEK', 1, 'mba@gmail.com', '8088868794', '#11 Nandini layout allnahalli Mysore 570002', '2025-01-21'),
    ('STU002', 'ANAGHA', 2, 'anagha@gmail.com', '1234567890', '#16,4th cross,Siddhartha layout,Mysuru', '2025-01-21'),
    ('STU003', 'SINCHANA', 3, 'sinchana@gmail.com', '2345678127', '#20,3rd cross,gangotri layout', '2025-01-22'),
    ('STU004', 'KIRTANA', 1, 'kirtana@gmail.com', '8893452134', '#21,4th cross,rajkamal apartment,Rajajinagar,Bangalore', '2025-01-22'),
    ('STU005', 'VISMAYA', 4, 'vismaya@gmail.com', '3412908765', '#20,5th cross,tk layout,rajajinagar,Mysuru', '2025-01-23'),
    ('STU006', 'AKASH', 4, 'akash@gmail.com', '1245716543', '#15,4th cross,Jayanagar,Bangalore', '2025-01-23'),
    ('STU007', 'PREETI', 3, 'preeti@gmail.com', '4432116785', '#12,5th cross,Saraswatipuram,Mysuru', '2025-02-24'),
    ('STU008', 'VISHRUTH', 3, 'vishruth@gmail.com', '2241786543', '#23,6th cross,Neharunagar,Bangalore', '2025-02-03'),
    ('STU009', 'JAGRUTH', 2, 'jagruth@gmail.com', '2234567172', '#21,2nd cross,sidharthanagar mysuru', '2025-02-13'),
    ('STU010', 'VIVEK', 1, 'vivek@gmail.com', '7865439087', '#56,7th cross,Hebbal,Mysuru', '2024-02-13');    
    
describe issue;    
INSERT INTO Issue (issue_id, Member_id, Book_id, issue_date, due_date, return_date)
VALUES
    (1000, 'STU001', 1, '2023-10-01', '2023-10-16', '2023-10-20'),
    (1001, 'STU002', 2, '2023-10-02', '2023-10-17', '2023-10-21'),
    (1002, 'STU003', 3, '2023-10-02', '2023-10-17', '2023-10-22'),
    (1003, 'STU004', 4, '2023-10-03', '2023-10-18', '2023-10-22'),
    (1004, 'STU005', 5, '2023-10-03', '2023-10-18', '2023-10-21'),
    (1005, 'STU006', 6, '2023-10-04', '2023-10-19', '2023-10-17'),
    (1006, 'STU007', 7, '2023-10-04', '2023-10-19', '2023-10-19');   
    
INSERT INTO Fine (Fine_id, Member_id, issue_id, fine_date, fine_amount, fine_description, fine_paid)
VALUES
    (500, 'STU001', 1000, '2023-10-17', 40.00, 'Return delay', 1),
    (501, 'STU002', 1001, '2023-10-18', 40.00, 'Book damage', 0),
    (502, 'STU003', 1002, '2023-10-18', 50.00, 'Book damage', 1),
    (503, 'STU004', 1003, '2023-10-19', 40.00, 'Return delay', 0),
    (504, 'STU005', 1004, '2023-10-19', 800.00, 'Book lost', 0);   
    
INSERT INTO Login (sl_no, name, t_date, entry_time, exit_time, Department_name) 
VALUES
(2, 'Abhishek', '2023-10-24', '04:30:00', '05:30:45', 'ISE'),
(3, 'Sinchana', '2023-10-24', '04:30:01', '05:15:46', 'MECH'),
(4, 'Anagha', '2023-10-24', '04:30:30', '05:22:12', 'EEE'),
(5, 'Kirtana', '2023-10-24', '04:30:56', '05:05:33', 'CSE'),
(6, 'John', '2023-10-25', '01:35:24', '02:20:30', 'IP'),
(7, 'Jagruth', '2023-10-25', '03:38:48', '04:20:55', 'ENVI'),
(8, 'Vivek', '2023-10-26', '09:55:45', '10:45:22', 'CSE');
