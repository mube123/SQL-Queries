Select * from Department
Select * from Employee1

Select City from Employee1 Group by City Having Sum(Salary)>1500

Select e.City,e.Gender,e.DeptID,d.DName,e.Salary
From Employee1 e,Department d
where e.DeptID=d.DeptID

Select Record.DName,sum(Record.Salary)
From (Select City from Employee1 Group by City Having Sum(Salary)>1500) AS Emp,
(Select e.City,e.Gender,e.DeptID,d.DName,e.Salary From Employee1 e,Department d where e.DeptID=d.DeptID) AS Record
where Emp.City=Record.City AND Record.DeptID NOT IN(3,6) AND Record.Gender='Female'
Group by Record.DName

--Query1
Select * from Employee1
where salary=(Select MIN(Salary) from Employee1)

--Query2
Select * from Employee1 e,Department d
	

--Query3
Select * from Employee1
where DeptID=5 AND Salary>(Select MIN(Salary) from Employee1)

--Query6

SELECT AVG(Salary) AS AverageSalary FROM Employee1 Group by City

SELECT MAX(SELECT AVG(Salary) AS AverageSalary FROM Employee1 Group by City)
FROM Employee1
