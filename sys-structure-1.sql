CREATE DATABASE library_system;

USE library_system;

drop table branch;

CREATE TABLE branch(
		Branch_name CHAR(25),
        Branch_address CHAR(40) NOT NULL,
        phone_number INT NOT NULL,
        PRIMARY KEY(Branch_name)
		);
        
DESCRIBE branch;

DROP TABLE customer;

CREATE TABLE customer(
		customer_id INT,
        customer_name CHAR(10) NOT NULL,
        customer_address CHAR(40) NOT NULL,
        dateOfBirth DATE,
        phoneNo INT NOT NULL,
        Branch_name CHAR(25) NOT NULL,
        PRIMARY KEY(customer_id)
        
		);
        
ALTER TABLE customer
DROP COLUMN branch_name;
        
DESCRIBE customer;


CREATE TABLE book(
		book_id INT,
        book_title CHAR(40) NOT NULL,
        first_author CHAR(20) NOT NULL,
        location CHAR(20) NOT NULL,
        ISBN_no INT NOT NULL,
        branch_name CHAR(25) NOT NULL,
        PRIMARY KEY(BOOK_ID),
        FOREIGN KEY(BRANCH_NAME) REFERENCES BRANCH(BRANCH_NAME)
        );
        
DROP TABLE BOOK;   

ALTER TABLE book
MODIFY COLUMN ISBN_no CHAR(15) NOT NULL; 

    
DESCRIBE book;

CREATE TABLE employee(
		employee_id INT,
        job CHAR(20) NOT NULL,
        start_date DATE NOT NULL,
        monthly_salary INT NOT NULL,
        branch_name CHAR(20) NOT NULL,
        PRIMARY KEY(employee_id),
        FOREIGN KEY(branch_name) REFERENCES branch(branch_name)
        );
        
DESCRIBE employee;

CREATE TABLE borrow(
		customer_id INT,
        book_id INT,
        fee_lateReturn INT,
        cost_to_lost INT,
        PRIMARY KEY(customer_id,book_id)
        );
        
ALTER TABLE borrow
MODIFY fee_lateReturn INT;

ALTER TABLE borrow
MODIFY cost_to_lost INT;

ALTER TABLE BORROW
DROP COLUMN fee_lateReturn;

ALTER TABLE borrow
DROP COLUMN cost_to_lost;

ALTER TABLE borrow
ADD fee_lateReturn_RS INT DEFAULT 00;

ALTER TABLE borrow
ADD cost_to_lost_RS INT DEFAULT 00;
        
DESCRIBE BORROW;
        
        
CREATE TABLE login(
		user_name CHAR(40) NOT NULL,
        customer_id INT NOT NULL,
        branch_name CHAR(25) NOT NULL,
        PRIMARY KEY(user_name),
        FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
        FOREIGN KEY(branch_name) REFERENCES branch(branch_name)
        );
        
DESCRIBE login;
        
        
