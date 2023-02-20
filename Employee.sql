Use master
Create Database WEEK_3
Use WEEK_3

Create Table Employee
(
	EmpID int,
	Name nvarchar(50),
	Salary int,
	Gender nvarchar(50),
	City nvarchar(50),
	Age int,
	PRIMARY KEY (EmpID)
)

Alter Table Employee
Add DeptID int

Select * from Employee

Insert into Employee
values(1,'Mubeen',100000,'Female','Lahore',25)
Update Employee Set DeptID=3 where EmpID=1

Insert into Employee
values(2,'Iqra',70000,'Female','Lahore',22)
Update Employee Set DeptID=5 where EmpID=2

Insert into Employee
values(3,'Bushra',10000,'Female','Lahore',28)
Update Employee Set DeptID=3 where EmpID=3

Insert into Employee
values(4,'Naila',40000,'Female','Lahore',31)
Update Employee Set DeptID=NUll where EmpID=4

Insert into Employee
values(5,'Shumaila',50000,'Female','Lahore',33)
Update Employee Set DeptID=6 where EmpID=5

Insert into Employee
values(6,'Ali',5000,'Male','Lahore',20)
Update Employee Set DeptID=1 where EmpID=6

Insert into Employee
values(7,'Ahmad',35000,'Male','Lahore',22)
Update Employee Set DeptID=2 where EmpID=7

Insert into Employee
values(8,'Adeel',52000,'Male','Lahore',28)
Update Employee Set DeptID=6 where EmpID=8

Insert into Employee
values(9,'Afzal',45000,'Male','Lahore',30)
Update Employee Set DeptID=3 where EmpID=9

Insert into Employee
values(10,'Qasim',90000,'Male','Lahore',27)
Update Employee Set DeptID=1 where EmpID=10

Insert into Employee
values(11,'Ayesha',15000,'Female','Islamabad',23)
Update Employee Set DeptID=6 where EmpID=11

Insert into Employee
values(12,'Hafsa',20000,'Female','Islamabad',19)
Update Employee Set DeptID=2 where EmpID=12

Insert into Employee
values(13,'Maira',12000,'Female','Islamabad',24)
Update Employee Set DeptID=3 where EmpID=13

Insert into Employee
values(14,'Eman',40000,'Female','Islamabad',23)
Update Employee Set DeptID=1 where EmpID=14

Insert into Employee
values(15,'Areej',15000,'Female','Islamabad',21)
Update Employee Set DeptID=6 where EmpID=15

Insert into Employee
values(16,'Ijaz',30000,'Male','Islamabad',50)
Update Employee Set DeptID=3 where EmpID=16

Insert into Employee
values(17,'Sarfraz',90000,'Male','Islamabad',45)
Update Employee Set DeptID=2 where EmpID=17

Insert into Employee
values(18,'Sajjad',200000,'Male','Islamabad',42)
Update Employee Set DeptID=6 where EmpID=18

Insert into Employee
values(19,'Azhar',60000,'Male','Islamabad',40)
Update Employee Set DeptID=NULL where EmpID=19

Insert into Employee
values(20,'Faisal',30000,'Male','Islamabad',25)
Update Employee Set DeptID=1 where EmpID=20

Insert into Employee
values(21,'Naima',8000,'Female','Karachi',27)
Update Employee Set DeptID=5 where EmpID=21

Insert into Employee
values(22,'Saima',13000,'Female','Karachi',35)
Update Employee Set DeptID=2 where EmpID=22

Insert into Employee
values(23,'Raima',26000,'Female','Karachi',32)
Update Employee Set DeptID=1 where EmpID=23

Insert into Employee
values(24,'Rida',30000,'Female','Karachi',28)
Update Employee Set DeptID=3 where EmpID=24

Insert into Employee
values(25,'Faira',80000,'Female','Karachi',40)
Update Employee Set DeptID=2 where EmpID=25

Insert into Employee
values(26,'Azhar',45000,'Male','Karachi',41)
Update Employee Set DeptID=1 where EmpID=26

Insert into Employee
values(27,'Mazhar',100000,'Male','Karachi',39)
Update Employee Set DeptID=3 where EmpID=27

Insert into Employee
values(28,'Zafar',40000,'Male','Karachi',33)
Update Employee Set DeptID=6 where EmpID=28

Insert into Employee
values(29,'Iqbal',30000,'Male','Karachi',28)
Update Employee Set DeptID=1 where EmpID=29

Insert into Employee
values(30,'Safyan',80000,'Male','Karachi',40)
Update Employee Set DeptID=2 where EmpID=30

--count 
Select * from Employee
Select Count(EmpID) from Employee

