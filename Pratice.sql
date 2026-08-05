use students;
CREATE TABLE Empvalues (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    City VARCHAR(30),
    JoinDate DATE,
    Experience INT,
    Status VARCHAR(20)
);

INSERT INTO Empvalues VALUES
(101,'Rahul',25,'Male','IT',50000,'Hyderabad','2023-01-15',2,'Active'),
(102,'Priya',27,'Female','HR',45000,'Bangalore','2023-02-10',3,'Active'),
(103,'Amit',30,'Male','Finance',60000,'Hyderabad','2022-05-20',5,'Active'),
(104,'Sneha',26,'Female','IT',50000,'Chennai','2023-01-15',2,'Inactive'),
(105,'Kiran',29,'Male','Sales',55000,'Pune','2022-08-12',4,'Active'),
(106,'Anjali',24,'Female','HR',45000,'Bangalore','2023-02-10',2,'Active'),
(107,'Vikram',31,'Male','IT',70000,'Delhi','2021-06-25',6,'Active'),
(108,'Meena',23,'Female','Support',40000,'Hyderabad','2024-01-05',1,'Active'),
(109,'Rohit',28,'Male','Finance',60000,'Mumbai','2022-05-20',4,'Inactive'),
(110,'Pooja',27,'Female','Sales',55000,'Pune','2022-08-12',3,'Active'),
(111,'Arjun',26,'Male','IT',50000,'Hyderabad','2023-01-15',2,'Active'),
(112,'Kavya',25,'Female','HR',45000,'Chennai','2023-02-10',2,'Active'),
(113,'Suresh',32,'Male','Finance',60000,'Mumbai','2022-05-20',7,'Active'),
(114,'Divya',24,'Female','Support',40000,'Hyderabad','2024-01-05',1,'Inactive'),
(115,'Manoj',29,'Male','Sales',55000,'Delhi','2022-08-12',4,'Active'),
(116,'Neha',28,'Female','IT',70000,'Bangalore','2021-06-25',5,'Active'),
(117,'Ravi',27,'Male','HR',45000,'Chennai','2023-02-10',3,'Active'),
(118,'Swathi',23,'Female','Support',40000,'Hyderabad','2024-01-05',1,'Active'),
(119,'Ajay',30,'Male','Finance',60000,'Mumbai','2022-05-20',5,'Active'),
(120,'Lakshmi',26,'Female','Sales',55000,'Pune','2022-08-12',3,'Inactive'),
(121,'Naveen',25,'Male','IT',50000,'Hyderabad','2023-01-15',2,'Active'),
(122,'Keerthi',24,'Female','HR',45000,'Bangalore','2023-02-10',2,'Active'),
(123,'Vijay',31,'Male','Finance',60000,'Delhi','2022-05-20',6,'Active'),
(124,'Asha',27,'Female','Support',40000,'Chennai','2024-01-05',1,'Active'),
(125,'Tarun',29,'Male','IT',70000,'Hyderabad','2021-06-25',5,'Active');

select * from empvalues;
select * from empvalues order by City;
select * from empvalues order by City desc;
select * from empvalues limit 0,3;
select * from empvalues limit 1,3;
select * from empvalues limit 3;
-- where
select * from empvalues where City = 'Pune';
select * from empvalues where Salary = 50000;
select * from empvalues where City = 'Hyderabad';
select * from empvalues where Age = 25;
select * from empvalues where Status = 'Active';
select * from empvalues where JoinDate = '2023-01-15';

-- AND
select * from empvalues where City = 'Hyderabad' and Salary > 50000;
select * from empvalues where Department = 'IT' and Status = 'Active';
select * from empvalues where Gender = 'Male' and age = 25;
select * from empvalues where JoinDate between '2023-01-01' and '2023-12-31' and Salary < 60000;
select * from empvalues where City = 'Hyderabad' and Department = 'Finance';
select * from empvalues where Age between 25 and 30 ;


-- OR
select * from empvalues where City = 'Hyderabad' or City = 'Bangalore';
select * from empvalues where Department = 'IT' or Department = 'HR';
select * from empvalues where Age = 25 or Age = 30;
select * from empvalues where Salary = 50000 or Salary = 60000;
select * from empvalues where Status = 'Active' or JoinDate > '2023-12-31';

