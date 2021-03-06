#uc1
create database payroll_services;
show databases;
use payroll_services;

#uc2
create table emp_payroll(
	id int unsigned not null auto_increment,
    name varchar(150) not null,
    salary double not null,
    start date not null,
    primary key (id)
);
select * from emp_payroll;

#uc3

insert into emp_payroll (name, salary, start) values
('Shubha', 300000, '2021-02-03'),
('Sankar', 800000, '2021-01-01'),
('Minal', 900000, '2021-02-02'),
('Swati', 700000, '2021-01-014');

#uc4
select * from emp_payroll;

#uc5
select * from emp_payroll
where name = 'Shubha';

select * from emp_payroll
where start between cast('2021-01	-01' As date)
and Date(now());


#uc6

Alter table emp_payroll add gender char(1) after name;
update emp_payroll set gender='F'
where name = 'minal' or name = 'swati';

update emp_payroll set gender='M'
where name = 'shubha' or name = 'sankar';

 
#Uc7
select salary from emp_payroll;
select sum(salary) from emp_payroll;  
select min(salary) from emp_payroll;  
select max(salary) from emp_payroll;  
select count(salary) from emp_payroll;  
select avg(salary) from emp_payroll;  
select sum(salary) from emp_payroll where
gender='F' group by gender;

#uc8
alter table emp_payroll 
add phone varchar(20), 
add address varchar(200) default 'address1' ,
add department varchar(20)  not null ;

#Uc9
alter table emp_payroll 
add basic_pay int, 
add deductions int,
add taxable_pay int  ,
add tax int,
add net_pay int;

#Uc10

DELETE FROM emp_payroll 
WHERE id IN (1 , 2, 3, 4);

insert into emp_payroll (name,department,gender,basic_pay,deductions,taxable_pay,tax,net_pay,start,salary) values
	('Terissa','Marketing','F',3000000,1000000,2000000,500000,1500000,'2021-07-08',90000);
    
insert into emp_payroll (name,department,gender,basic_pay
,deductions,taxable_pay,tax,net_pay,start,salary) values
	('Terissa','Sales','F',3000000,
0,0,0,0,'2021-06-01',89999);

#uc11
alter table emp_payroll
drop column department;

create table department(
	id int auto_increment not null,
    name varchar(40) not null,
    primary key (id)
);

select * from department;
insert into department(name) values("Sales");
insert into department(name) values("Merketting");

create table employee_department(
	employee_id int not null,
	department_id int not null,
    foreign key (employee_id) references employee(id),
    foreign key (department_id) references department(id),
    primary key (employee_id, department_id)
);

create table employee(
	id int not null auto_increment,
    name varchar (150) not null,
    salary double not null,
    start date not null,
    primary key (id)
);