--Find max age of all employee
Select MAX(Age) from Employee

--Find max age of all employee who live in Lahore
Select MAX(Age) from Employee where City='Lahore'

--Find max age of all employees who have salary greater than 50000
Select MAX(Age) from Employee where Salary>50000

--Sort all the employees on the basis of their salaries from higher to lower
Select * from Employee Order by Salary Desc

--Find total salary gender wise
Select SUM(Salary) from Employee Group by Gender 

--Total salary city wise and then gender wise. 
Select SUM(Salary) from Employee Group by City,Gender

--Total salary gender wise but only for Lahore city
Select SUM(Salary) from Employee where City='Lahore' Group by Gender 

--Find total salary city wise for females only but when city total salary is greater than 1500
Select SUM(Salary) from Employee
where Gender='Female' Group by City Having Sum(Salary) > 1500

--joins
--innerjoin/Equi join
Select * from Employee e INNER JOIN Department d ON e.DeptID=d.DeptID
				--or
Select EmpID,Name
From Employee e,Department d
where e.DeptID=d.DeptID

--LEFT JOIN
Select * from Employee e LEFT JOIN Department d ON e.DeptID=d.DeptID

--RIGHT JOIN
Select * from Employee e RIGHT JOIN Department d ON e.DeptID=d.DeptID

--FULL JOIN
Select * from Employee e FULL JOIN Department d ON e.DeptID=d.DeptID

--CROSS JOIN
Select * from Employee e CROSS JOIN Department d 

--Total Salary Department wise
Select SUM(Salary) from Employee
Group by DeptID
		--or
Select SUM(e.Salary)
From Employee e INNER JOIN Department d ON e.DeptID=d.DeptID
GROUP BY d.DeptID
		--or
Select SUM(e.Salary)
From Employee e LEFT JOIN Department d ON e.DeptID=d.DeptID
GROUP BY d.DeptID
		--or
Select SUM(e.Salary)
From Employee e RIGHT JOIN Department d ON e.DeptID=d.DeptID
GROUP BY d.DeptID


--   TASKS
Select MAX(Age)
From Employee e,Department d
GROUP BY d.DName

Select MIN(Salary)
From Employee e,Department d
GROUP BY d.DName

--
Select MAX(Age)
From Employee e,Department d
where DName='HR'

--
Select DName,EmpID
From Employee e,Department d
where Salary>20000

--view
CREATE VIEW dbo.vwEmployee
As
Select d.DName
From Employee e inner join Department d on e.DeptID=d.DeptID
Group by d.DName
Having avg(e.Salary)>(select avg(Salary) from Employee e inner join Department d on e.DeptID=d.DeptID 
where d.DName='Academics' )

Select * from vwEmployee


CREATE TABLE ##Tab
(
	ID int Primary Key,
	Name varchar(50)
)

Select * from ##Tab

CREATE TABLE ##Tab1
(
	
)

Select * into #Table from Employee

Select * from #Table


CREATE TABLE ##Employee(
    EmpID int,
    Name varchar(80),
    Salary int,
    City varchar(50),
	Gender varchar(50),
	Age int,
	PRIMARY KEY (EmpID)
);

Select * from ##Employee

Select * into ##Employee1 from Employee
Select * from ##Employee1

Select (Select * from Employee where Age=(select MAX(Age) from Employee)) into ##Table from Employee

Select * from Employee 
where Age=(select MAX(Age) from Employee 

CREATE TABLE ##TABLE1
(
	EmpID int,
    Name varchar(80),
    Salary int,
    City varchar(50),
	Gender varchar(50),
	Age int,
	DeptID int,
	PRIMARY KEY (EmpID)
)
 
Select * from Employee Insert into ##TABLE1

CREATE TRIGGER dbo.tgData ON dbo.Employee
AFTER DELETE
AS
BEGIN
declare @empid int
declare @name varchar(50)

select @empid=i.EmpID from deleted i
select @name=i.Name from deleted i

select @empid, @name

END

DELETE FROM Employee WHERE EmpID=1;

Select * from Employee

UPDATE Employee
SET EmpID = 32, Name = 'Shaista',Salary=5000, Gender='Female',Age=22,DeptID=5
WHERE EmpID=2


CREATE FUNCTION fnGetGrade(@value int)
Returns char
AS
BEGIN
Declare @grade char
IF @value>=90
BEGIN
set @grade='A'
END
ELSE IF @value>=80
BEGIN
set @grade='B'
END
ELSE IF @value>=70
BEGIN
set @grade='C'
END
ELSE
BEGIN
set @grade='D'
END
return @grade
END

SELECT dbo.fnGetGrade(70)
