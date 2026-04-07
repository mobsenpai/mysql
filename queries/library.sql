drop database if exists library_db;

-- Library management database
create database library_db;
use library_db;

-- Books database
create table books (
    isbn varchar(13) primary key,
    title varchar(30) not null,
    publication_year year,
    copies_available int default 1
);

insert into books values
('123', 'Deep work', 2016-01-01),
('124', 'Metamorphosis', 2018-02-02, 2);

-- Checking
-- desc books;
-- select * from books;

-- Members database 
create table members (
    member_id int primary key auto_increment,
    first_name varchar(30) not null,
    last_name varchar(30),
    email varchar(30) unique not null,
    join_date date default current_date
);

-- Checking
-- desc members;
-- select * from members;

-- Borrowings table
create table borrowings (
    borrow_id int primary key auto_increment,
    isbn varchar(13) not null,
    member_id int not null,
    borrow_date date not null,
    return_daate date not null,
    foreign key (member_id) references members(member_id),
    foreign key (isbn) references books(isbn)
);

-- Checking
-- desc borrowings
-- select * from borrowings;
