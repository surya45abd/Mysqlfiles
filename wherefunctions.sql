use students;

select * from Employees;

select distinct Department , Age from Employees;

select * from Employees where Age = 28;
select * from Employees where Age = 29 or City = 'Pune' or City = 'Mumbai';
select * from Employees where Age = 29 or City = 'Pune' or City = 'Mumbai';
select distinct Department , Age from Employees order by Age;

select * from Employees where Salary >= 50000;
