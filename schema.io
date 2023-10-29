Table Department
{
  subject_id VARCHAR [primary key]
  Sname text
  Department_id INT
  Dname VARCHAR(30)
  total_books INT
  shelf_no INT
}
 TABLE Books {
    Book_id INT [primary key]
    Book_title text
    Book_author VARCHAR(20)
    Book_edition INT
    categorised VARCHAR(5)
}
TABLE EBooks {
    ebook_id INT [primary key]
    eBook_title VARCHAR(20)
    author VARCHAR(20)
    category VARCHAR(5)
    url TEXT
    ratings_value INT
    format TEXT
}

TABLE Staff {
    staff_id VARCHAR(10) [primary key]
    first_name VARCHAR(20)
    last_name VARCHAR(20)
    gender ENUM('Male', 'Female', 'Others')
    designation VARCHAR(20)
    phone_no BIGINT
    address TEXT
    joining_year INT
}

TABLE mail_ids {
    email_id VARCHAR(30) [primary key]
    staff_id VARCHAR(10) [primary key]
}


TABLE Login {
    login_id INT [primary key]
    first_name VARCHAR(20)
    last_name VARCHAR(20)
    t_date DATE
    visit ENUM('reading', 'borrow', 'return')
    entry_time TIME
    exit_time TIME
    Department_name VARCHAR(30)
}

TABLE Issue{
    issue_id INT [PRIMARY KEY]
    issue_date DATE
    due_date DATE
    return_date DATE
}
TABLE Members{
    Member_id VARCHAR(10) [PRIMARY KEY]
    first_name VARCHAR(20)
    last_name VARCHAR(20)
    email VARCHAR(20)
    phone_no BIGINT
    address TEXT
    next_renewal DATE
    login_id INT
    registeredby VARCHAR(10)
}
TABLE Fine {
    Fine_id INT [PRIMARY KEY]
    Member_id VARCHAR(10)
    issue_id INT
    fine_date DATE
    fine_amount INT
    fine_description TEXT
    fine_paid BOOLEAN
}


TABLE Access {
    ebook_id INT
    Member_id VARCHAR(10)
  }

TABLE borrows {
    issue_id INT
    Member_id VARCHAR(10)
    Book_id INT
 }

ref:Books.categorised > Department.subject_id
ref:EBooks.category > Department.subject_id
ref:Members.registeredby > Staff.staff_id
ref:Members.login_id > Login.login_id
ref:Fine.issue_id > Issue.issue_id
ref:Fine.Member_id > Members.Member_id
ref:Access.ebook_id > EBooks.ebook_id
ref:Access.Member_id > Members.Member_id
ref:borrows.Book_id > Books.Book_id
ref:borrows.issue_id > Issue.issue_id
ref:borrows.(Member_id) > Members.Member_id
ref:mail_ids.staff_id > Staff.staff_id
