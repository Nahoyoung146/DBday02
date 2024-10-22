create table employee(
name varchar2(15),
salary number,
job varchar(20),
join_company date
);

desc employee
insert into employee values('홍길동',2000000,'컴퓨터','2222:12:24');
alter session set nls_date_format = 'yyyy/mm/dd';
select * from employee;
