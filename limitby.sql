use students;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    City VARCHAR(30),
    JoinDate DATE
);

INSERT INTO Employees (EmployeeID, Name, Age, Department, Salary, City, JoinDate)
VALUES
(101, 'Rahul', 25, 'HR', 35000.00, 'Hyderabad', '2023-01-15'),
(102, 'Priya', 28, 'IT', 55000.00, 'Bangalore', '2022-07-20'),
(103, 'Amit', 30, 'Finance', 60000.00, 'Mumbai', '2021-05-10'),
(104, 'Sneha', 26, 'Marketing', 42000.00, 'Chennai', '2023-03-12'),
(105, 'Kiran', 29, 'IT', 58000.00, 'Pune', '2020-11-18'),
(106, 'Anjali', 27, 'HR', 39000.00, 'Delhi', '2022-09-25'),
(107, 'Vikram', 31, 'Sales', 52000.00, 'Kolkata', '2019-08-30'),
(108, 'Meena', 24, 'Support', 34000.00, 'Hyderabad', '2024-02-01'),
(109, 'Rohit', 32, 'Finance', 65000.00, 'Ahmedabad', '2018-12-05'),
(110, 'Pooja', 29, 'Marketing', 47000.00, 'Jaipur', '2021-06-15');

SELECT * FROM Employees;
SELECT * FROM Employees order by Age asc ,Name asc , Department asc;
SELECT * FROM Employees order by City desc;
SELECT * FROM Employees order by EmployeeID asc, Name asc, Department asc;
SELECT * FROM Employees order by Department asc ,Name asc;
SELECT * FROM Employees ORDER BY 5 DESC;

select * from employees order by Salary desc limit 0,5;
