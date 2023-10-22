create database LIBRARY_DATABASE;
use LIBRARY_DATABASE;

create table Login(
   sl_no int primary key,
   name varchar(10),
   entry_time time,
   exit_time time,
    t_date date,
    Department_name varchar(10) 	
);
    
create table Books(
    Book_id int primary key,
    Book_title varchar(10),
    Book_author varchar(10),
    Book_edition int,
    subject_id int ,
    foreign key(subject_id) references Department(subject_id));
    
create table Department(
    subject_id int primary key,
    Department_id int unique,
    Dname varchar(10),
    Sname varchar(10),
    total_books int ,
    shelf_no int );
    
    
create table Journals(
    journal_id int primary key,
    journal_title varchar(10),
    Language_name varchar(10),
    frequemcy int,
    vendor_id char(5),
	foreign key(vendor_id) references Vendors(vendor_id)
    );
    
create table EBooks(
    ebook_id int primary key,
    eBook_title varchar(10),
    author varchar(10),
    url varchar(10),
    ratings_value int,
    subject_id int,
    foramt text,
    foreign key(subject_id) references Dpartment(subject_id));
    
create table Members(
    Member_id varchar(10) primary key,
    Member_name varchar(20),
    caterory enum('books','journals'),
    email varchar(10),
    phone_no int(10),
    address text,
    expiry_data date
);

create table staff
(
    staff_id varchar(10) primary key,
    Member_name varchar(20),
    gender enum('Male','Female','others'),
    designation varchar(10),
    email varchar(10),
    phone_no int(10),
    address text,
    joininng_data date
);
create table category(
    cat_id int primary key,
    S_name varchar(10),
    branch varchar(10),
    course varchar(10)
);

create table Vendors(
    vendor_id  char(5),
    vender_name varchar(10),
    email varchar(10),
    phone_no int(10),
    no_copies int, 
    address text,
    typeof enum('books','journals'),
    ammount int
);
    
create table Fine(
    Fine_id int(5) primary key,
    Member_id varchar(10),
    fine_amount int,
    fine_date date,
    fine_description text,
    fine_paid boolean,
    issue_id int(5),
    foreign key(issue_id) references Issue(issue_id),
    foreign key(Member_id) references Members(Member_id)
);

create table Issue(
        issue_id int(5) primary key,
	Member_id varchar(10),
        Book_id int,
	foreign key(Member_id) references Members(Member_id),
	foreign key(Book_id) references Books(Book_id),
        issue_date date,
       retrun_date date
);
