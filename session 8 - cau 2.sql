create database employees_db;
use employees_db;

create table employees (
employee_id int primary key,
full_name varchar(150),
department varchar(100),
salary decimal, 
hire_date date
);

select count(*) as number_of_employees
from employees;

select SUM(salary) as total_monthly_salary
from employees;

select AVG(salary) as average_salary
from employees;

select MAX(salary) as highest_salary, MIN(salary) as lowest_salary
from employees;

select MIN(hire_date) as earliest_hire_date
from employees;

select SUM(salary) as it_department_salary
from employees
where department = 'IT';