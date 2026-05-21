drop database if exists bank;

create database bank;
use bank;

create table accounts(
    acc_id int primary key,
    acc_nm varchar(50),
    balance decimal(10,2)
);

insert into accounts values
(101, 'Yash', 30000),
(102, 'Aryan', 80000),
(103, 'Pritam', 70000),
(104, 'Prishu', 8000);


select 'initial data -' as '';
select * from accounts;

start transaction;

update accounts set balance = balance - 1000 where acc_id = 101;
update accounts set balance = balance + 1000 where acc_id = 102;

select 'after update (not commited yet)' as '';
select * from accounts;

commit;

rollback;

select 'after rollback (changes undone)' as '';
select * from accounts;
