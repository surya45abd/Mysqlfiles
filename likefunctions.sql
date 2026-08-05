use students;
select * from employees where City like '%bad';
select * from employees where City like 'che%';
select * from employees where City like '%bad%';
select * from employees where City like 'P_ne';

update employees set City = 'Pu_ne' where   EmployeeID = 105;
select * from employees;
select * from employees where City like '__\_ne';
select * from employees where City like '%a';
select * from employees where Name like '%e%';
select * from employees where Department like '%e%';
