select EmployeeID,count(*) from empdetails where Salary >= 50000   group by EmployeeID;
select EmployeeID, City ,count(*) from empdetails where City like 'H%'   group by EmployeeID , City;
select EmployeeID, City ,count(*) from empdetails  group by EmployeeID , City;
select  City ,count(*) from empdetails group by City Having count(*) > 4;
select LastName , Salary,  count(*)    from empdetails group by LastName ,Salary ;
select *   from empdetails  order by Salary ;