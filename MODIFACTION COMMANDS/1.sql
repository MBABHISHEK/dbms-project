CREATE DATABASE IF NOT EXISTS LIBRARY_DATABASE;
USE LIBRARY_DATABASE;

CREATE TABLE Login (
    sl_no INT PRIMARY KEY AUTO_INCREMENT, -- Added AUTO_INCREMENT for primary key
    name VARCHAR(10),
    entry_time TIME,
    exit_time TIME,
    t_date DATE,
    Department_name VARCHAR(10) UNIQUE
);

CREATE TABLE Books (
    Book_id INT PRIMARY KEY,
    Book_title VARCHAR(100), -- Modified to allow longer titles
    Book_author VARCHAR(100), -- Modified to allow longer author names
    Book_edition INT,
    subject_id INT,
    FOREIGN KEY (subject_id) REFERENCES Department(subject_id)
);

CREATE TABLE Department (
    subject_id INT PRIMARY KEY,
    Department_id INT UNIQUE,
    Dname VARCHAR(100), -- Modified to allow longer department names
    Sname VARCHAR(100), -- Modified to allow longer subject names
    total_books INT,
    shelf_no INT
);

CREATE TABLE Journals (
    journal_id INT PRIMARY KEY,
    journal_title VARCHAR(100), -- Modified to allow longer journal titles
    Language_name VARCHAR(100), -- Modified to allow longer language names
    frequency INT,
    vendor_id CHAR(5),
    FOREIGN KEY (vendor_id) REFERENCES Vendors(vendor_id)
);

CREATE TABLE EBooks (
    ebook_id INT PRIMARY KEY,
    eBook_title VARCHAR(100), -- Modified to allow longer eBook titles
    author VARCHAR(100), -- Modified to allow longer author names
    url VARCHAR(2083), -- Modified to support longer URL lengths
    ratings_value INT,
    subject_id INT,
    format TEXT, -- Corrected the spelling of the 'format' column
    FOREIGN KEY (subject_id) REFERENCES Department(subject_id)
);

CREATE TABLE Members (
    Member_id VARCHAR(10) PRIMARY KEY,
    Member_name VARCHAR(100), -- Modified to allow longer member names
    category ENUM('books', 'journals'), -- Corrected the spelling of 'category'
    email VARCHAR(100), -- Modified to allow longer email addresses
    phone_no VARCHAR(20), -- Changed to VARCHAR to handle phone numbers with varying lengths
    address TEXT,
    expiry_date DATE -- Corrected the spelling of 'expiry_date'
);

CREATE TABLE Staff ( -- Changed to uppercase 'Staff' for consistency
    staff_id VARCHAR(10) PRIMARY KEY,
    Member_name VARCHAR(100), -- Modified to allow longer member names
    gender ENUM('Male', 'Female', 'Others'), -- Modified 'others' to 'Others' for consistency
    designation VARCHAR(100), -- Modified to allow longer designations
    email VARCHAR(100), -- Modified to allow longer email addresses
    phone_no VARCHAR(20), -- Changed to VARCHAR to handle phone numbers with varying lengths
    address TEXT,
    joining_date DATE -- Corrected the spelling of 'joining_date'
);

CREATE TABLE Category ( -- Changed to uppercase 'Category' for consistency
    cat_id INT PRIMARY KEY,
    S_name VARCHAR(100), -- Modified to allow longer names
    branch VARCHAR(100), -- Modified to allow longer branch names
    course VARCHAR(100) -- Modified to allow longer course names
);

CREATE TABLE Vendors (
    vendor_id CHAR(5) PRIMARY KEY, -- Added PRIMARY KEY constraint
    vendor_name VARCHAR(100), -- Modified to allow longer vendor names
    email VARCHAR(100), -- Modified to allow longer email addresses
    phone_no VARCHAR(20), -- Changed to VARCHAR to handle phone numbers with varying lengths
    no_copies INT,
    address TEXT,
    type ENUM('books', 'journals'), -- Corrected the spelling of 'type'
    amount INT -- Corrected the spelling of 'amount'
);

CREATE TABLE Fine (
    Fine_id INT PRIMARY KEY AUTO_INCREMENT, -- Added AUTO_INCREMENT for primary key
    Member_id VARCHAR(10),
    fine_amount INT,
    fine_date DATE,
    fine_description TEXT,
    fine_paid BOOLEAN,
    issue_id INT,
    FOREIGN KEY (issue_id) REFERENCES Issue(issue_id),
    FOREIGN KEY (Member_id) REFERENCES Members(Member_id)
);

CREATE TABLE Issue (
    issue_id INT PRIMARY KEY AUTO_INCREMENT, -- Added AUTO_INCREMENT for primary key
    Member_id VARCHAR(10),
    Book_id INT,
    FOREIGN KEY (Member_id) REFERENCES Members(Member_id),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id),
    issue_date DATE,
    return_date DATE -- Corrected the spelling of 'return_date'
);
