create database LIBRARY_DATABASE;
use LIBRARY_DATABASE;

create table Login(
   sl_no int primary key,
   name varchar(20),
   t_date date,
   entry_time time,
   exit_time time,
   Department_name varchar(30) 	
);

create table Department(
    subject_id int primary key,
    Sname varchar(20),
    Department_id int,
    Dname varchar(30),
    total_books int ,
    shelf_no int 
);
 create table Vendors(
    vendor_id  char(5) primary key,
    vender_name varchar(20),
    email varchar(20),
    phone_no int(10),
    no_of_copies int, 
    address text,
    type enum('books','journals'),
    amount float
);   
create table category(
    category_id int primary key,
    category_name varchar(20),
    course varchar(20)
    branch varchar(30),
);
create table Books(
    Book_id int primary key,
    Book_title varchar(30),
    Book_author varchar(20),
    Book_edition int,
    subject_id int ,
    foreign key(subject_id) references Department(subject_id)
);
create table Issue(
        issue_id int(5) primary key,
	Member_id varchar(10),
        Book_id int,
	foreign key(Member_id) references Members(Member_id),
	foreign key(Book_id) references Books(Book_id),
        issue_date date,
        return_date date
);

create table Journals(
    journal_id int primary key,
    journal_title varchar(20),
    Language_name varchar(10),
    frequency int,
    vendor_id char(5),
    foreign key(vendor_id) references Vendors(vendor_id)
    );
    
create table EBooks(
    ebook_id int primary key,
    eBook_title varchar(20),
    author varchar(20),
    subject_id int,
    url varchar(20),
    ratings_value int,
    format text,
    foreign key(subject_id) references Department(subject_id)
);
create table Members(
    Member_id varchar(10) primary key,
    Member_name varchar(20),
    category_id int,
    email varchar(20),
    phone_no int(10),
    address text,
    expiry_data date
    foreign key(category_id) references category(category_id)
);

create table staff
(
    staff_id varchar(10) primary key,
    staff_name varchar(20),
    gender enum('Male','Female','others'),
    designation varchar(20),
    email varchar(20),
    phone_no int(10),
    address text,
    joining_data date
);

create table Fine(
    Fine_id int(5) primary key,
    Member_id varchar(10),
    issue_id int(5),
    fine_date date,
    fine_amount int,
    fine_description text,
    fine_paid boolean,
    foreign key(issue_id) references Issue(issue_id),
    foreign key(Member_id) references Members(Member_id)
);


