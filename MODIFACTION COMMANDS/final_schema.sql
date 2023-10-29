CREATE DATABASE IF NOT EXISTS LIBRARY_DATABASE;
USE LIBRARY_DATABASE;

ALTER TABLE Department MODIFY Sname text;
drop table fine;
drop table issue;
CREATE TABLE Department (
    subject_id VARCHAR(5) PRIMARY KEY,
    Sname VARCHAR(20),
    Department_id INT,
    Dname VARCHAR(30),
    total_books INT,
    shelf_no INT
);
insert into Department (subject_id,
    Sname ,
    Department_id,
    Dname )values("DB001","DATABASE MANGEMENT SYSTEMS",01,"CSE");
    
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
    branch VARCHAR(30)
);
ALTER TABLE Category DROP COLUMN branch;

insert into Category values (
 1,"STUDENTS","BE"
);
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
insert into Login values(
1,"Aniket","23-10-2023","02:30:25","03:30:25","23-10-2023","CSE"
);
INSERT INTO Login (sl_no,name, t_date, entry_time, exit_time, Department_name) 
VALUES (1,"Aniket", "2023-10-23", '02:30:25', '03:30:25', 'CSE');

INSERT INTO Login (sl_no, name, t_date, entry_time, exit_time, Department_name) 
VALUES (1, 'Aniket', '2023-10-23', '02:30:25', '03:30:25', 'CSE');
INSERT INTO Login (sl_no, name, t_date, entry_time, exit_time, Department_name) 
VALUES (1, 'Aniket', '2023-10-23', '02:30:25', '03:30:25', 'CSE');


CREATE TABLE Books (
    Book_id INT PRIMARY KEY,
    Book_title VARCHAR(30),
    Book_author VARCHAR(20),
    Book_edition INT,
    subject_id VARCHAR(5),
    FOREIGN KEY (subject_id) REFERENCES Department(subject_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO BOOKS VALUES(001,"FUNDAMENTALS OF DATABASE SYSTEMS","Navathe",7,"DB001"
);
ALTER TABLE Books MODIFY Book_title text;
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
    frequency INT,
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
    url VARCHAR(20),
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
