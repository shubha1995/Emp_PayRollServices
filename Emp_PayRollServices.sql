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



