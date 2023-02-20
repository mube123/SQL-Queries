use WEEK_3
Select * from Department
Select * from Employee

Select City from Employee Group by City Having Sum(Salary)>1500

Select e.City,e.Gender,e.DeptID,d.DName,e.Salary
From Employee e,Department d
where e.DeptID=d.DeptID

Select Record.DName,sum(Record.Salary)
From (Select City from Employee Group by City Having Sum(Salary)>1500) AS Emp,
(Select e.City,e.Gender,e.DeptID,d.DName,e.Salary From Employee e,Department d where e.DeptID=d.DeptID) AS Record
where Emp.City=Record.City AND Record.DeptID NOT IN(3,6) AND Record.Gender='Female'
Group by Record.DName

--Query1
--Find the employee who earns the minimum salary
Select * from Employee
where salary=(Select MIN(Salary) from Employee)


--Query2
--Display the employees who earns lowest salary in each department
Select e.* from Employee e,
(SELECT DeptID,MIN(Salary) AS 'MINIMUM_Salary' from Employee Group by DeptID) AS DEPTMIN
WHERE e.DeptID=DEPTMIN.DeptID AND Salary=DEPTMIN.MINIMUM_Salary

--Query3
--Employees who earn more than lowest salary in academics department.
Select * from Employee e inner join Department d ON e.DeptID=d.DeptID
where e.Salary>(Select MIN(Salary) from Employee e inner join Department d ON e.DeptID=d.DeptID where d.DName='Academics')

--Query4
--Employee who earn more than every employee in academics department.
Select * from Employee e inner join Department d ON e.DeptID=d.DeptID
where e.Salary>( Select MAX(Salary) from Employee e inner join Department d ON e.DeptID=d.DeptID where DName='Academics')

--Query5
--Display departments which have an average salary greater than the average salary of academics department.
Select d.DName,AVG(e.Salary) 
From Employee e inner join Department d ON e.DeptID=d.DeptID 
Group by d.DName
Having avg(e.Salary)>(Select avg(Salary) from Employee e inner join Department d ON e.DeptID=d.DeptID where d.DName='Academics')

--Query6
--Display the city with highest average salary
SELECT AVG(Salary) AS AverageSalary FROM Employee Group by City

Select e.City From Employee e,
(SELECT AVG(Salary) AS AverageSalary FROM Employee Group by City) AS Record 
Group by e.City
HAVING AVG(e.Salary)=MAX(Record.AverageSalary)


