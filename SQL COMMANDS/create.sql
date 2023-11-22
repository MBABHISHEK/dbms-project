CREATE TABLE Department (
    subject_id VARCHAR(255) PRIMARY KEY,
    Sname TEXT,
    Department_id INT,
    Dname VARCHAR(30),
    total_books INT,
    shelf_no INT
);

CREATE TABLE Books (
    Book_id INT PRIMARY KEY,
    Book_title TEXT,
    Book_author VARCHAR(20),
    categorised VARCHAR(5),
    FOREIGN KEY (categorised) REFERENCES Department (subject_id)
);

CREATE TABLE EBooks (
    ebook_id INT PRIMARY KEY,
    eBook_title VARCHAR(20),
    author VARCHAR(20),
    category VARCHAR(5),
    url TEXT,
    ratings_value INT,
    format TEXT,
    FOREIGN KEY (category) REFERENCES Department (subject_id)
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

CREATE TABLE mail_ids (
    email_id VARCHAR(30) PRIMARY KEY,
    staff_id VARCHAR(10) PRIMARY KEY,
    FOREIGN KEY (staff_id) REFERENCES Staff (staff_id)
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
    login_id INT,
    registeredby VARCHAR(10),
    FOREIGN KEY (login_id) REFERENCES Login (login_id),
    FOREIGN KEY (registeredby) REFERENCES Staff (staff_id)
);

CREATE TABLE Fine (
    Fine_id INT PRIMARY KEY,
    Member_id VARCHAR(10),
    issue_id INT,
    fine_date DATE,
    fine_amount INT,
    fine_description TEXT,
    fine_paid BOOLEAN,
    FOREIGN KEY (issue_id) REFERENCES Issue (issue_id),
    FOREIGN KEY (Member_id) REFERENCES Members (Member_id)
);

CREATE TABLE Access (
    ebook_id INT,
    Member_id VARCHAR(10),
    FOREIGN KEY (ebook_id) REFERENCES EBooks (ebook_id),
    FOREIGN KEY (Member_id) REFERENCES Members (Member_id)
);

CREATE TABLE borrows (
    issue_id INT,
    Member_id VARCHAR(10),
    Book_id INT,
    FOREIGN KEY (Book_id) REFERENCES Books (Book_id),
    FOREIGN KEY (issue_id) REFERENCES Issue (issue_id),
    FOREIGN KEY (Member_id) REFERENCES Members (Member_id)
);
