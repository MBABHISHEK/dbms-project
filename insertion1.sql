create database library1;
use library1;
show tables;
create table Department
(
  subject_id VARCHAR(5) PRIMARY KEY,
  Sname text,
  Department_id INT,
  Dname VARCHAR(30),
  total_books INT,
  shelf_no INT
);
CREATE TABLE Books (
    Book_id INT PRIMARY KEY,
    Book_title text,
    Book_author VARCHAR(20),
    Book_edition INT,
    categorised VARCHAR(5),
    FOREIGN KEY (categorised) REFERENCES Department(subject_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE EBooks (
    ebook_id INT PRIMARY KEY,
    eBook_title VARCHAR(20),
    author VARCHAR(20),
    category VARCHAR(5),
    url text,
    ratings_value INT,
    format TEXT,
    FOREIGN KEY (category) REFERENCES Department(subject_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Staff (
    staff_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    gender ENUM('Male', 'Female', 'Others'),
    designation VARCHAR(20),
    phone_no BIGINT,
    address TEXT,
    joining_year INT
);
create TABLE mail_ids
(
  email_id varchar(30),
  staff_id VARCHAR(10),
  primary key(email_id,staff_id)
);
CREATE TABLE Login (
   login_id INT PRIMARY KEY,
   first_name VARCHAR(20),
   last_name VARCHAR(20),
   t_date DATE,
   visit ENUM('reading', 'borrow', 'return'),
   entry_time TIME,
   exit_time TIME,
   Department_name VARCHAR(30)
);
CREATE TABLE Issue (
    issue_id INT PRIMARY KEY,
    issue_date DATE,
    due_date DATE,
    return_date DATE
);
CREATE TABLE Members (
	 Member_id VARCHAR(10) PRIMARY KEY,
     first_name VARCHAR(20),
     last_name VARCHAR(20),
     email VARCHAR(20),
     phone_no BIGINT,
     address TEXT,
     next_renewal DATE,
	 login_id INT ,
     registeredby  VARCHAR(10),
     FOREIGN KEY ( registeredby ) REFERENCES Staff(staff_id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (login_id) REFERENCES Login(login_id) ON DELETE CASCADE ON UPDATE CASCADE
);
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
create table Access
(
    ebook_id INT ,
    Member_id VARCHAR(10),
    FOREIGN KEY (ebook_id) REFERENCES ebooks(ebook_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Member_id) REFERENCES Members(Member_id) ON DELETE CASCADE ON UPDATE CASCADE
);
create table borrows
(
	issue_id INT ,
    Member_id VARCHAR(10),
	Book_id INT,
	FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (issue_id) REFERENCES issue(issue_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Member_id) REFERENCES Members(Member_id) ON DELETE CASCADE ON UPDATE CASCADE
);