-- NOT
select * from empvalues where not City = 'Hyderabad';
select * from empvalues where not Department = 'IT';
select * from empvalues where not Status = 'Active';
select * from empvalues where  Salary <> 50000;
select * from empvalues where  Status <> 'Active';
select * from empvalues where Age != 25;

-- IN
select * from empvalues where City in ('Hyderabad','Pune','Delhi');
select * from empvalues where Salary in (40000,50000,60000);
select * from empvalues where Department in ('IT','HR','Sales');
select * from empvalues where Age in (22,25,30);
select * from empvalues where EmployeeID in (101,105,120);


-- NOTIN
select * from empvalues where City not in ('Hyderabad','Bangalore');
select * from empvalues where Department not in ('IT','HR');
select * from empvalues where Salary  not in (40000,50000);
select * from empvalues where Age not in (22,25);
select * from empvalues where EmployeeID not in (101,102,103);

-- Between
select * from empvalues where Salary between 40000 and 50000;
select * from empvalues where Age between 22 and 30;
select * from empvalues where JoinDate between '2023-01-01' and '2023-06-30';
select * from empvalues where Experience between 2 and 5;
select * from empvalues where EmployeeID between 105 and 120;


-- LIKE  %
select * from empvalues where Name like 'A%';
select * from empvalues where Name like '%a';
select * from empvalues where City like '%der%';
select * from empvalues where City like '%r%';
select * from empvalues where Department like '%IT%';
select * from empvalues where Name like '%vi%';


-- LIKE  _
select * from empvalues where Name like '_____';
select * from empvalues where Name like '_e%';
select * from empvalues where Name like 'R____';
select * from empvalues where Department like '__';
select * from empvalues where Name like '__n%';

-- ISNULL 
select * from empvalues where Salary is null;
select * from empvalues where City is null;

-- is not null
select * from empvalues where City is not null;
select * from empvalues where Salary is not null;

-- DISTINCT 
select distinct City from empvalues;
select distinct Department from empvalues;
select distinct Salary from empvalues;
select distinct Age from empvalues;
select distinct JoinDate from empvalues;

-- order by
select * from empvalues order by Department asc , City desc ;
select * from empvalues order by City ,Name;

-- limit
select * from empvalues limit 0,5;
select * from empvalues order by Salary desc limit 3;
select Name from empvalues limit 10;
select * from empvalues order by JoinDate desc  limit 5;
select * from empvalues order by JoinDate asc  limit 2;
select * from empvalues order by Age desc  limit 2;
select * from empvalues order by Name desc  limit 5,2;

-- COUNT
select count(*) from empvalues;
select count(*) as totalemployees from empvalues;
select count(*) from empvalues where Department = 'IT';
select count(*) as employeesinit from empvalues where Department = 'IT';
select count(*) from empvalues;
select count(City) from empvalues;
select count(City) from empvalues where City ='Hyderabad';
select count(City) as Hybcount from empvalues where City ='Hyderabad';
select count(Status) from empvalues;
select count(Status) from empvalues where Status ='Active';

-- SUM
select sum(Salary) from empvalues;
select sum(Salary) as totalmoney from empvalues;
select sum(Salary) from empvalues where Department ='IT';
select sum(Salary) as ITmoney from empvalues where Department ='IT';
select sum(Salary) from empvalues where City ='Hyderabad';
select sum(Salary) as Hydmoney from empvalues where City ='Hyderabad';
select sum(Salary) from empvalues where Status ='Active';

-- AVG
select avg(Salary) from empvalues;
select avg(Salary) as avgsalary from empvalues;
select avg(Salary) from empvalues where City ='Pune';
select avg(Salary) from empvalues where Age =31;

-- min
select min(Salary) from empvalues;
select min(Salary) from empvalues where City = 'Pune';
select min(Salary) from empvalues where Age = 25;


-- GROUP BY 
select Department ,count(*) from empvalues group by Department;
SELECT Department, AVG(Salary) AS average_salary
FROM empvalues
GROUP BY Department
HAVING AVG(Salary) > 2000;