drop database if exists bank;

create database bank;
use bank;

create table account (
    id int primary key,
    name varchar(30),
    ph_no char(10),
    doj date
);

insert into account values
(1, 'Rajesh', '9876532101', '2024-01-15'),
(2, 'Priya', '7777777777', '2024-02-20');

select * from account;

rename table account to employee;

alter table employee add email varchar(30);

update employee set email='rajesh@gmail.com' where id=1;
update employee set email='priya@gmail.com' where id=2;

select * from employee;
