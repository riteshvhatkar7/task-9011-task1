create database company_db;
use company_db;
create table employees (
employee_id int primary key,
employee_name varchar(100),
department varchar(50),
salary decimal(10,2),
city varchar(50),
joining_date date,
status varchar(20)
);

desc employees;

show tables; 

-- part b
insert into employees values
(101,'rahul patil','development',45000,'pune','2026-01-10','active');

insert into employees values
(102,'priya sharma','testing',38000,'mumbai','2026-02-15','active');

insert into employees values
(103,'amit joshi','development',52000,'pune','2025-12-05','active');
insert into employees values
(104,'sneha kulkarni','hr',35000,'nashik','2026-03-20','active');
insert into employees values
(105,'rohan deshmukh','support',30000,'mumbai','2026-04-01','inactive');
insert into employees values
(106,'anjali more','testing',42000,'pune','2026-05-12','active');

-- part c

select * from employees; 
select employee_name from employees;

select employee_name, salary from employees; 
select employee_name, department, city from employees; 
select * from employees where city = 'pune'; 

select * from employees where city = 'mumbai'; 
select * from employees where department = 'development';
select * from employees where department = 'testing';  

select * from employees where status = 'active';

select * from employees where status = 'inactive'; 

select * from employees where employee_id = 103;
select * from employees where employee_name = 'priya sharma';

select * from employees where salary > 40000;

select * from employees where salary < 40000;
select * from employees where salary = 35000; 

select * from employees where salary >= 42000;
select * from employees where city = 'pune' and status = 'active'; 

select * from employees
where department = 'development' and salary > 45000;

select * from employees where city = 'pune' or city = 'mumbai'; 

--  part d 

update employees
set salary = 48000
where employee_id = 101;  

update employees
set status = 'active'
where employee_id = 105;  

update employees
set city = 'pune'
where employee_id = 104;  

update employees
set department = 'development'
where employee_id = 102;  

update employees
set salary = 45000
where employee_id = 106;  

update employees
set salary = salary + 3000
where employee_id = 103;  

update employees
set city = 'mumbai branch'
where employee_id in (102, 105);
--  task e

delete from employees
where employee_id = 105;



delete from employees
where salary < 30000;

delete from employees
where employee_id = 104;

alter table employees
add column email varchar(100);  

alter table employees
add column mobile varchar(15); 


alter table employees
modify column city varchar(100);  

alter table employees
rename column employee_name to name; 

alter table employees
drop column mobile;

alter table employees
add column experience int; 

update employees
set experience = 2
where employee_id = 101;

create table departments (
department_id int primary key,
department_name varchar(100),
location varchar(100)
);

insert into departments values
(1,'development','pune'),
(2,'testing','mumbai'),
(3,'hr','nashik');

select * from departments;

update departments
set location = 'mumbai'
where department_id = 1; 

delete from departments
where department_id = 3; 

rename table departments to company_departments; 

desc company_departments;
truncate table company_departments;
drop table company_departments;

show tables;