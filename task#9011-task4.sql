create database if not exists company_db ;
use company_db;
create table employees (
employee_id int primary key,
employee_name varchar(100) not null,
department varchar(50),
salary decimal(10,2),
city varchar(50),
joining_date date,
email varchar(100) null,
status varchar(20)
);

insert into employees values
(101,'Amit Sharma','IT',55000,'Pune','2024-06-15','amit@gmail.com','Active'),
(102,'Priya Sharma','HR',38000,'Mumbai','2025-02-10','priya@gmail.com','Active'),
(103,'Rahul Patil','Sales',45000,'Pune','2025-04-20',null,'Active'),
(104,'Sneha Kulkarni','Testing',42000,'Nashik','2025-07-05','sneha@gmail.com','Active'),
(105,'Rohan Deshmukh','Support',30000,'Mumbai','2024-11-18','rohan@gmail.com','Inactive'),
(106,'Anjali More','IT',62000,'Pune','2026-01-10','anjali@gmail.com','Active'),
(107,'Akash More','Finance',48000,'Nashik','2025-03-12',null,'Active'),
(108,'Pooja Shinde','Sales',52000,'Mumbai','2025-08-22','pooja@gmail.com','Active'),
(109,'Vikram Joshi','IT',70000,'Pune','2026-02-15','vikram@gmail.com','Active'),
(110,'Neha Patil','HR',35000,'Nashik','2025-06-01',null,'Active'),
(111,'Suresh Pawar','Testing',39000,'Mumbai','2024-09-25','suresh@gmail.com','Inactive'),
(112,'Raj Desai','IT',58000,'Nagpur','2026-03-05','raj@gmail.com','Active'),
(113,'Kavita Joshi','Sales',47000,'Pune','2025-10-11','kavita@gmail.com','Active'),
(114,'Ravi Kumar','Support',28000,'Nashik','2024-12-20',null,'Inactive'),
(115,'Asha Patil','HR',40000,'Pune','2025-05-15','asha@gmail.com','Active'),
(116,'Sameer Khan','IT',65000,'Mumbai','2026-01-25','sameer@gmail.com','Active'),
(117,'Riya Sharma','Testing',36000,'Pune','2025-09-08',null,'Active'),
(118,'Sachin More','Sales',60000,'Nashik','2026-04-12','sachin@gmail.com','Active'),
(119,'Ramesh Patil','Finance',33000,'Mumbai','2024-08-30','ramesh@gmail.com','Inactive'),
(120,'Snehal Jadhav','IT',75000,'Pune','2025-12-01','snehal@gmail.com','Active'),
(121,'Arjun Singh','Sales',43000,'Mumbai','2026-05-10',null,'Active'),
(122,'Meena Joshi','HR',32000,'Nashik','2025-01-15','meena@gmail.com','Active'),
(123,'Shubham Patil','Support',29000,'Pune','2024-07-19',null,'Inactive'),
(124,'Rohit Sharma','IT',90000,'Mumbai','2026-06-20','rohit@gmail.com','Active'),
(125,'Sanjay More','Sales',55000,'Pune','2025-11-05','sanjay@gmail.com','Active'); 

-- select * from employees;
-- desc employees;

-- part b

select * from employees where city='pune';

select * from employees where city='mumbai';

select * from employees where department='it';

select * from employees where department='hr';

select * from employees where department='sales';

select * from employees where status='active';

select * from employees where status='inactive';

select * from employees where employee_id=103;

select * from employees where employee_name='Priya Sharma';

select * from employees where salary=35000;

select * from employees where city<>'pune';

select * from employees where department<>'testing';


-- part c

select * from employees where salary>40000;

select * from employees where salary<35000;

select * from employees where salary>=50000;

select * from employees where salary<=30000;

select * from employees where joining_date>'2025-01-01';

select * from employees where joining_date<='2024-12-31';

select * from employees where employee_id>110;

select employee_name,joining_date from employees where joining_date>='2026-01-01';


-- part d

select * from employees where city='pune' and status='active';

select * from employees where department='it' and salary>50000;

select * from employees where city='mumbai' and status='inactive';

select * from employees where department='sales' and city='pune' and salary>=42000;

select * from employees where department='hr' and joining_date>'2025-06-01';

select * from employees where status='active' and salary>=40000 and salary<=70000;

select * from employees where city='mumbai' and department='testing' and salary>38000;

select * from employees where status='active' and joining_date>='2026-01-01' and salary>45000;


-- part e

select * from employees where city='pune' or city='mumbai';

select * from employees where department='it' or department='hr';

select * from employees where salary<32000 or salary>60000;

select * from employees where city='nashik' or salary>55000;

select * from employees where not (department='hr');

select * from employees where not (status='inactive');

select * from employees where (city='pune' or city='mumbai') and status='active';

select * from employees where city<>'pune' and salary>40000;


-- part f

select * from employees where salary between 35000 and 55000;

select * from employees where salary not between 40000 and 65000;

select * from employees where joining_date between '2025-01-01' and '2025-12-31';

select * from employees where employee_id between 105 and 115;

select * from employees where department in ('it','hr','sales');

select * from employees where city in ('pune','mumbai','nagpur');

select * from employees where department not in ('testing','support');

select * from employees where city not in ('mumbai','nashik');

select * from employees where employee_id in (101,105,110,115,120);

select * from employees where department in ('it','sales') and salary between 45000 and 75000;


-- part g

select * from employees where employee_name like 'a%';

select * from employees where employee_name like 'r%';

select * from employees where employee_name like '%a';

select * from employees where employee_name like '%sh%';

select * from employees where employee_name like 'p%a';

select * from employees where employee_name like '_____';

select * from employees where employee_name like '_a%';

select * from employees where employee_name not like 'r%';


-- part h

select * from employees where email is null;

select * from employees where email is not null;

select * from employees where city='pune' and email is null;

select * from employees where status='active'
and email is not null 
and salary>40000;


-- part i

select * from employees
 where status='active'and city in ('pune','mumbai')
and department in ('it','sales') and salary between 40000 and 70000
and joining_date>'2025-01-01';

select * from employees
where (employee_name like 's%' or employee_name like 'r%')
and email is not null and status='active' and city in ('pune','nashik');
